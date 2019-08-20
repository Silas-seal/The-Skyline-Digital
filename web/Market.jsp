<%-- 
    Document   : Market
    Created on : Dec 14, 2018, 2:39:55 AM
    Author     : THE SKYLINE DIGITAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>The Skyline Digital || Marketing</title>
    </head>
    <body bgcolor="navy">
        
        <div style="background-color: aliceblue"> <img src="lorgo.png" height="150" width="678.9" alt="logo.png"/></div> <P/>
        <%--menu table horizontally here --%>
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
        
        <div style="background-color: azure"><font face="Times new roman" size="+2" color="darkred">Marketing  </font> <br/>
            
            <font face="Constantia" size="+0.2" color="black">Here you can browse through our goods and buy an item of your desire and also
            you can click <a href=""><b><i>here</i></b></a> and sell your goods and services with us online. Purchase online and we deliver for free,
        No shipping fees needed.</div> <p/>
        <div style="background-color: white; width: 100%; overflow: hidden">
            <table border="0" CellSpacing="7" CellPadding="7" bgcolor="">
                <tr> <td>
                <img src="Products/Mobile_a.jpg" height="180" width="180" alt="mobile"/><br/>
                <font face="serif" size="+0" color="black">Samsung Galaxy S8 Plus Pro<br/> | 21MP | 6GB Ram | 64GB Rom |<br/> 1.57GZ | 
                <b>UGX.3,110,000</b></font> <br/>
                <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Samsung Galaxy S8 Plus Pro"/>
                    <input type="hidden" name="price" value="3110000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form> </td>
                   <td>
                <img src="Products/camera_a.jpg" height="180" width="180" alt="camera"/> <br/>
                <font face="serif" size="+0" color="black">CTV Security camera <br/> | 20Mp | 1082*975 Resolution ||<br/> <b>UGX.420,000</b></font> <br/>
                <form action="Buy" method="post">
                    <input type="hidden" name="item" value="CTV security camera"/>
                    <input type="hidden" name="price" value="420000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                   </td>
                    <td>
                        <img src="Products/laptop_a.jpg" height="180" width="180" alt="laptop"/> <br/>
                        <font face="serif" size="+0" color="black">Zed Air Laptop | 500GB <br/> |3GB Ram | 2.4GZ Speed | <br/> Intel Core v4 Processor<br/>
                        <b>UGX.1,230,000</b> </font>
                        <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Zed Air Laptop"/>
                    <input type="hidden" name="price" value="1230000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                    </td>
                    <td>
                        <img src="Products/Speaker_a.jpg" height="180" width="180" alt="laptop"/> <br/>
                        <font face="serif" size="+0" color="black">Yamaha Professional Amplifier <br/>| Mixer bands | Equaliser Pro <br/>
                        <b>UGX.2,170,000</b> </font> <br/>
                        <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Yamaha professional Amplifier"/>
                    <input type="hidden" name="price" value="2170000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                    </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/Mobile_b.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Itel INote Enterprise I <br/>| 13MP | 1GB Ram | 16GB Rom | <br/>
                    UGX.472,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Itel INote Enterprise I"/>
                    <input type="hidden" name="price" value="472000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/laptop_b.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Dell Aspire Core v1.34 <br/>| 2.4GZ | 2GB Ram | 500GB Rom | <br/>
                    UGX.1,020,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Dell Aspire Core v1.34"/>
                    <input type="hidden" name="price" value="1020000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                   <img src="Products/camera_b.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Canon IXUS digital camera <br/>| 20MP | x8 Zoom | Professional Photos | <br/>
                    UGX.524,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Canon IXUS digital camera"/>
                    <input type="hidden" name="price" value="524000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Speaker_b.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Beats HeadPhones prime <br/>| Super Bass Bluster | High quality sound | <br/>
                    UGX.80,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Beats HeadPhones prime"/>
                    <input type="hidden" name="price" value="80000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/Speaker_c.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Sayona Sub-Woofer <br/>| 7000W Power | MegaBase | Brilliant tines | <br/>
                    UGX.235,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Sayona Sub-Woofer"/>
                    <input type="hidden" name="price" value="235000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/camera_c.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Canon CyberShot Pro Camera <br/>| 24MP | x24 zoom | Quality lab Photos | <br/>
                    UGX.1,472,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Canon CyberShot Pro Camera"/>
                    <input type="hidden" name="price" value="1472000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Mobile_c.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Infinix Hot 5 <br/>| 13MP | 2GB Ram | 16GB Rom | <br/>
                    UGX.528,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Infinix Hot 5"/>
                    <input type="hidden" name="price" value="528000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/laptop_c.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">HP Pro book Touch Screen <br/>| 2.4GZ | 4GB Ram | 1TB Rom | <br/>
                    UGX.3,972,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="HP Pro book Touch Screen"/>
                    <input type="hidden" name="price" value="3972000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/camera_d.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Nikon Matrix v412 <br/>| 31MP | x16 zoom | Extra Vibrance | <br/>
                    UGX.1,134,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Nikon Matrix v412"/>
                    <input type="hidden" name="price" value="1134000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/laptop_d.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">HP Pavilion Touch Screen <br/>| 3.7GZ | 8GB Ram | 1TB Rom | <br/>
                    UGX.7,870,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="HP Pavilion Touch Screen"/>
                    <input type="hidden" name="price" value="7870000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Speaker_d.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">DJack Sub-Hoofer <br/>| 5000W Power | 3 top beats | Super Bass Blast | <br/>
                    UGX.180,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="DJack Sub-Hoofer"/>
                    <input type="hidden" name="price" value="180000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Mobile_d.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Tecno Camon Cx <br/>| 16MP | 2GB Ram | 16GB Rom | <br/>
                    UGX.721,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Tecno Canon Cx"/>
                    <input type="hidden" name="price" value="721000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/Mobile_e.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Tecno Cx SmartPhone <br/>| 20MP | 2GB Ram | 16GB Rom | <br/>
                    UGX.842,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Tecno Cx SmartPhone"/>
                    <input type="hidden" name="price" value="842000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Mobile_f.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Infinix Hot 5 Plus <br/>| 13MP | 4GB Ram | 32GB Rom | <br/>
                    UGX.1,262,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Infinix Hot 5 Plus"/>
                    <input type="hidden" name="price" value="1262000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/laptop_e.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Acer Aspire core S53 <br/>| 1.7GZ | 2GB Ram | 500GB Rom | <br/>
                    UGX.840,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Acer Aspire core S53"/>
                    <input type="hidden" name="price" value="840000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Speaker_e.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Sayona SHT 485 <br/>| 1200W Power | Megabass | Amazing sound | <br/>
                    UGX.510,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Sayona SHT 485"/>
                    <input type="hidden" name="price" value="510000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/laptop_f.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Lenovo IdealPad Laptop <br/>| 2.4GZ | 4GB Ram | 500GB Rom | <br/>
                    UGX.1,340,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Lenovo IdealPad Laptop"/>
                    <input type="hidden" name="price" value="1340000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Mobile_g.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Samsung Gaaxy A6 Plus <br/>| 13MP | 4GB Ram | 32GB Rom | <br/>
                    UGX.2,147,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Samsung Galaxy A6 Plus"/>
                    <input type="hidden" name="price" value="2147000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Mobile_i.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Apple SmartPhone mac S21J <br/>| 13MP | 2GB Ram | 16GB Rom | <br/>
                    UGX.1,369,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Apple SmartPhone Mac S21J"/>
                    <input type="hidden" name="price" value="1369000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
                <td>
                    <img src="Products/Speaker_f.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">UBL Professional Speaker <br/>| Great Sound for Party makers | Excellent music | <br/>
                    UGX.950,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="UBL Professional Speaker"/>
                    <input type="hidden" name="price" value="950000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            
            <tr>
                <td>
                    <img src="Products/Mobile_h.jpg" height="180" width="180" alt="Mobile"/> <br/>
                    <font face="serif" size="+0" color="black">Samsung Galaxy J2 Prime <br/>| 13MP | 1GB Ram | 16GB Rom | <br/>
                    UGX.510,000 </font> <br/>
                    <form action="Buy" method="post">
                    <input type="hidden" name="item" value="Samsung Galaxy J2 Prime"/>
                    <input type="hidden" name="price" value="510000"/>
                    <button type="submit" style="background-color: lightblue"><font face="Bell MT" size="+1" color="black">Buy Now</button> 
                    </form>
                </td>
            </tr>
            </table>
            
            
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
