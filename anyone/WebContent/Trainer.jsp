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
		
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
	//	try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym","root","110399");
	//	}catch(SQLException e) {
	//		e.printStackTrace();
	//	}
		pst=con.prepareStatement("insert into trainer(name,email,phone,doj) values(?,?,?,?)");
		
		pst.setString(1, name);
		pst.setString(2, email);
		pst.setString(3, phone);
		pst.setString(4, doj);
		
		pst.executeUpdate();
	
		%>
		
		<script>
			alert("Record Adddeddd");
		
		</script>
		
	<%	

	}

%>
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
	<title>Trainer</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	 integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
	<div class="jumbotron" style="background: url('gymimage1.jpeg') no-repeat;background-size: cover;height: 300px;"></div>	
	
	 <div class="container">
		<div class="card">
			<div class="card-body"
				style="background-color: #3498DB; color: #ffffff;">
				<div class="row">
					<div class="col-md-1">
						<a href="first.jsp" class="btn btn-light ">Go Back</a>
					</div>
					<div class="col-md-4">
						<h3>Trainer Information</h3>
					</div>
					<div class="col-md-7">
						<form class="form-group" action="trainer.jsp" method="post">
							<div class="row"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="card-body"
				style="background-color: #3498DB; color: #ffffff;">
				<div class="card-body">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>Name</th>
								<th>Email</th>
								<th>Phone</th>
								<th>Phone</th>

							</tr>
						</thead>
						<tbody>
							<%
								Connection con;
							PreparedStatement pst;
							ResultSet rs;
							Class.forName("com.mysql.jdbc.Driver");
							con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "110399");

							String query = "select * from trainer";
							Statement st = con.createStatement();

							rs = st.executeQuery(query);

							while (rs.next()) {
								String email = rs.getString("email");
							%>
							<tr>

								<td><%=rs.getString("name")%></td>
								<td><%=rs.getString("email")%></td>
								<td><%=rs.getString("phone")%></td>
								<td><%=rs.getString("doj")%></td>
								
							</tr>
							<%
								}
							%>

						</tbody>
					</table>
					<div class="card-body"
						style="background-color: #3498DB; color: FFFFFF;">
						<h3>Register new Trainer</h3>
					</div>
					
					<form class="form-group" action="Trainer.jsp" method="post">
						
						<label>Name</label> <input type="text" name="name" id="name" class="form-control" required>
						<label>Email</label> <input type="email" name="email" id="email" class="form-control" required>
						<label>Phone</label> <input type="text" name="phone" id="phone" class="form-control" required>
						<label>Date of Joining</label> <input type="date" id="doj" name="doj" class="form-control" required><br>						
						
						<input type="submit" class="btn btn-primary" name="submit" id="submit" value="submit">
					</form>
				</div>
			</div>
		</div>


		
	</div>
</body>
</html>