<%-- 
    Document   : SignUp
    Created on : Dec 8, 2018, 4:37:53 PM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital/SignUp || Create Account </title>
    </head>
    <body bgcolor="navy"> <div style="background-color: aliceblue"> <img src="lorgo.png" height="150" width="678.9" alt="logo.png"/></div> <P/>
        <div style="background-color: azure">
            <span style="color: olive"><h2>CREATE YOUR SKYLINE ACCOUNT</h2></span>
        </div> <p/>
        <div style="background-color: white"> <form action="Register" method="post">
                <font face="Times new roman" size="+1" color="darkred">SKYLINE REGISTRATION FORM</font> <br/> <br/>
            <input type="text" name="name1" placeholder="First Name" width="320"/> <input type="text" name="name2" placeholder="Last Name" width="320"/>
            <br/>Date of Birth : <input type="date" name="dob" placeholder="YYYY/MM/DD" width="320"/> <br/>
            Gender        : <select name="gender"><option value="select" selected="">select</option> 
                <option value="Male">Male</option> <option value="Female">Female</option></select> <br/>
                ID Type       : <input name="Idt" list="idt"/> <datalist id="idt">
                <option value="National"> <option value="Passport"> <option value="Refuge Card">
            </datalist> <br/>
            ID Number     : <input type="text" name="idn" placeholder="Identification Number"/> <br/>
            <input type="tel" name="mob" placeholder="Phone Number" width="320"/>
            <input type="email" name="mail" placeholder="Email Address" width="320"/> <br/>
            <input type="text" name="occ" placeholder="Occupation" width="320"/>
            <input type="text" name="user" placeholder="Set Username" width="320"/> <br/>
            <input type="password" name="pass" placeholder="Set Password" width="320"/>
            <input type="password" name="conpass" placeholder="Confirm Password" width="320"/> <br/>
                <button type="submit" style="background-color: darkgreen"><font face="Constantia" size="+1" color="azure">Register</font></button>
            </form>
        </div> <p/>
        <div style="background-color: aliceblue"> <a href="index.jsp">
                <button type="button" style="background-color: purple"><font face="Bell MT" size="+2" color="azure">Back To Login Page</font></button></a>
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
