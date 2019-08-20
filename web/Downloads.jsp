<%-- 
    Document   : Downloads
    Created on : Dec 20, 2018, 11:10:30 AM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital || Downloads</title>
    </head>
    <body bgcolor="navy">
        <div style="background-color: aliceblue"> <img src="lorgo.png" height="150" width="678.9" alt="logo.png"/></div> <P/>
        <%--menu table--%>
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
        
        <div style="background-color: azure">
            <font face="Bell MT" size="+2" color="darkred"><b>Downloads</b></font>
        </div> <p/>
        
        <div style="background-color: lightgrey"> <font face="Times new roman" size="+0" color="black">
            The skyline digital is also a team of Java Developers who have developed many performing Applications. Bellow are some of the 
            Java applications available for download. <br/> Note : <i>If your device is not Java supported you'll first need to download the Java Runtime 
                Environment which is No.1 on the list bellow in order to run Java Applications on your PC.</i> <p/>
            <ol type="1">
                <li>
                    <b>The Java Runtime Environment(JRE)</b> <br/> Download and install this software on your PC in order to run Java applications on 
                    your device. Your can also find the latest release of JRE on the Oracle web for download. <br/>
                    <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download JRE</font></button>
                </li> <br/>
                <li>
                    <b>The Skyline Digital (Desktop) </b> <br/> This is the Skyline Digital Desktop application which allows you to access all
                     the services on our site. Download and install the application on your PC for easy and quick services from us. <br/>
                     <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download Skyline_D (pc)</font></button>
                </li> <br/>
                <li>
                    <b>The Skyline Digital (Android) </b> <br/> This is the Skyline Android Applications which gives a reliable access to all 
                    the services offered at our site right on your android device. Download and install this app on your mobile to start. <br/>
                    <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download Skyline_D (android)</font></button>
                </li> <br/>
                <li>
                    <b>Sky Pad</b> <br/> This is a text editor embedded with Html tools which help you create professional documents in a blink.
                    Download and install the application on your PC to start publishing. <br/>
                    <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download SkyPad</font></button>
                </li> <br/>
                <li>
                    <b>Sky Music</b> <br/> Music Player for desktop. Produces very excellent sound in your speakers and headphones.
                    Download and install Sky music to start having a bigger fan. <br/>
                    <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download Sky Music</font></button>
                </li> <br/>
                <li>
                    <b>Sky Browser</b> <br/> Web Browser for desktop. It is fast,efficient and lite on your PC.
                    Install to start a faster and smoother surf. <br/>
                    <button type="button" style="background-color: lightblue"><font face="Constantia" size="+1">download Sky Browser</font></button>
                </li> <br/>
            </ol>
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
