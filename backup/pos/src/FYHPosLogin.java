import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.BorderFactory;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingConstants;

public class FYHPosLogin extends JFrame {

	/**
	 * Our Serial ID
	 */
	private static final long serialVersionUID = 888503337520305549L;
	private JLabel userLabel;
	private JLabel passLabel;
	private JTextField userField;
	private JPasswordField passField;
	private JButton okayButton;
	private JButton cancelButton;
	private JPanel loginPanel;

	public FYHPosLogin() {
		super();
		initFrame();
		this.setSize(315, 175);
		this.setVisible(true);
	}

	private void initFrame() {
		userLabel = new JLabel();
		passLabel = new JLabel();
		userField = new JTextField();
		passField = new JPasswordField();
		okayButton = new JButton();
		cancelButton = new JButton();
		loginPanel = (JPanel) this.getContentPane();

		userLabel.setHorizontalAlignment(SwingConstants.LEFT);
		passLabel.setHorizontalAlignment(SwingConstants.LEFT);
		userLabel.setForeground(new Color(0, 0, 255));
		passLabel.setForeground(new Color(0, 0, 255));
		userLabel.setText("Username:");
		passLabel.setText("Password:");

		passField.setForeground(new Color(0, 0, 255));
		userField.setForeground(new Color(0, 0, 255));
		passField.setSelectedTextColor(new Color(0, 0, 255));
		userField.setSelectedTextColor(new Color(0, 0, 255));

		okayButton.setBackground(new Color(204, 204, 204));
		okayButton.setForeground(new Color(0, 0, 205));
		okayButton.setText("Login");
		okayButton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				authenticate();

			}
		});

		cancelButton.setBackground(new Color(204, 204, 204));
		cancelButton.setForeground(new Color(0, 0, 205));
		cancelButton.setText("Cancel");
		cancelButton.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent e) {
				System.exit(0);

			}
		});

		loginPanel.setLayout(null);
		loginPanel.setBorder(BorderFactory.createEtchedBorder());
		loginPanel.setBackground(new Color(204, 204, 204));
		addComponent(loginPanel, userLabel, 5, 10, 106, 18);
		addComponent(loginPanel, passLabel, 5, 47, 97, 18);
		addComponent(loginPanel, userField, 110, 10, 183, 22);
		addComponent(loginPanel, passField, 110, 45, 183, 22);
		addComponent(loginPanel, okayButton, 110, 78, 83, 28);
		addComponent(loginPanel, cancelButton, 200, 78, 83, 28);
	}

	private void addComponent(Container contains, Component comp, int x, int y,
			int width, int height) {
		comp.setBounds(x, y, width, height);
		contains.add(comp);
	}

	private void authenticate() {

		String user = new String(userField.getText());
		String pass = new String(passField.getPassword());
		@SuppressWarnings("unused")
		FYHPosMain mainform;
		/**
		 * only for testing!
		 * 
		 * mainform = new FYHPosMain(); this.setVisible(false);
		 */
		if (user.equals("")) {
			System.out.println("Please enter a username");
		} else if (pass.equals("")) {
			System.out.println("Please enter a  password");
		}

		// Just for the time being until I can implement actual auth
		if (user.equals("me") && pass.equals("test")) {
			System.out.println("Congrats, authenticated.");
			mainform = new FYHPosMain();
			this.setVisible(false);
		} else {
			System.out.println("Invalid Login");
		}
	}
}