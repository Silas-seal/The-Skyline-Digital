<%-- 
    Document   : index
    Created on : Dec 6, 2018, 6:24:43 PM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital</title>
    </head>
    <body bgcolor="navy"> 
        <%
            Cookie ck = new Cookie("user", request.getParameter("user")); ck.setMaxAge(0); response.addCookie(ck);
        %>
        
        <div style="background-color: aliceblue"> <img src="lorgo.png" height="150" width="678.9" alt="logo.png"/></div> <P/>
        <div style="background-color: azure">
            <span style="color: darkred"><h2>LOG INTO YOUR SKYLINE ACCOUNT</h2></span>
        </div> <p/>
        <div style="background-color: aliceblue">
            <form action="Login" method="post">
                <input type="text" width="370" height="70" name="user" placeholder="Enter Username "/>
                <input type="password" width="370" height="70" name="pass" placeholder="Enter Password"/>
                <button type="submit" width="270" height="100" style="background-color: green"><font face="Bell MT" size="+2" color="azure">
                    LOGIN</font></button>
            </form> <a href="FgtPas.jsp" target="self"><i><b>Forgot Password</b></i></a>
            <span style="color: darkgreen"><h4>Don't have account yet? Sign up in simple steps bellow.</h4></span> <a href="SignUp.jsp">
                <button type="button" style="background-color: plum"><font face="Times new Roman" size="+3"><b>SignUp</b></font></button> </a>
        </div> <p/>
        <div style="background-color: azure">
            The skyline digital is a company which was founded in 2017 by a group of bussinessmen and IT professionals to make services near to their
            clients in an online market. The company runs two major tiers : the Market tier where the clients browse and view our goods and services And 
            the Finances tier where Payments, Purchases, Transfers and other transactions are performed. Click <i>AboutUs</i> for more info.<br/><br/>
            <div align="Center"> <a href="About.jsp">
            <button type="button" style="background-color: darkcyan"><font face="Bell MT" size="+2" color="aliceblue"><b>AboutUs</b></button></a>
            <a href="Help.jsp">
            <button type="button" style="background-color: purple"><font face="Bell MT" size="+2" color="aliceblue" width="100"><b>Help</b></button> </a>
            <a href="Feedback.jsp">
            <button type="button" style="background-color: darkslateblue"><font face="Bell MT" size="+2" color="aliceblue"><b>Feedback</b></button> </a>
            <a href="contact.jsp">
            <button type="button" style="background-color: darkviolet"><font face="Bell MT" size="+2" color="aliceblue"><b>Contact Us</b></button></a>
            <br/> <font face="Times new roman" size="+0" color="black">The Skyline Digital (C) 2018 All Rights Reserved </font> </div>
        </div>
    </body>
</html>
