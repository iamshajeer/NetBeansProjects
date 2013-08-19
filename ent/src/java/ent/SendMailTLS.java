/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ent;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author PRABEESH
 */
public class SendMailTLS {
    String msg="";
   public void sendMail(String user_name, int pass,String email)
   {
     final String username = "prabeesh2868@gmail.com";
     final String password = "ROSE8893639586";
      Properties props = new Properties();          
   props.put("mail.smtp.auth", "true");
   props.put("mail.smtp.starttls.enable", "true");
   props.put("mail.smtp.host", "smtp.gmail.com");
   props.put("mail.smtp.port", "587");
   Session session = Session.getInstance(props,new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
   try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("prabeesh2868@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			message.setSubject("Thank you for registraction");
			message.setText(msg);
 
			Transport.send(message);
 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
   
   public void getMessage(String msg)
   {
       this.msg = msg;
   }
   
   
   
    
}
