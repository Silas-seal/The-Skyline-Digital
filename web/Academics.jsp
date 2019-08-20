<%-- 
    Document   : Academics
    Created on : Dec 19, 2018, 12:28:45 PM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital || Academics</title>
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
                           "</a> </font></div><p/>");
                       }
                   }
               }
        %>
        
        <div style="background-color: azure"><font face="Bell MT" size="+2" color="darkred"><b>Academics</b></font></div> <p/>
        <div style="background-color: lightgrey">
            <font face="Times new roman" size="+0">
                We have also introduced a system of providing tutorials to IT students. These tutorials are prepared for beginners and professionals 
                who want to take their career to a next level of expertise. <br/> Bellow are some of the tutorials available for download in pdf. <p/>
                <ol type="1">
                     <li>
                         <b>Computer Fundametals tutotrial</b> <br/> This tutorial has been prepared for beginners who want to learn computer science.
                         The tutorial gives a complete understanding of a computer and all its associates in both hardware and software. <br/>
                         <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Microsoft Excel tutorial</b> <br/> This tutorial teaches how to do your work using the ms excel software. The tutorial 
                        covers all fields of using this tool. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Computer programming tutorial</b> <br/> If you are new to computer programming, this tutorial is highly recommended 
                        for to read it first before proceding with other programming tutorial. It introduces to programming and covers all basics 
                        of computer programming. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>HTML 5 tutorial</b><br/> HTML stands for Hyper_Text_MakeUp_language which is used in web design and development.
                        This tutorial gives enough understanding of the Hyper Text MakeUp Language. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Javascript tutorial</b> <br/> Javascript is a java scripting language embedded in Html for processing data in a web
                         browser. Javascript is easy because it contains Html. This tutorial covers all concepts in javascript from scratch.<br/>
                         <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>C programming</b> <br/> C is one of the most widely used programming language by programmers in software development.
                        This tutorial gives you enough understanding of C language from scratch. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li> 
                        <b>C++ tutorial</b> <br/> C++ is a middle level programming language which means that it has both low level and high level 
                        functions. This tutorial has a complete guide to programming in C++ language. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Java tutorial</b> <br/> Java is the most popular programming language used by many programmers and developers. It is a 
                        high level programming language and it is cross platform which means that it can run on all platforms. Java is also 
                        considered being the best technology for mobile development. This tutorial gives you a complete understanding of Java. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>C# tutorial</b> <br/> C sharp is an object oriented programming language developed by the microsoft company. C# is 
                        the best language for desktop if you are targeting the windows platform. If you have basic understanding of Java, it will be fun
                        to learn C# because it looks like Java. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Data communication and computer network tutorial</b> <br/> This tutorial teaches you how data is transimited from one device Or 
                        Network to another. This tutorial gives you enough understanding of Data and Networks. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Embedded Systems tutorial</b> <br/> Embedded system is hardware being embedded with a program in it to perform a particular 
                        task. This Software is micro-driven by the program embedded with it. This tutorial will teach you how embedded Systems operate 
                        and how to develop them. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Ethical hacking tutorial</b> <br/> This tutorial has been prepared by professionals who want to learn how to apply 
                        ethical hacking skills in real life use and grow their career in ethical hacking. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>PHP tutorial</b> <br/> Php is a very popular language for developing web applications altogether with HTML. This tutorial 
                        has been prepared for programmer who want learn basic of using php in web programming and some advanced concepts of php.<br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Python tutorial</b> <br/> Python is a high level programming language which is widely used by software developers and 
                        web developers. This tutorial will guide through basic concepts and advanced topics to programming in python. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>SQL tutorial</b> <br/> SQL is the most popular database programming language. It is used to create and modify the database 
                        and it can communicate with almost all the programming language. This tutorial gives a complete knowledge of sql database
                        programming. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>Android Programming tutorial</b> <br/> This tutorial has been prepared for developers who need to learn applications 
                        development in android. Android involves Java and if you have basic understanding of Java you can easily learn android.
                        This tutorial gives you a complete understanding of android development. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li> <br/>
                    <li>
                        <b>JavaFX tutorial</b> <br/> JavaFx is oracles technology for developing Graphical User Interface(GUI) applications in the 
                        Java technology. You can use Java and JavaFx to build rich content desktop and mobile applications. This tutorial gives you basic 
                        understanding of the Javafx tech. <br/>
                        <button type="button" style="background-color: lightskyblue"><font face="serif" size="+1">download</font></button>
                    </li>
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
