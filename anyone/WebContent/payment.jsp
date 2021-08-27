<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%  
	if(request.getParameter("submit")!=null)
	{
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String doj=request.getParameter("doj");
		String amount=request.getParameter("amount");
		String payment_type=request.getParameter("payment_type");
		String tname=request.getParameter("tname");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
	//	try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym","root","110399");
	//	}catch(SQLException e) {
	//		e.printStackTrace();
	//	}
		pst=con.prepareStatement("insert into pay(name,email,doj,amount,payment_type,tname) values(?,?,?,?,?,?)");
		
		pst.setString(1, name);
		pst.setString(2, email);
		pst.setString(3, doj);
		pst.setString(4, amount);
		pst.setString(5, payment_type);
		pst.setString(6, tname);
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
	<title>Members details</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
</head>
<body>
<div class="jumbotron" style="background: url('2.jpg') no-repeat;background-size: cover;height: 300px;"></div>	

 <div class="container">
<div class="card">
     <div class="card-body" style="background-color:#3498DB;color:#ffffff;">
         <div class="row">
             <div class="col-md-1">
    <a href="first.jsp" class="btn btn-light ">Go Back</a>
             </div>
             <div class="col-md-3"><h3> Payment Details</h3></div>
             <div class="col-md-8">
         <form class="form-group" action="#" method="post">
          <div class="row">
              
                 </form></div></div></div>
     <div class="card-body" style="background-color:#3498DB;color:#ffffff;">
         <div class="card-body">
    <table class="table table-hover">
        <thead>
     <tr>
            <th>Name </th>
            <th>Email</th>
            <th>Date</th>
            <th>Amount</th>
            <th>Payment Type</th>
            <th>Submitted By</th>
            
           <!-- <th>Customer Name</th>-->
         
        </tr>   
        </thead>
        
        <tbody>
        	<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "110399");
						
						String query="select * from pay";
						Statement st=con.createStatement();
						
						rs=st.executeQuery(query);
							
							while(rs.next())
							{
								String email=rs.getString("idpayment");
								
						%>
						<tr>
							
							<td><%=rs.getString("name") %></td>
							<td><%=rs.getString("email") %></td>
							<td><%=rs.getString("doj") %></td>
							<td><%=rs.getString("amount") %></td>
							<td><%=rs.getString("payment_type") %></td>
							<td><%=rs.getString("tname") %></td>
						</tr>
						<%
						
							}
						%>
         
        </tbody>
    </table>
    <div class="card-body" style="background-color:#3498DB;color:FFFFFF;">
                <h3>Make new Payment</h3>
                </div> 
                <div class="card-body"></div>
                <form class="form-group" action="payment.jsp" method="post">
                	 <label>Customer Name</label>
					<input type="text" name="name" id="name" class="form-control" required>
	                <label>Customer Email</label>
					<input type="email" name="email" id="email" class="form-control" required>
					<label>Date</label> 
					<input type="date" id="doj" name="doj" class="form-control" required>
               		<label>Amount</label>
                    <input type="text" name="amount" id="amount" class="form-control" required>
                    <label>Payment Type</label>
                    <input type="text" name="payment_type" id="payment_type" class="form-control"> 
                    <label>Submitted By</label>
                    <input type="text" name="tname" id="tname" class="form-control" required><br>
					<input type="submit" class="btn btn-primary" name="submit" id="submit" value="PAY">
				</form>
     </div>
    </div>
    </div>
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </div>
    </body>
</html>