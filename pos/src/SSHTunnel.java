import java.awt.Container;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.Insets;
import java.io.IOException;
import java.net.ServerSocket;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import com.jcraft.jsch.JSch;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.Session;
import com.jcraft.jsch.UIKeyboardInteractive;
import com.jcraft.jsch.UserInfo;

/**
 * Creates JDBC connections to a MySQL server through an SSH tunnel.
 */
public class SSHTunnel {
	private final String sshHost, sshUsername, sshPassword;
	private final int sshPort;

	private final String dbHost, dbUsername, dbPassword;
	private final int dbPort;

	private JSch jsch;
	private Session session;

	public SSHTunnel(String sshHost, int sshPort, String sshUsername,
			String sshPassword, String dbHost, int dbPort, String dbUsername,
			String dbPassword) {
		// SSH tunnel
		this.sshHost = sshHost;
		this.sshPort = sshPort;
		this.sshUsername = sshUsername;
		this.sshPassword = sshPassword;

		// Remote database
		this.dbHost = dbHost;
		this.dbPort = dbPort;
		this.dbUsername = dbUsername;
		this.dbPassword = dbPassword;

		jsch = new JSch();
		try {
			session = openSession();
			System.out.println(session.getHost());
		} catch (JSchException ex) {
			throw new RuntimeException(ex);
		}
	}

	/**
	 * Closes the SSH session.
	 * 
	 * Calling this will render all JDBC Connection objects instantiated through
	 * this object disconnected and unusable.
	 */
	public void close() {
		if (session != null) {
			session.disconnect();
			session = null;
		}
	}

	/**
	 * Establishes a new SSH session.
	 * 
	 * @returns connected SSH session.
	 * @throws JSchException
	 *             when there was a connection or configuration problem.
	 */
	private Session openSession() throws JSchException {
		Session session = jsch.getSession(sshUsername, sshHost, sshPort);
		session.setPassword(sshPassword);

		// Not providing an interactive session. Just return defaults.
		UserInfo ui = new MyUserInfo();
		session.setUserInfo(ui);

		session.connect();
		System.out.println("Session created at: " + session.getHost() + " on "
				+ session.getPort());
		return session;
	}

	/**
	 * Gets an available local port by binding to port 0. The OS will allocate
	 * the next available port.
	 * 
	 * @throws IOException
	 */
	private int getAvailableLocalPort() throws IOException {
		ServerSocket socket = new ServerSocket(0);
		int port = socket.getLocalPort();
		socket.close();
		return port;
	}

	/**
	 * Establishes a JDBC Connection via the tunnel.
	 * 
	 * @param database
	 *            the database to get a Connection to.
	 * @returns a usable JDBC Connection.
	 */
	public Connection getConnection(String database) {
		try {
			// Forward remote a local port to the remote database
			int localPort = getAvailableLocalPort();
			session.setPortForwardingL(localPort, dbHost, dbPort);

			// Establish JDBC connection to remote database
		    Class.forName("com.mysql.jdbc.Driver").newInstance();  
		    System.out.println("class.forname just ran");
			return DriverManager.getConnection(String.format(
					"jdbc:mysql://%s:%d/%s", dbHost, dbPort, database),
					dbUsername, dbPassword);
		} catch (Exception ex) {
			throw new RuntimeException(
					"SSH tunnel failure: " + ex.getMessage(), ex);
		}
	}

	public static class MyUserInfo implements UserInfo, UIKeyboardInteractive {
		public String getPassword() {
			return passwd;
		}

		public boolean promptYesNo(String str) {
			Object[] options = { "yes", "no" };
			int foo = JOptionPane.showOptionDialog(null, str, "Warning",
					JOptionPane.DEFAULT_OPTION, JOptionPane.WARNING_MESSAGE,
					null, options, options[0]);
			return foo == 0;
		}

		String passwd;
		JTextField passwordField = (JTextField) new JPasswordField(20);

		public String getPassphrase() {
			return null;
		}

		public boolean promptPassphrase(String message) {
			return false;
		}

		public boolean promptPassword(String message) {
			Object[] ob = { passwordField };
			int result = JOptionPane.showConfirmDialog(null, ob, message,
					JOptionPane.OK_CANCEL_OPTION);
			if (result == JOptionPane.OK_OPTION) {
				passwd = passwordField.getText();
				return true;
			} else {
				return false;
			}
		}

		public void showMessage(String message) {
			JOptionPane.showMessageDialog(null, message);
		}

		final GridBagConstraints gbc = new GridBagConstraints(0, 0, 1, 1, 1, 1,
				GridBagConstraints.NORTHWEST, GridBagConstraints.NONE,
				new Insets(0, 0, 0, 0), 0, 0);
		private Container panel;

		public String[] promptKeyboardInteractive(String destination,
				String name, String instruction, String[] prompt, boolean[] echo) {
			
			panel = new JPanel();
			panel.setLayout(new GridBagLayout());

			gbc.weightx = 1.0;
			gbc.gridwidth = GridBagConstraints.REMAINDER;
			gbc.gridx = 0;
			panel.add(new JLabel(instruction), gbc);
			gbc.gridy++;

			gbc.gridwidth = GridBagConstraints.RELATIVE;

			JTextField[] texts = new JTextField[prompt.length];
			for (int i = 0; i < prompt.length; i++) {
				gbc.fill = GridBagConstraints.NONE;
				gbc.gridx = 0;
				gbc.weightx = 1;
				panel.add(new JLabel(prompt[i]), gbc);

				gbc.gridx = 1;
				gbc.fill = GridBagConstraints.HORIZONTAL;
				gbc.weighty = 1;
				if (echo[i]) {
					texts[i] = new JTextField(20);
				} else {
					texts[i] = new JPasswordField(20);
				}
				panel.add(texts[i], gbc);
				gbc.gridy++;
			}

			if (JOptionPane.showConfirmDialog(null, panel, destination + ": "
					+ name, JOptionPane.OK_CANCEL_OPTION,
					JOptionPane.QUESTION_MESSAGE) == JOptionPane.OK_OPTION) {
				String[] response = new String[prompt.length];
				for (int i = 0; i < prompt.length; i++) {
					response[i] = texts[i].getText();
				}
				return response;
			} else {
				return null; // cancel
			}
		}
	}
}