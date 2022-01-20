<%@page import="com.cakeshop.dao.impl.UserDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inactive User</title>
<style>
*{
margin:0px;
padding:0px;
}
.header{
padding-top:24px;
background:#111;
color:white;
padding-bottom:24px;
}

.header a h3:hover{
background-color: red;
height:50px;
}

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav {
  height: 100%; /* Full-height: remove this if you want "auto" height */
  width: 325px; /* Set the width of the sidebar */
  position: fixed; /* Fixed Sidebar (stay in place on scroll) */
  z-index: 1; /* Stay on top */
  top: 50px; /* Stay at the top */
  left: 0;
  background-color: #111; /* Black */
  overflow-x: hidden; /* Disable horizontal scroll */
  padding-top: 50px;
}

.sidenav a {
  padding: 16px 16px 16px 18px;
  text-decoration: none;
  font-size: 20px;
  color:white;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 200px; /* Same as the width of the sidenav */
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}

body{
background-image:url('assets/background2.jpeg');
background-repeat:no-repeat;
background-size:cover;
}
label {
        display: inline-block;
        width: 155px;
        text-align: right;
        margin-left:-50px; ;
      }
.button {
  background-color:pink; 
  border: none;
  color: white;
  padding: 3px 8px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid pink;
  }
  
  .button1:hover {
  background-color:pink;
  color: white;
}
      
  #box{

  margin-top:150px;
  margin-left:500px;
  }    

</style>
</head>
<body>

<div class="header container-fluid">
      	<center><h2 style=color:darkBlack>Inactive User</h2></center>      	
   		
      </div>


<div class="sidenav">
  <a href="showUser.jsp">View All Users List</a>
  <a href="AddProduct.jsp">Add a New Product</a>
  <a href="UpdateProduct.jsp">Update Product</a>
  <a href="showCart.jsp">View Order Details</a>
  <a href="SalesDate.jsp">View Sales Details</a>
  <a href="Home.jsp" style="float:right;">LogOut</a>
</div>


<fieldset id="box">
<form action="Inactive" method="post">
Email Id : <input type="email" name="Email">
<button type="submit" class="button button1">Delete</button>
</form>
</fieldset>
</body>
</html>