<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Report</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
<style>
table {
    border-collapse: collapse;
    border: 1px solid black;
    width: 100%;
}

th, td {
    padding: 8px;
    text-align: left;
    border: 1px solid black;
}
th{
background-color: #F08080 ;
}
td{
    background-color: #fff;
}
</style>
  </head>
  
  <body>
      <form method="get" id="myForm" onclick="window.print()">
  <br><br><center>
<h1>Gymnasium Report</h1><br/><br/>
<table align="center">
<tr><th>First Name</th><th>Last Name</th><th>Gender</th><th>Contact no</th><th>Email</th><th>Slot</th><th>Package</th><th>Price</th><th>Instructor</th></tr>
<%
int sumcount=0;
Statement st;
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String gender = request.getParameter("gender");
String contact = request.getParameter("contact");
String email = request.getParameter("email");
String slot = request.getParameter("slot");
String packages = request.getParameter("packages");
String price = request.getParameter("price");
String instructor = request.getParameter("instructor");
try{
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gymnasium", "sanjana", "123456");
    String query = "select * from final_register";
    st = con.createStatement();
    ResultSet rs = st.executeQuery(query);
%>
<%
    while(rs.next()){
%>
<tr>
<td><%=rs.getString("fname")%></td>
<td><%=rs.getString("lname")%></td>
<td><%=rs.getString("gender")%></td>
<td><%=rs.getString("contact")%></td>
<td><%=rs.getString("email")%></td>
<td><%=rs.getString("slot")%></td>
<td><%=rs.getString("packages")%></td>
<td><%=rs.getString("price")%></td>
<td><%=rs.getString("instructor")%></td>
</tr>

<%
}
%>
<%
}
catch(Exception e1){
e1.printStackTrace();
}
%>
</table><br><br><br>
</center><br/><br/>
</form>	
</body>
</html>
