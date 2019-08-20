
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
//sql
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author THE SKYLINE DIGITAL
 */
@WebServlet(urlPatterns = {"/Profile"})
public class Profile extends HttpServlet {
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
        
        //reading cookies data
        Cookie[] cookies =request.getCookies(); 
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println(stat+log);
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
            
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>Profile</b></font></div>");
            //establishing database connection
            String hst="jdbc:mysql://localhost:3306/Skyline"; String user="Syrus001h"; String ps="SkylineDigital001h";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(hst, user, ps); PreparedStatement pst; ResultSet rs;
            //making a query from cookies
            if(cookies!=null){
                for(Cookie ck : cookies){
                    String query="select * from skylinedigital where User_Name=?"; pst=con.prepareStatement(query);
                    pst.setString(1,ck.getValue()); rs=pst.executeQuery();
                    if(rs.next()){
                        out.println("<p/><div style=\"background-color:lightgrey\"><font face=\"serif\" size=\"+1\" color=\"black\"><b>My Profile details"+
                        "</b><br/> <img src=\"profile.jpg\" height=\"250\" width=\"220\" alt=\"profile\"/> Client ID : "+rs.getString("ID")+"<br/>"+
                        rs.getString("First_Name")+" "+rs.getString("Last_Name")+"<br/>"+rs.getString("Date_of_Birth")+"<br>"+rs.getString("Gender")+
                        "<br>"+rs.getString("Identification_Type")+"<br>"+rs.getString("Identification_Number")+"<br>Phone : "+rs.getString("Mobile")+
                        "<br/> Mail : "+rs.getString("Email")+"<br>"+rs.getString("User_Name")+"<br>"+rs.getString("Occupation")+
                        "<br>"+"<button type=\"button\" style=\"background-color: plum\"><font face=\"Constantia\" size=\"+1\">Update info</font></button>"+
                        "<br>"+"<button type=\"button\" style=\"background-color: plum\"><font face=\"Constantia\" size=\"+1\">Update Profile Picture</font></button>"
                        +"</font></div>");
                    
                    } /*else{
                        out.println("<div style=\"background-color:white\"><font face=\"serif\" size=\"+1\" color=\"red\">Your are not logged In,"+
                        "please login to access this page. <br/> <br/> <button type=\"button\" style=\"background-color: darkgreen\">"+
                        "<font face=\"Bell MT\" size=\"+2\" color=\"azure\"> LogIn Here </font> </div>"
                        );
                    }*/
                }
            } else {
                out.println("<div style=\"background-color:white\"><font face=\"serif\" size=\"+1\" color=\"red\">Your are not logged In,"+
                        "please login to access this page. <br/> <br/> <button type=\"button\" style=\"background-color: darkgreen\">"+
                        "<font face=\"Bell MT\" size=\"+2\" color=\"azure\"> LogIn Here </font> </div>"
                        );
            }
            
            out.println("<p/>"+downbt+end);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Profile.class.getName()).log(Level.SEVERE, null, ex);
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
