package com.mail;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class SendMail {
    public static void SendImage(String Email, String Filepath) {
        String to = Email;
        String subject = "QR Code Image";
        String msg = "This is the QR Code Image for you:";
        final String user = "vitthalghanwate19@gmail.com";
        final String pass = "lopz uxob zgex pdvk"; // Replace with your actual app password
        
        // Set up properties for SSL
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465"); // Use SSL port
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.ssl.enable", "true"); // Enable SSL
        props.put("mail.smtp.ssl.protocols", "TLSv1.2"); // Only use TLSv1.2

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(msg);

            MimeBodyPart messageBodyPart = new MimeBodyPart();
            Multipart multipart = new MimeMultipart();
            String file = Filepath;
            DataSource source = new FileDataSource(file);
            messageBodyPart.setDataHandler(new DataHandler(source));
            messageBodyPart.setFileName("QRcode.png");
            multipart.addBodyPart(messageBodyPart);
            message.setContent(multipart);

            Transport.send(message);
            System.out.println("Sending");
            System.out.println("Sent successfully");
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        // Example usage
        SendImage("recipient@example.com", "path/to/your/file.png");
    }

    public static void Sendforgetpassword(String Email, String password) {
        String to = Email;
        String subject = "Send Forget Password";
        String msg = "This is the Password for you: " + password;
        System.out.println("Password: " + password);
        final String user = "your mail";
        final String pass = "password"; // Replace with your actual app password

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "465"); // Use SSL port
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.ssl.enable", "true"); // Enable SSL
        props.put("mail.smtp.ssl.protocols", "TLSv1.2"); // Only use TLSv1.2

        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, pass);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setText(msg);
            Transport.send(message);
            System.out.println("Sending");
            System.out.println("Sent successfully");
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
