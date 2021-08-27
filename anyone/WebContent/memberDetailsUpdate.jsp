<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%  
	if(request.getParameter("submit")!=null)
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String doj=request.getParameter("doj");
		String ephone=request.getParameter("ephone");
		String rname=request.getParameter("rname");
		String trainer=request.getParameter("trainer");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
	//	try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym","root","110399");
	//	}catch(SQLException e) {
	//		e.printStackTrace();
	//	}
		pst=con.prepareStatement("update mem set name = ?,email = ?,phone = ?,doj = ?,ephone = ?,rname = ?,trainer = ? where email = ?");
		
		pst.setString(1, name);
		pst.setString(2, email);
		pst.setString(3, phone);
		pst.setString(4, doj);
		pst.setString(5, ephone);
		pst.setString(6, rname);
		pst.setString(7, trainer);
		pst.setString(8, email);
		
		pst.executeUpdate();
	
		%>
		
		<script>
			alert("Record Updated");
		
		</script>
		
	<%	

	}

%>
  
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jsp Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<style>
.row {
	margin-bottom: 6px;
}

.col-xs-12 {
	background-color: white
}

.col-xs-12 {
	text-align: center;
	padding-top: 25px;
}

.col-xs-12.footer {
	text-align: center;
	padding-top: 5px;
}


</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row" style="margin: 25px 15px 8px 15px !important;">
			<div class="col-xs-12 header" style="background: url('2.jpg') no-repeat;background-size: cover;height: 300px;">	
			</div>
		</div>
		
		</div>
		<div class="row">
			<div class="col-xs-12"
				style="height: 600px; border-left: 30px solid white; border-right: 30px solid white; margin-left: 0px; margin-right: 0px">
				<span></span>
				
				
				<div class="col-sm-3""></div>
				<div class="col-sm-6">	
					<form method="post" action="#">
						<div align="left">
							<label class="form-control" style="background-color: red; color: white;font-size: 18px; padding: 6px 0px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><button type="button"><a href="memberDetails.jsp">Go back!</a></button> Update Member Details</label>
						</div>
						<br>

						<%
					Connection con;
					PreparedStatement pst;
					ResultSet rs;
				
					Class.forName("com.mysql.jdbc.Driver");
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym","root","110399");
				
					String email=request.getParameter("email");
					pst=con.prepareStatement("select * from mem where email = ?");
					pst.setString(1,email);
					rs=pst.executeQuery();
					
					while(rs.next())
					{
						
					
				%>
						
						
						<div align="left">
							<label class="form-label">Name</label> <input type="text"
								class="form-control" placeholder="Name" name="name"
								value="<%= rs.getString("name")%>" id="name" required>
						</div><br>
						<div align="left">
							<label class="form-label">Email</label> <input type="email"
								class="form-control" placeholder="Email" name="email"
								value="<%= rs.getString("email")%>" id="email" required>
						</div><br>
						<div align="left">
							<label class="form-label">Phone Number</label> <input type="text"
								class="form-control" placeholder="Phone Number" name="phone" 
								value="<%= rs.getString("phone")%>" id="phone"
								required>
						</div><br>
						<div align="left">
							<label class="form-label">Date of Joining</label><br>
							<input type="date" id="doj" name="doj" value="<%= rs.getString("doj")%>" required>						
						</div><br>
						<div align="left">
							<label class="form-label">Emergency Contact Person</label> <input type="text"
								class="form-control" placeholder="Phone Number" name="ephone" 
								value="<%= rs.getString("ephone")%>" id="ephone"
								required>
						</div><br>
						<div align="left">
							<label class="form-label">Relationship</label> <input type="text"
								class="form-control" placeholder="Relation" name="rname"
								value="<%= rs.getString("rname")%>" id="rname" required>
						</div><br>
						<div align="left">
							<label class="form-label">Trainer</label><br>
							<input type="text" class="form-control" placeholder="Trainer Name" id="trainer" name="trainer" value="<%= rs.getString("trainer")%>" required>						
						</div><br>
						
						<%
						}
					%>
						
						
						<div align="center">
							<input type="submit" id="submit" value="submit" name="submit"
								class="btn btn-info">
							<input type="reset" id="reset" value="reset" name="reset" 
								class="btn btn-warning">
								
						</div>
						
						
					</form>

				</div>
				<div class="col-sm-3"></div>
				
				
			</div>

		</div>

		

	</div>
	

</body>
</html>