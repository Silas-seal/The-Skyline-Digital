<%-- 
    Document   : Community
    Created on : Dec 24, 2018, 1:06:03 AM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital || Community</title>
    </head>
    <body bgcolor="darkred">
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
        
        <div style="background-color: azure"><font face="Bell MT" size="+2" color="darkblue"><b>The Skyline Community</b></font></div> <p/>
        <div style="background-color: lightsteelblue">
            <font face="Times new roman" size="+0" color="black">
                This community was purposely started for supporting IT students and developers with technical support in Java,C++,php,Html,Android 
                and any other query concerning computer science,software development and web development. This community also gives developers a chance 
                to contribute in our development projects to build your career and for a job opportunity with us at the skyline Digital. <br/>
                Join our community online and start working with us now. <p/> <div>
                    <button type="button" style="background-color: blueviolet"><font face="Constantia" size="+1" color="azure">Join Community</button> 
                    
                </div>
            </font>
        </div> <p/>
        
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
