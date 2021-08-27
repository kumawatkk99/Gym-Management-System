<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<HTML>
<head>
	<LINK href="styles.css" type="text/css" rel="stylesheet">
</head>
<body Class="SC" scroll="yes">



<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/forgym", "root", "110399");
						
						String query="select * from logintable";
						Statement st=con.createStatement();
						
						rs=st.executeQuery(query);
							
							while(rs.next())
							{
								String login_id=rs.getString("login_id");
								
						%>
						<tr>
							<td><%=rs.getString("login_id") %></td>
							<td><%=rs.getString("password") %></td>
							
							
							</tr>
						<%
						
							}
						%>
						

</BODY>
</HTML>

