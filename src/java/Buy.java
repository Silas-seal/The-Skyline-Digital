
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
@WebServlet(urlPatterns = {"/Buy"})
public class Buy extends HttpServlet {
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
        
        String item=request.getParameter("item"); String price=request.getParameter("price");
        String log="<div style=\"background-color: aliceblue\"> <img src=\"lorgo.png\" height=\"150\" width=\"678.9\" alt=\"logo.png\"/></div> <P/>";
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            out.println(stat+log);
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
            
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>Purchase</b></font></div><p/>");
            out.println("<div style=\"background-color:lightsteelblue\"><font face=\"Times new roman\" size=\"+1\" color=\"black\">"+
            "You are purchasing this Item <br/> Item : "+request.getParameter("item")+"<br/> Price : UGX."+request.getParameter("price")+"<p/>"
            //"</font> </div> <p/>"
            );
            //establishing database connection
            Cookie[] cookies=request.getCookies();if(cookies!=null){for(Cookie ck:cookies){
            String host="jdbc:mysql://localhost:3306/Skyline"; String user="Syrus001h"; String pass="SkylineDigital001h";
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con=DriverManager.getConnection(host,user,pass); String query="select *from skylinedigital where User_Name=?";
            PreparedStatement pst; pst=con.prepareStatement(query);pst.setString(1,ck.getValue()); 
            ResultSet rs; rs=pst.executeQuery();
            if(rs.next()){
                int bal=rs.getInt("Balance"); int prc=Integer.valueOf(request.getParameter("price"));
                if(bal>=prc){
                    out.println("Ugx."+request.getParameter("price")+" will be deducted from your Skyline Account towards buying this item."+
                    "<form action=\"Purchase\" method=\"post\"> <input type=\"hidden\" name=\"itm\" value=\""+request.getParameter("item")+"\" />"+
                    "<input type=\"hidden\" name=\"prc\" value=\""+request.getParameter("price")+"\" /> "+//ojuiui
                    "<a href=\"Market.jsp\"><button type=\"button\" style=\"background-color:darkred\"><font face=\"serif\" size=\"+1\" color=\"azure\">"+
                    "Decline</button></a><button type=\"submit\" style=\"background-color:darkgreen\"><font face=\"serif\" size=\"+1\" color=\"azure\">"+
                    "Confirm</button> </form></font> </div>");
                }else{
                    out.println("Dear Customer, You do not hava Sufficient funds on your Skyline account to complete your purchase."+
                    "<br/> Click <i>finances</i> on the main menu to deposit funds on on your account and try purchasing again </font> <br/>"+
                    "<a href=\"Market.jsp\"><button type=\"button\" style=\"background-color:purple\"><font face=\"Bell MT\" size=\"+1\" color=\"azure\">"
                            + "back</button></div><p/>");
                }
            }}} else{ if(cookies.length < 2){
                out.print("You are not logged In, Please LogIn to access this page. <br/>"+
                "<a href=\"index.jsp\"><button type=\"button\" style=\"background-color:green\"><font face=\"Bell MT\" size=\"+1\" color=\"azure\">"+
                "LogIn here</font></button></a></font></div><p/>");}
            }
            out.println("</font></div> <p/>");
            out.println(downbt+end);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Buy.class.getName()).log(Level.SEVERE, null, ex);
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
