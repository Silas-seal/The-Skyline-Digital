/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.Date; import java.util.Calendar; import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author THE SKYLINE DIGITAL
 */
@WebServlet(urlPatterns = {"/Login"})
public class Login extends HttpServlet {
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
            throws ServletException, IOException, ClassNotFoundException, SQLException {
        
        final String stat="<!DOCTYPE html> <html><head><title>The Skyline Digital</title></head><body bgcolor"+"=navy"+">";
        final String end="</body> </html>"; 
        String log="<div style=\"background-color: aliceblue\"> <img src=\"lorgo.png\" height=\"150\" width=\"678.9\" alt=\"logo.png\"/></div> <P/>";
        response.setContentType("text/html;charset=UTF-8");
        
        //deleting recent cookie data
        Cookie[] coks=request.getCookies(); 
        if(coks!=null){
            for(Cookie ck : coks){
                ck.setMaxAge(0); 
            }
        }
        Cookie ck1=new Cookie("user",request.getParameter("user")); Cookie ck2=new Cookie("pass",request.getParameter("pass"));
        ck1.setMaxAge(60*60*12); ck2.setMaxAge(0); response.addCookie(ck1); response.addCookie(ck2);
        
        //working with dataes and caleneder
        Date date=new Date(); Calendar cl=new GregorianCalendar(); int yr=cl.get(Calendar.YEAR);
        
        //getting request inputs to login
        String username=request.getParameter("user"); String password=request.getParameter("pass");
        
        try (PrintWriter out = response.getWriter()) {
            
            //establishing a database connection
            String host="jdbc:mysql://localhost:3306/skyline"; String user="Syrus001h"; String pass="SkylineDigital001h";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(host, user, pass); PreparedStatement pst; ResultSet rs;
            
            String query="select *from skylinedigital where User_Name=?"; pst=con.prepareStatement(query);
            pst.setString(1, username); rs=pst.executeQuery();
            
            if(rs.next()){ String dbpass=rs.getString("Password");
            
            if(password.equals(dbpass)){
            out.println(stat); out.println(log);
            out.println("<div style="+"\"background-color: white\""+">");
            out.println("<span style="+"\"color:darkblue\""+">"+"<h2><b>"+"<font face=\"Bell MT\">"
                    +"WELCOME TO THE SKYLINE DIGITAL</b></h2></div> </p>");
            
            //adding table menu here horzontally
            out.println("<table border="+"\"1\""+" bgcolor="+"\"grey\""+" bordercolor="+"\"white\""+" CellPadding="+"\"3\""
            + " CellSpacing="+"\"3\""+">"+"<tr> <th><a href=\"Market.jsp\"> <button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Marketing</b></button></a></th>");
            out.println("<th><a href=\"Finances.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Finances</b></button></a></th>");
            out.println("<th><a href=\"Academics.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Academics</b></button></a></th>");
            out.println("<th><a href=\"Music.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Music</b></button></a></th>");
            out.println("<th><a href=\"Downloads.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Downloads</b></button></a></th>");
            out.println("<th><a href=\"Profile\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Profile</b></button></a></th>");
            out.println("<th><a href=\"Community.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>Community</b></button></a></th>");
            out.println("<th><a href=\"index.jsp\"><button type="+"\"button\""+" style="+"\"background-color: "+"plum\">"
            +" <font face="+"\"Times new roman\""+" size="+"\"+1\""+" color="+"\"black\""+"><b>LogOut</b></button></a></th></tr></table> <p/>");
            
            //Adding home content
            String name=rs.getString("Last_Name");
            out.println("<div style=\"background-color: whitesmoke\"><font face=\"serif\" size=\"+1\" color=\"darkblue\">"
                    + "Hello <i>"+name+"</i>, Thank you for being part of our media. <br/>Please note that we have updated our site to make"
                            +" "+ "it easier for you to acces all the services above. <br/><br/><b>Market </b>: You can visit our marketing site to view and "
                            + "purchase items of your choice and also sell with us in our online market. <br/> <b>Finances </b>: Manage your "
                            + "cash in our online finances bench to purchase,deposit,transfer and many other transactions<br/> "
                            + "<b>Academics </b>: Check our newly uploaded tech. tutorials concerning computer programming, Database,"
                            + "Web Deveopment and many more on the academics page.<br/><b>Music </b>: Are you a music fun, what type of music "
                            + "do you love? reggea,rnb,dancehall,pop,afro, or what? Vist our music site for all the hottest and most"
                            + " popular hits and enjoy the music feeling. <br/><b>Downloads </b>: Here you can download our pdf tutorials,music,"
                            + "applications and many more on our downloads page. <br/><b>Profile </b>: Edit and Customise your profile to fit"
                            + " your publicity on the profile page. <br/><br/> <h3><i>Home Of The Genius</i></h3></div>");
            
            out.println("<p/>"+downbt+end);
        }else {
                out.println(stat+log);
                out.println("<div style=\"background-color: azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>LogIn Failed</b></div><p/>"
                +"<div style=\"background-color: white\"><font face=\"serif\" size=\"+0\" color=\"red\"> Login attempt unsuccessful,wrong password"
                +" entered </font>. <br/><font face=\"serif\" size=\"+0\">Please check your password and try to login again</font> <br/> <a href=\"FgtPas.jsp\""
                +" target=\"self\"><i><b>Forgot password?</b></i></a> <br/> <a href=\"index.jsp\"> "
                +"<button style=\"background-color: green\"><font face=\"Constantia\" size=\"+2\" color=\"azure\">Retry</button></a> </div>");
                out.print("<p/>"+downbt+end);
            }
        }else {
                out.println(stat+log);
                out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>LogIn Failed</b></div>"
                + "<p/> <div style=\"background-color: white\">");
                out.println("<font face=\"serif\" size=\"+0\" color=\"red\"> Login attemp unsuccessful, Account not found. </font><br/> "
                + "<font face=\"serif\" size=\"+0\">Please check your user name and try again Or contact adiministrator for help. </font><br/>"
                        + "<a href=\"index.jsp\">"
                + "<button style=\"background-color: green\"><font face=\"Constantia\" size=\"+2\" color=\"azure\">Retry</button></a> </div>");
                out.println("<p/>"+downbt+end);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
