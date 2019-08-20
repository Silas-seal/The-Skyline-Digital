
import java.io.*; import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;

/**
 *
 * @author SeumX Plus
 */
@WebServlet(urlPatterns = {"/Account"})
public class Account extends HttpServlet {
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
            
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>My Account</b></font></div><p/>");
            out.println("<div style=\"background-color:white\"><font face=\"serif\" size=\"+1\" color=\"black\"><b><i>Balance</i></b>");
            //reading the cookies
            Cookie[] cks=request.getCookies();
            //establishing database connection
            String host="jdbc:mysql://localhost:3306/Skyline"; String usr="Syrus001h"; String pass="SkylineDigital001h";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(host,usr,pass);
            if(cks!=null){
            for(Cookie ck : cks){
                //balance query
                String query="select *from skylinedigital where User_Name=?"; PreparedStatement pst;
                pst=con.prepareStatement(query); pst.setString(1,ck.getValue()); ResultSet rs; rs=pst.executeQuery();
                if(rs.next()){
                    out.println("<br/> Your account balance is UGX."+rs.getInt("Balance")+"<p/> <b><i>Statement</i></b> <br/>");
                    out.println("Bellow are the transactions you've made ever since you joined us. <br/>");
                //Statement query
                String qry="select *from skylined_transactions where Customer_ID=?"; PreparedStatement ps; String ht=rs.getString("ID");
                ps=con.prepareStatement(qry); ps.setString(1,ht); ResultSet res; res=ps.executeQuery();

                while(res.next()){
                    String tid=res.getString("Transaction_ID"),ttp=res.getString("Transaction_Type"),cid=res.getString("Customer_ID");
                    String cnm=res.getString("Customer_Names"),amt=res.getString("Amount"),tm=res.getString("Time_and_Date");
                    String bl=res.getString("Balance");
                    //st table
                    out.println("<table border=\"0\" bgcolor=\"lightgrey\" CellPadding=\"7\" CellSpacing=\"7\"><tr><td>"+tid+"<br></td>"+
                    "<td>"+ttp+"</td><td>"+cid+"</td><td>"+cnm+"</td><td>"+amt+"</td><td>"+tm+"</td><td>"+bl+"</td></tr></table>");
                    
                    out.println("</font> </div> <p/>");
                } }
            } }
            
            out.println(downbt+end);
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(Account.class.getName()).log(Level.SEVERE, null, ex);
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
