<%@page import="java.sql.*"%>

<%  
		String email=request.getParameter("email");
		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		Class.forName("com.mysql.jdbc.Driver");
	//	try {
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/gym","root","110399");
	//	}catch(SQLException e) {
	//		e.printStackTrace();
	//	}
		pst=con.prepareStatement("delete from mem where email = ?");
		
		pst.setString(1, email);
		pst.executeUpdate();
			
		response.sendRedirect("memberDetails.jsp");	
		%>
		
		<script>
			alert("Record Deleted");
		
		</script>
		
		
	