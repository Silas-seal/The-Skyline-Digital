
import java.io.*; import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
//mailing
import javax.mail.*; import javax.mail.internet.*;

/**
 *
 * @author THE SKYLINE DIGITAL
 */
@WebServlet(urlPatterns = {"/Forgot"})
public class Forgot extends HttpServlet {
    public static String downbt=
    "<div align=\"Center\" style=\"background-color:azure\"> <a href=\"About.jsp\">"+
    "<button type=\"button\" style=\"background-color: darkcyan\"><font face=\"Bell MT\" size=\"+2\" color=\"aliceblue\"><b>AboutUs</b></button></a>"+
    "<a href=Help.jsp>"+
    "<button type=\"button\" style=\"background-color: purple\"><font face=\"Bell MT\" size=\"+2\" color=\"aliceblue\" width=\"100\"><b>Help</b></button></a>"+
    "<a href=\"Feedback.jsp\">"+
    "<button type=\"button\" style=\"background-color: darkslateblue\"><font face=\"Bell MT\" size=\"+2\" color=\"aliceblue\"><b>Feedback</b></button></a>"+
    "<a href=\"contact.jsp\">"+
    "<button type=\"button\" style=\"background-color: darkviolet\"><font face=\"Bell MT\" size=\"+2\" color=\"aliceblue\"><b>Contact Us</b></button></a>"+
    "<br/> <font face=\"Times new roman\" size=\"+0\" color=\"black\">The Skyline Digital (C) 2018 All Rights Reserved </font> </div>";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        final String stat="<!DOCTYPE html> <html><head><title>The Skyline Digital</title></head><body bgcolor"+"=navy"+">";
        final String end="</body> </html>"; 
        String log="<div style=\"background-color: aliceblue\"> <img src=\"lorgo.png\" height=\"150\" width=\"678.9\" alt=\"logo.png\"/></div> <P/>";
        
        String email=request.getParameter("mail");
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            out.println(stat+log);
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b><i>Forgot Password</i></b></font></div>");
            //implementing forgot password mail
            String to=email,fro="muwanguzisilas@gmail.com",host="smtp.gmail.com"; Properties prop=new Properties();
            String user=fro; String pass="Mustepsil";
            //adding properties
            prop.put("mail.smtp.starttls.enable",true);
            prop.put("mail.smtp.host",host);
            prop.put("mail.smtp.user",user);
            prop.put("mail.smtp.password",pass);
            prop.put("mail.smtp.port","587");
            prop.put("mail.smtp.auth","true");
            //sensioning
            Session ssn=Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication(user,pass);
                }
            });
            //creating msg--send
            MimeMessage msg=new MimeMessage(ssn); msg.setFrom(new InternetAddress(fro));
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            msg.setSubject("Reset Your Password");
            //making a reset code
            int min=100000; int max=999999; Random rm=new Random();
            int code=min+rm.nextInt(max); int reset=code;
            //mailing code
            msg.setText("You are recieving this email to help you reset your skyline account password."+reset+" is your reset "+
            "code. \n Please note that this code expires in 1,800 seconds. \n The Skyline Digital");
            Transport.send(msg);
            
            out.println(downbt+end);
        } catch (AddressException ex) {
            Logger.getLogger(Forgot.class.getName()).log(Level.SEVERE, null, ex);
        } catch (MessagingException ex) {
            Logger.getLogger(Forgot.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
