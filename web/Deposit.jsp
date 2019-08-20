<%-- 
    Document   : Deposit
    Created on : Dec 26, 2018, 4:32:07 PM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital|| Deposit</title>
    </head>
    <body bgcolor="darkgreen">
        <div style="background-color: aliceblue"> <img src="lorgo.png" height="150" width="678.9" alt="logo.png"/></div> <P/>
        
        <table border="1" bordercolor="white" CellPadding="3" CellSpacing="3" bgcolor="grey">
            <tr>
                <th><a href="Market.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Marketing</button>
                    </a> </th>
                <th><a href="Finances.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Finances</button>
                    </a> </th>
                <th> <a href="Academics.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Academics</button>
                     </a> </th>
                <th> <a href="Music.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Music</button>
                    </a> </th>
                <th> <a href="Downloads.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Downloads</button>
                        </a> </th>
                <th> <a href="Profile">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Profile</button>
                    </a> </th>
                <th> <a href="Community.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">Community</button>
                    </a> </th>
                <th> <a href="index.jsp">
                    <button type="button" style="background-color: plum"><font face="Times new roman" size="+1" color="black">LogOut</button>
                    </a> </th> 
            </tr>
        </table> <p/>
        
        <%
               Cookie[] cookies=request.getCookies();
               if(cookies!=null){
                   for(Cookie ck : cookies){ 
                       if(cookies.length < 2){ 
                           out.println("<div style=\"background-color: lightsteelblue\"><font face=\"Times new roman\" size=\"+1\" color=\"red\">"+
                                   //cookies.length +" "+ck.getName().toString() +
                           "You are not logged In, Please logIn to access all services without interuptions.<br/><a href=\"index.jsp\"><button type="+
                           "\"button\" style=\"background-color:darkgreen\"><font face=\"Bell MT\" color=\"azure\" size=\"+1\">LogIn Here</font></button>"+
                           "</a> </div><p/>");
                       }
                   }
               }
        %>
        
        <div style="background-color: azure"><font face="Bell MT" size="+2" color="darkblue"><b>Deposit Funds</b></font></div> <p/>
        
        <div style="background-color: white"> <font face="Times new roman" size="+0" color="black">
            Depositing funds on your account makes it possible for you to purchase items which are priced bellow your balance. We currently have three(3)
            effective ways of depositing money on your skyline account as bellow. <p/> <big><b><i>Payment Methods</i></b></big> <p/>
            <ol type="1">
                <li>
                <font color="red"><big><b>Airtel Money</b></big></font> <br/>
                This is the easiest way to deposit funds on your Skyline account because you will use your mobile phone to perform this action.<br/>
                Bellow are steps followed to deposit using Airtel Money.<br/>Deposit money on your airtel money account and do the following.
                <ul type="disc">
                    <li>Dial *185#</li> <li>select Financial services(No.7) </li> <li>select Skyline Digital(No.1)</li>
                    <li>Enter your Client ID (e.g 70101) and press OK</li> <li>Enter amount you wish to deposit and press OK</li>
                    <li>Your user_name will be displayed and then you will enter your airtel money pin to complete the deposit.</li> <br/>
                    Note : If the name displayed is not user_name you registered at skyline digital,please don't enter pin just cancel the process 
                    and try again. If the error insists, contact admin for assistance.
                </ul>
                </li> <br/>
                <li>
                <font color="blue"><big><b>VISA</b></big></font> <br/>
                This method is currently unavailable but we are working forward to deploying it for you to deposit money using your VISA debit/credit 
                card.<br/> When this payment method is deployed, this will be the best way to work with your account because all transactions will be 
                performed online on our site.
                </li> <br/>
                <li>
                <font color="purple"><big><b>Agency</b></big></font> <br/>
                Here you will need to visit one of our Skyline_D Agents to assist with depositing funds on your skyline account. <br/> OR <br/>
                You can contact our available online Agent to help you with the deposit straight away. The money will be added to your account 
                immediately. <i><b>Isaac.skyline@gmail.com</b></i>
                </li>
            </ol>
        </div>
        
        <div align="Center" style="background-color: azure"> <a href="About.jsp">
            <button type="button" style="background-color: darkcyan"><font face="Bell MT" size="+2" color="aliceblue"><b>AboutUs</b></button></a>
            <a href="Help.jsp">
            <button type="button" style="background-color: purple"><font face="Bell MT" size="+2" color="aliceblue" width="100"><b>Help</b></button> </a>
            <a href="Feedback.jsp">
            <button type="button" style="background-color: darkslateblue"><font face="Bell MT" size="+2" color="aliceblue"><b>Feedback</b></button> </a>
            <a href="contact.jsp">
            <button type="button" style="background-color: darkviolet"><font face="Bell MT" size="+2" color="aliceblue"><b>Contact Us</b></button></a>
            <br/> <font face="Times new roman" size="+0" color="black">The Skyline Digital (C) 2018 All Rights Reserved </font> </div>
    </body>
</html>
