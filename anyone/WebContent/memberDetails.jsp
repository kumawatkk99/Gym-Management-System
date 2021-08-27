<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>
	<style type="text/css">
		* {
		  box-sizing: border-box;
		}
		.column {
		  float: left;
		  width: 100%;
		  padding: 10px;
		  height: 200px; 
		}
		
		.column1 {
		  float: left;
		  width: 10%;
		  padding: 10px;
		  height: 600px;
		}
		.column2 {
		  float: left;
		  width: 80%;
		  padding: 10px;
		  height: 100%;
		}
		.column3 {
		  float: left;
		  width: 10%;
		  padding: 10px;
		  height: 600px; 
		}
		.row:after {
		  content: "";
		  display: table;
		  clear: both;
		}
		
		table {
  			border-collapse: collapse;
  			width: 100%;
  			color:white;
		}

		th {
		  padding: 8px;
		  text-align: left;
		  text-font: white;
		  border-top: 3px solid #aaa;
		}
		td {
		  padding: 8px;
		  text-align: left;
		  border-top: 2px solid #bbb;
		}
	</style>
</head>
<body>
	<div class="row">
	  <div class="column" style="background: url('2.jpg') no-repeat;background-size: cover;height: 300px;">
	    
	   <!-- <img alt="logo" src="gymimage1.jpeg" height="200" width="1000"> --> 
	   
	  </div>
	</div>
	<div class="row">
	  <div class="column1" style="background-color:white;">
	  <!--   <h2>Column 1</h2>
	    <p>Some text..</p> -->
	  </div>
	  <div class="column2" style="background-color:#3498DB;">
	   <span><button type="button"><a href="first.jsp">Go back!</a></button> <h2 style="color:white;">Members Details</h2></span>
	    <div class="panel-body">
	    <input type="button" value="Refresh Page" onClick="refresh">
				<table id="tbl-student" class="table table-responsive table-bordered" >
				<thead>
					<tr>
						<th>Name</th>
						<th>Email Id</th>
						<th>Phone Number</th>
						<th>Date of Joining</th>
						<th>Emergency Contact</th>
						<th>Relationship</th>
						<th>Trainer Name</th>
						<th>Edit/Delete</th>
						
					</tr>
				</thead>
					<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "110399");
						
						String query="select * from mem";
						Statement st=con.createStatement();
						
						rs=st.executeQuery(query);
							
							while(rs.next())
							{
								String email=rs.getString("email");
								
						%>
						<tr>
							
							<td><%=rs.getString("name") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("phone") %></td>
							<td><%=rs.getString("doj") %></td>
							<td><%=rs.getString("ephone") %></td>
							<td><%=rs.getString("rname") %></td>
							<td><%=rs.getString("trainer") %></td>
							<td><a href="memberDetailsUpdate.jsp?email=<%=email%>">Edit</a>/<a href="memberDetailsDelete.jsp?email=<%=email%>">Delete</a></td>
						</tr>
						<%
						
							}
						%>
						
				</table>
			</div>
  	  </div>
  	  <div class="column3" style="background-color:white;">
    	<!-- <h2>Column 3</h2>
    	<p>Some text..</p> -->
  	  </div>
	</div>
</body>
</html>