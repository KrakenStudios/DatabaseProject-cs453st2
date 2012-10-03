import java.awt.Color;
import java.awt.Component;
import java.awt.Container;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

public class FYHPosMain extends JFrame {
	/**
	 * Serialize up in this bitch!
	 */
	private static final long serialVersionUID = 2923220399964203261L;
	private JButton one;
	private JButton two;
	private JButton three;
	private JButton four;
	private JButton five;
	private JButton six;
	private JButton seven;
	private JButton eight;
	private JButton nine;
	private JButton zero;
	private JButton dot;
	private JButton clear;
	private JButton checkout;
	private JTextField totalSum;
	private JTextField prefCustNumField;
	private JTextField depNameField;
	private JTextField upcNumberField;
	private JLabel prefCustNum;
	private JLabel deptName;
	private JLabel upcNumber;
	private JLabel sumLabel;

	public FYHPosMain() {
		setTitle("For Your Harmonics: Point of Sale");
		setSize(350, 275);
		setLocation(10, 200);
		initFrame();
		this.setVisible(true);
	}

	private void initFrame() {

		one = new JButton();
		one.setText("1");
		one.setBackground(new Color(204, 204, 204));
		one.setForeground(new Color(0, 0, 205));
		one.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "1");

			}
		});
		two = new JButton();
		two.setText("2");
		two.setBackground(new Color(204, 204, 204));
		two.setForeground(new Color(0, 0, 205));
		two.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "2");

			}
		});
		three = new JButton();
		three.setText("3");
		three.setBackground(new Color(204, 204, 204));
		three.setForeground(new Color(0, 0, 205));
		three.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "3");

			}
		});
		four = new JButton();
		four.setText("4");
		four.setBackground(new Color(204, 204, 204));
		four.setForeground(new Color(0, 0, 205));
		four.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "4");

			}
		});
		five = new JButton();
		five.setText("5");
		five.setBackground(new Color(204, 204, 204));
		five.setForeground(new Color(0, 0, 205));
		five.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "5");

			}
		});
		six = new JButton();
		six.setText("6");
		six.setBackground(new Color(204, 204, 204));
		six.setForeground(new Color(0, 0, 205));
		six.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "6");

			}
		});
		seven = new JButton();
		seven.setText("7");
		seven.setBackground(new Color(204, 204, 204));
		seven.setForeground(new Color(0, 0, 205));
		seven.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "7");

			}
		});
		eight = new JButton();
		eight.setText("8");
		eight.setBackground(new Color(204, 204, 204));
		eight.setForeground(new Color(0, 0, 205));
		eight.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "8");

			}
		});
		nine = new JButton();
		nine.setText("9");
		nine.setBackground(new Color(204, 204, 204));
		nine.setForeground(new Color(0, 0, 205));
		nine.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "9");

			}
		});
		zero = new JButton();
		zero.setText("0");
		zero.setBackground(new Color(204, 204, 204));
		zero.setForeground(new Color(0, 0, 205));
		zero.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + "0");

			}
		});
		dot = new JButton();
		dot.setText(".");
		dot.setBackground(new Color(204, 204, 204));
		dot.setForeground(new Color(0, 0, 205));
		dot.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText(totalSum.getText() + ".");
			}
		});
		clear = new JButton();
		clear.setText("C");
		clear.setBackground(new Color(204, 204, 204));
		clear.setForeground(new Color(0, 0, 205));
		clear.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				totalSum.setText("");
			}
		});

		checkout = new JButton();
		checkout.setText("Checkout");
		checkout.setBackground(new Color(204, 204, 204));
		checkout.setForeground(new Color(0, 0, 205));
		checkout.addActionListener(new ActionListener() {

			@Override
			public void actionPerformed(ActionEvent arg0) {
				System.out.println("Checkout completed successfully");
			}
		});
		totalSum = new JTextField();
		totalSum.setSelectedTextColor(new Color(0, 0, 255));
		totalSum.setForeground(new Color(0, 0, 255));
		totalSum.setFont(new Font(totalSum.getFont().getName(), totalSum
				.getFont().getStyle(), 36));
		prefCustNumField = new JTextField();
		prefCustNumField.setSelectedTextColor(new Color(0, 0, 255));
		prefCustNumField.setForeground(new Color(0, 0, 255));
		depNameField = new JTextField();
		depNameField.setSelectedTextColor(new Color(0, 0, 255));
		depNameField.setForeground(new Color(0, 0, 255));
		upcNumberField = new JTextField();
		upcNumberField.setSelectedTextColor(new Color(0, 0, 255));
		upcNumberField.setForeground(new Color(0, 0, 255));

		prefCustNum = new JLabel();
		prefCustNum.setText("xFYH Number:");
		prefCustNum.setBackground(new Color(204, 204, 204));
		prefCustNum.setForeground(new Color(0, 0, 205));
		deptName = new JLabel();
		deptName.setText("Department:");
		deptName.setBackground(new Color(204, 204, 204));
		deptName.setForeground(new Color(0, 0, 205));
		upcNumber = new JLabel();
		upcNumber.setText("UPC Number:");
		upcNumber.setBackground(new Color(204, 204, 204));
		upcNumber.setForeground(new Color(0, 0, 205));
		sumLabel = new JLabel();
		sumLabel.setText("Total sum:");
		sumLabel.setBackground(new Color(204, 204, 204));
		sumLabel.setForeground(new Color(0, 0, 205));

		this.setLayout(null);
		addComponent(this, prefCustNum, 1, 10, 215, 18);
		addComponent(this, prefCustNumField, 1, 30, 97, 22);
		addComponent(this, deptName, 1, 50, 183, 22);
		addComponent(this, depNameField, 1, 70, 97, 22);
		addComponent(this, upcNumber, 1, 90, 100, 28);
		addComponent(this, upcNumberField, 1, 110, 97, 22);
		addComponent(this, sumLabel, 150, 0, 100, 18);
		addComponent(this, totalSum, 150, 15, 176, 72);
		addComponent(this, one, 150, 85, 60, 30);
		addComponent(this, two, 208, 85, 60, 30);
		addComponent(this, three, 265, 85, 60, 30);
		addComponent(this, four, 150, 115, 60, 30);
		addComponent(this, five, 208, 115, 60, 30);
		addComponent(this, six, 265, 115, 60, 30);
		addComponent(this, seven, 150, 145, 60, 30);
		addComponent(this, eight, 208, 145, 60, 30);
		addComponent(this, nine, 265, 145, 60, 30);
		addComponent(this, zero, 150, 175, 60, 30);
		addComponent(this, dot, 208, 175, 60, 30);
		addComponent(this, clear, 265, 175, 60, 30);
		addComponent(this, checkout, 150, 205, 176, 30);
	}

	private void addComponent(Container contains, Component comp, int x, int y,
			int width, int height) {
		comp.setBounds(x, y, width, height);
		contains.add(comp);
	}
}
