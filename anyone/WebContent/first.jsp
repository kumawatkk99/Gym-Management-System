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
		String ename=request.getParameter("ephone");
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
		pst=con.prepareStatement("insert into mem(name,email,phone,doj,ephone,rname,trainer) values(?,?,?,?,?,?,?)");
		
		pst.setString(1, name);
		pst.setString(2, email);
		pst.setString(3, phone);
		pst.setString(4, doj);
		pst.setString(5, ename);
		pst.setString(6, rname);
		pst.setString(7, trainer);
		pst.executeUpdate();
	
		%>
		
		<script>
			alert("Record Adddeddd");
		
		</script>
		
	<%	

	}

%>





<!DOCTYPE html>
<html lang="en">
<head>
<title>First Page</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
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
		
		<!-- <div class="row" style="margin: 25px 15px 8px 15px !important;">
			<div class="col-xs-12 header" style="height: 100px;  border: 5px 5px 5px 5px solid black;">
				<span style="font-size: 40px"><b>Gym Management System</b></span>
				
			</div> -->
		</div>
		<div class="row">
			<div class="col-xs-12"
				style="height: 600px; border-left: 30px solid white; border-right: 30px solid white; margin-left: 0px; margin-right: 0px">
				<span></span>
				
				
				<div class="col-sm-3"">
					<form method="post" action="#">
						
						<div align="left">
							<label class="form-control" style="background-color: red; color: white;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;">Members</label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="memberDetails.jsp" > Member Details</a></label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="package.jsp" >Package Details</a></label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="payment.jsp" >Payments</a></label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: red; color: white;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;">Trainer</label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="Trainer.jsp" >Trainer Details</a></label>
						</div></br>
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="Trainer.jsp" >Add NewTrainer</a></label>
						</div></br>		
						<div align="left">
							<label class="form-control" style="background-color: white; color: black;font-size: 18px; padding: 6px 10px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;"><a href="login.jsp" >Logout</a></label>
						</div></br>					
					
					<!--
					
						  <p style="background-color: red;
						  color: white;font-size: 18px;border-style: solid;
						  padding:6px 100px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;"><b>Members</b></p>
						  
						  <p style="background-color: white;
						  color: black;font-size: 18px;border-style: solid;border-width: 2px;
						  padding: 6px 50px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;"><a href="memberDetails.jsp" > Member Details</a></p>
						  
						  <p><a href="#" style="background-color: white;
						  color: black;font-size: 18px;border-style: solid;border-width: 2px;
						  padding: 6px 45px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;">Package Details</a></p>
						  
						  <p><a href="#" style="background-color: white;
						  color: black;font-size: 18px;border-style: solid;border-width: 2px;
						  padding: 6px 96px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;">Payments</a></p><br>
						  
						  <p style="background-color: red;
						  color: white;font-size: 18px;border-style: solid;
						  padding:6px 120px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;"><b>Trainer</b></p>
						  
						  <p><a href="#" style="background-color: white;
						  color: black;font-size: 18px;border-style: solid;border-width: 2px;
						  padding: 6px 60px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;">Trainer Details</a></p>
						  
						  <p><a href="#" style="background-color: white;
						  color: black; font-size: 18px; border-style: solid;border-width: 2px;
						  padding: 6px 42px 6px 10px;
						  text-align: left;
						  text-decoration: none;
						  display: inline-block;">Add New Trainer</a></p>
						  
						  
						-->
					</form>
						  			
						  
				
				</div>
				<div class="col-sm-7">	
					<form method="post" action="#">
						<div align="left">
							<label class="form-control" style="background-color: red; color: white;font-size: 18px; padding: 6px 0px 10px 6px;
										text-align: left; text-decoration: none;
										display: inline-block;">Register New Member</label>
						</div>
						<div align="left">
							<label class="form-label">Name</label> <input type="text"
								class="form-control" placeholder="Name" name="name"
								id="name" required>
						</div><br>
						<div align="left">
							<label class="form-label">Email</label> <input type="email"
								class="form-control" placeholder="Email" name="email"
								id="email" required>
						</div><br>
						<div align="left">
							<label class="form-label">Phone Number</label> <input type="text"
								class="form-control" placeholder="Phone Number" name="phone" id="phone"
								required>
						</div><br>
						<div align="left">
							<label class="form-label">Date of Joining</label><br>
							<input type="date" id="doj" name="doj" class="form-control" required>						
						</div><br>
						<!-- <div align="left">
							<label class="form-label">Batch</label><br>
								<select id="batch" name="batch">
								  <option value="">Batch</option>
								  <option value="mbatch">Morning Batch</option>
								  <option value="ebatch">Evening Batch</option>
								</select>
						</div><br> -->
						<div align="left">
							<label class="form-label">Emergency Contact Person</label> <input type="text"
								class="form-control" placeholder="Phone Number" name="ephone" id="ephone"
								required>
						</div><br>
						
						<div align="left">
							<label class="form-label">Relationship</label> <input type="text"
								class="form-control" placeholder="Name" name="rname"
								id="rname" required>
						</div><br>
						
						<div align="left">
							<label class="form-label">Trainer</label><br>
							<input type="text" class="form-control" placeholder="Trainer Name" id="trainer" name="trainer" required>						
						</div><br>
						
						<div align="center">
							<input type="submit" id="submit" value="submit" name="submit"
								class="btn btn-info">
							<input type="reset" id="reset" value="reset" name="reset" 
								class="btn btn-warning">
								
						</div>
						
						
					</form>

				</div>
				<div class="col-sm-1">			
				</div>
				
				
			</div>

		</div>

		



</body>
</html>
