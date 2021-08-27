<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%  
	if(request.getParameter("submit")!=null)
	{
		Connection con = null;
		try
		{	
			String user=request.getParameter("username");
			String pass=request.getParameter("password");
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gym", "root", "110399");
			
			Statement st=con.createStatement();
			ResultSet rs;
			rs=st.executeQuery("select * from login where username='" + user + "' and password='" + pass + "'");
			if(rs.next())
			{
				response.sendRedirect("first.jsp");	
			}
			else
			{
				response.sendRedirect("login.jsp");	
			}
		}
		
		catch(Exception e)
		{
			response.sendRedirect("login.jsp");
			e.printStackTrace();
		}
		finally
		
		{
			if(con != null)
			{
				con.close();
			}
		}
	}
	else 
	{
		response.sendRedirect("login.jsp");	
	}
		
			
%>