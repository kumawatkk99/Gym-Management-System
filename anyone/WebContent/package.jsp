<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
<head>
	<title>Package</title>
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" 
	 integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
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
             <div class="col-md-3"><h3>Package Details</h3></div>
             <div class="col-md-8">
         <form class="form-group" action="#" method="post">
          <div class="row">
              
                 </form></div></div></div>
     <div class="card-body" style="background-color:#3498DB;color:#ffffff;">
         <div class="card-body">
    <table class="table table-hover">
        <thead>
     <tr>
            <th>Package ID </th>
            <th>Package Name</th>
         	<th>Amounts</th>
         	<th>Duration</th>
         
        </tr>   
        </thead>
        <tbody>
        	<%
						Connection con;
						PreparedStatement pst;
						ResultSet rs;
						Class.forName("com.mysql.jdbc.Driver");
						con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "110399");
						
						String query="select * from pack";
						Statement st=con.createStatement();
						
						rs=st.executeQuery(query);
							
							while(rs.next())
							{
								String email=rs.getString("idpack");
								
						%>
						<tr>
							<td><%=rs.getString("idpack") %></td>
							<td><%=rs.getString("pack_name") %></td>
							<td><%=rs.getString("amount") %></td>
							<td><%=rs.getString("Duration") %></td>
							
						</tr>
						<%
						
							}
						%>
        
        	<tr>
         	<th></th>
            <th></th>
         	<th></th>
         	</tr>
        </tbody>
    </table>
    
     </div>
    </div>
    </div>
    
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    </div>
    </body>
</html>