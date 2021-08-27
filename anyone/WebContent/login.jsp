<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

		


    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

	<style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 40%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}
.column2 {
  float: left;
 
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}



button {   
       background-color: #4CAF50;   
       width: 100%;  
        color: orange;   
        padding: 15px;   
        margin: 10px 0px;   
        border: none;   
        cursor: pointer;   
         }   
 form {   
        border: 3px solid #f1f1f1;   
    }   
 input[type=text], input[type=password] {   
        width: 100%;   
        margin: 8px 0;  
        padding: 12px 20px;   
        display: inline-block;   
        border: 2px solid green;   
        box-sizing: border-box;   
    }  
 button:hover {   
        opacity: 0.7;   
    }   
  .cancelbtn {   
        width: auto;   
        padding: 10px 18px;  
        margin: 10px 5px;  
    }   
        
     
 .container {   
        padding: 25px;   
        background-color: lightblue;  



</style>
</head>
<body>
	<div class="row">
	  <div class="column1" style="background: url('cardback.jpg') no-repeat;background-size: cover;height: 670px;">
	     <div class="column">
	     	
	     	<div class="column2">
	     	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-12"
				style="height: 600px; border-left: 5px solid black; border-right: 5px solid black;border-bottom: 5px solid black;border-top: 5px solid black; margin-left: 0px; margin-right: 0px">
				<span></span>


				<div class="col-sm-3"
					style="background: url('2.jpg') no-repeat; background-size: cover; height: 300px;">

				</div>
				<div class="col-sm-6">
					
					<form action="process.jsp" method="post">
						<div class="container">
							<label>Username : </label>
							 <input type="text"placeholder="Enter Username" name="username" id="username" required> 
							 <label>Password: </label> <input type="password" placeholder="Enter Password" id="password" name="password" required>
							<div align="center">
							<input type="submit" id="submit" value="Login" name="submit"
								class="btn btn-info">
								</div>
							
						</div>
					</form>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
</div>
	     </div>
	    <div class="column"></div>
	    
	 
	   
	  </div>
	 
	 </div>
</body>
</html>