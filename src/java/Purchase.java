
import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
//date and database
import java.sql.*; import java.util.Calendar; import java.util.GregorianCalendar; import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 *
 * @author THE SKYLINE DIGITAL
 */
@WebServlet(urlPatterns = {"/Purchase"})
public class Purchase extends HttpServlet {
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
        
        String item=request.getParameter("itm"); String price=request.getParameter("prc");
        String log="<div style=\"background-color: aliceblue\"> <img src=\"lorgo.png\" height=\"150\" width=\"678.9\" alt=\"logo.png\"/></div> <P/>";
        
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            out.println(stat+log);
            out.println("<div style=\"background-color:azure\"><font face=\"Bell MT\" size=\"+2\" color=\"darkred\"><b>Purchase</b></font></div><p/>");
            
            //establishing database connection using cookies query
            String host="jdbc:mysql://localhost:3306/skyline"; String usr="Syrus001h"; String ps="SkylineDigital001h";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(host,usr,ps); PreparedStatement pst;
            Cookie[] cks=request.getCookies();
            if(cks!=null){
                for(Cookie ck : cks){
                    String qry="select *from skylinedigital where User_Name=?"; 
                    pst=con.prepareStatement(qry,ResultSet.FETCH_FORWARD,ResultSet.CONCUR_UPDATABLE);
                    pst.setString(1,ck.getValue()); ResultSet rs; rs=pst.executeQuery();
                    if(rs.next()){
                        int bal=rs.getInt("Balance"); int pric=Integer.valueOf(price); int id=rs.getInt("ID");
                        if(bal>=pric){
                            //performing the transaction
                            int fbal=bal-pric; String update="update skylinedigital set Balance=? where ID=?";
                            PreparedStatement pst2; pst2=con.prepareStatement(update); pst2.setInt(1, fbal); pst2.setInt(2,id); 
                            pst2.executeUpdate(); rs.refreshRow();
                            //recording the transaction
                            Calendar cd=new GregorianCalendar(); Date dt=new Date();
                            String tt="Purchase"; String cnm=rs.getString("Last_Name")+"("+item+")";
                            String rcd="insert into skylined_transactions(Transaction_Type,Customer_ID,Customer_Names,Amount,"+
                            "Time_and_Date,Balance) Values(?,?,?,?,?,?)"; PreparedStatement pst3; 
                            pst3=con.prepareStatement(rcd); pst3.setString(1,tt); pst3.setInt(2,id); pst3.setString(3,cnm);
                            pst3.setInt(4,pric); pst3.setString(5,dt.toString()); pst3.setInt(6,rs.getInt("Balance"));
                            pst3.executeUpdate();
                            //printing transaction succesfull
                            out.println("<div style=\"background-color:lightgrey\"><font face=\"Times new roman\" size=\"+1\" color=\"darkgreen\">"+
                            "Transaction succeded <p/>>");
                            //getting recorded transaction from db
                            String qr="select *from skylined_transactions where Customer_ID=?"; PreparedStatement pst4;
                            pst4=con.prepareStatement(qr); pst4.setInt(1,id); ResultSet res=pst4.executeQuery();
                            if(res.last()){
                                String trstn=res.getString("Transaction_ID")+"__"+res.getString("Transaction_Type")+"__"+res.getString("Customer_ID")
                                +"__"+res.getString("Customer_Names")+"__"+res.getString("Amount")+"__"+res.getString("Time_and_Date")+"__"
                                        +res.getString("Balance");
                                out.println(trstn +"<p/> We will contact with in 4 hours to discuss the delivery of your purchases Item.<br/> Thanks.<p/>");
                                out.println("<a href=\"Market.jsp\"><button type=\"button\" style=\"background-color:blueviolet\"><font face=\"Bell MT\" size=\"+2\" "+
                                "color=\"azure\">Continue</font> </button> <p/>");
                                out.println("</font> </div> <p/>");
                            }
                        }
                    }
                }
            }
            out.println(downbt+end);
            
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(Purchase.class.getName()).log(Level.SEVERE, null, ex);
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
