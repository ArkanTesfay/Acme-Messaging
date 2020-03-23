import javax.swing.*;
import javax.swing.border.BevelBorder;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Home
{
    public static void main(String[] args)
    {
        JFrame frame=new JFrame("User");
        JPanel panel=new JPanel();
        JLabel username_label=new JLabel();

        JPanel output_panel=new JPanel();
        output_panel.setBounds(0,600,1000,100);
        JLabel output_label=new JLabel("Output..");
        output_label.setBounds(25,25,500,50);
        output_label.setVisible(true);
        output_label.setBackground(Color.RED);

        output_panel.setBackground(Color.BLACK);
        output_panel.add(output_label);
        output_panel.setVisible(true);

        JButton submit_button=new JButton("Submit");
        submit_button.setBounds(125,90,100,45);
        submit_button.setVisible(true);



        JTextField username_text_field=new JTextField();
        username_text_field.setBounds(100,10,250,35);
        username_text_field.setVisible(true);
        username_label.setText("Username:");
        username_label.setVisible(true);
        username_label.setBounds(23,15,75,25);

        JLabel password_label=new JLabel();
        JPasswordField password_text_field=new JPasswordField();
        password_text_field.setBounds(100,40,250,35);
        password_text_field.setVisible(true);
        password_label.setText("Password:");
        password_label.setVisible(true);
        password_label.setBounds(23,40,75,25);

        submit_button.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                JWindow window=new JWindow();
                String username=username_text_field.getText().toString();
                String password=password_text_field.getPassword().toString();
                output_label.setText("Username :"+username+" Password: "+password);
            }
        });
        panel.setBackground(Color.gray);
        panel.add(submit_button);
        panel.add(password_label);
        panel.add(password_text_field);
        panel.setBounds(250,25,500,150);
        panel.add(username_label);
        panel.add(username_text_field);
        frame.setBounds(0,0,1000,750);
        frame.setVisible(true);
        frame.setBackground(Color.RED);
        frame.add(output_panel);
        frame.add(panel);

    }
}
