<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %> 
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Sending Mail</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <form name="emailForm" method="post">
<table>

</tr>

<tr>
<td>
<input type="submit" value="Send" name="btn1">
</td>
<td>
<input type="reset" value="Reset">
</td>
</tr>
</table>
</form>

    </body>
</html>





<%
if (request.getParameter("btn1") != null)
{
//Creating a result for getting status that messsage is delivered or not!
String result;

// Get recipient's email-ID, message & subject-line from mail.html page
final String email="pranjal.markan3113@gmail.com, manishac7429@gmail.com";
String to[] = email.split(",");
//String[] recipient=to.split(",");
//InternetAddress[] recipientAdd=new InternetAddress[recipient.length];


final String subject = "ALERT!!";
final String messg = "Dear Customer,\nYour medicines are going to end soon! \nIf you need to purchase More then please do visit our shop\nWith Regards MedCheck";


// Sender's email ID and password needs to be mentioned
final String from = "manishac7429@gmail.com";
final String pass = "swxdbkfzbedemaxs";

// Defining the gmail host
String host = "smtp.gmail.com";

// Creating Properties object
Properties props = new Properties();

// Defining properties
props.put("mail.smtp.ssl.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.user", from);
props.put("mail.password", pass);
props.put("mail.port", "465"); // there are some other ports also available

// Authorized the Session object.
Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
@Override
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(from, pass);
}
});

try {
// Create a default MimeMessage object.
MimeMessage message = new MimeMessage(mailSession);

// Set From: header field of the header.
message.setFrom(new InternetAddress(from));
InternetAddress[] address = new InternetAddress[to.length];


for(int i=0; i<to.length; i++){
   //address[i] = new InternetAddress[id[i]];
   message.addRecipients(Message.RecipientType.TO,address);
}
// Set To: header field of the header.
message.setRecipients(Message.RecipientType.TO, address);

// Set Subject: header field
message.setSubject(subject);

// Now set the actual message
message.setText(messg);

// Send message
Transport.send(message);
result = "Your mail sent successfully....";
out.println(result);
} catch (MessagingException mex) {
mex.printStackTrace();
result = "Error: unable to send mail....";
out.println(mex);
out.println(result);}
}

 %>
