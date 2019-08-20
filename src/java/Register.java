
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author THE SKYLINE DIGITAL
 */
@WebServlet(urlPatterns = {"/Register"})
public class Register extends HttpServlet {
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
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println(stat+log);
            
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>Registration</b></font></div><p/>");
            
            //getting values from the registration form
            String name1=request.getParameter("name1");String name2=request.getParameter("name2"); String dob=request.getParameter("dob");
            String gender=request.getParameter("gender"); String Idt=request.getParameter("Idt"); String idn=request.getParameter("idn");
            String mob=request.getParameter("mob"); String mail=request.getParameter("mail"); String occ=request.getParameter("occ");
            String user=request.getParameter("user"); String pass=request.getParameter("pass"); String conpass=request.getParameter("conpass");
            
            //giving condition for values not to be null
            if(name1!=null && name2!=null && dob!=null && gender!=null && !gender.equals("select") && Idt!=null && idn!=null && mob!=null && mail!=null
               && occ!=null && user!=null && pass!=null && conpass!=null){
                /*   //printing values//
                out.println("<div style=\"background-color: white\">"+name1+"<br/>"+name2+"<br/>"+dob+"<br/>"+gender+"<br/>"+Idt+"<br/>"+idn+"<br/>"
                +mob+"<br/>"+mail+"<br/>"+occ+"<br/>"+user+"<br/>"+pass+"<br/>"+conpass+"</div><p/>");*/
                
                if(pass.equals(conpass)){
                    //establishing database connection
                    String host="jdbc:mysql://localhost:3306/skyline"; String usr="Syrus001h"; String pas="SkylineDigital001h";
                    Class.forName("com.mysql.jdbc.Driver"); int bal=0;
                    Connection con=DriverManager.getConnection(host,usr,pas); PreparedStatement pst;
                    String insert="insert into skylinedigital(First_Name,Last_Name,Date_Of_Birth,Gender,Identification_Type,Identification_Number,"
                            + "Mobile,Email,User_Name,Password,Occupation,Balance) Values(?,?,?,?,?,?,?,?,?,?,?,?)";
                    pst=con.prepareStatement(insert); pst.setString(1,name1); pst.setString(2,name2); pst.setString(3,dob); pst.setString(4,gender);
                    pst.setString(5,Idt); pst.setString(6,idn); pst.setString(7,mob); pst.setString(8,mail); pst.setString(9,user);
                    pst.setString(10,pass); pst.setString(11,occ); pst.setLong(12,bal);
                    //executing the insert action
                    pst.executeUpdate();
                    //All done, Account created now you can log In
                    out.println("<div style=\"background-color: lightsteelblue\"><font face=\"serif\" size=\"+1\" color=\"black\">"+
                    "Hello "+name2+", Welcome to the Skyline Digital. <br/> Your account creation has been succesfully processed. You can now "+
                    "LogIn using your Username <i>"+user+"</i> and password to access our services. <br/> Thank you for Joining Us.</font><p/>"+
                    "<a href=\"index.jsp\"><button type=\"button\" style=\"background-color:green\"><font face=\"Bell MT\" size=\"+1\" color=\"azure\">"+
                    "LogIn Now</font></button></a> </div> <p/>");
                } else{
                    out.println("<div style=\"background-color:white\"><font face=\"serif\" size=\"+1\" color=\"red\">"+
                    "Sorry, Your registration could not be completed because passwords do not match. Please try agian and confirm with the same "+
                    "passowrd you set.<a href=\"SignUp.jsp\"><button type=\"button\" style=\"background-color:green\"><font face=\"Constantia\""+
                    " size=\"+1\" color=\"azure\">Retry</font></button></a> </div> <p/>");
                }
                
            } else{
                out.println("<div style=\"background-color:white\"><font face=\"serif\" size=\"+1\" color=\"red\">"+
                    "Sorry, Your registration could not be completed because of unfilled form fields. Please try agian and fill in all the fileds "+
                    "in the form.<a href=\"SignUp.jsp\"><button type=\"button\" style=\"background-color:green\"><font face=\"Constantia\""+
                    " size=\"+1\" color=\"azure\">Retry</font></button></a> </div> <p/>");
            }
            
            out.println(downbt+end);
        } catch (ClassNotFoundException | SQLException ex) {
        Logger.getLogger(Register.class.getName()).log(Level.SEVERE, null, ex);
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
