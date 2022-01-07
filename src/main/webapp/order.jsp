<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import=" com.cakeshop.dao.impl.*" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order here</title>
<style>
body{
background-image:url('assets/cake2.jpg');
background-repeat:no-repeat;
background-size:cover;

}

#box {
	width: 350px;
	margin-left: 0px;
	margin-right:800px;
	margin-top: 150px;
}
.topnav {
  background-color: Gray;
  overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: gray;
  color: white;
}

</style>
</head>
<body>
<div class="topnav" >
  <a class="active" href="Login.jsp">Login</a>
  <a href="register.jsp">Register</a>
  <a href="MyOrders.jsp">My Orders</a>  
  <a href="categories.jsp">Categories</a> 
  <a href="SearchPrice.jsp">Price Wise Search</a>
   <a href="ShowRating.jsp">Ratings</a>
   <a href="Contact.jsp">Contact</a>
   <a href="AboutUs.jsp">About</a>  
   <a href="Home.jsp">LogOut</a>
   
   <%double wallet=(double)session.getAttribute("wallbal"); %>
<h3><i> Wallet Amount : <%=wallet %></i></h3>
   
   
</div>

	<%int productId=Integer.parseInt(request.getParameter("cakeId")); 
	
	session.setAttribute("cake_id",productId);
	
	String cname=request.getParameter("cakeName");
	
	session.setAttribute("cakename", cname);
	
	
	ProductDaoImpl productDao =new ProductDaoImpl();
	ResultSet rs=productDao.findPrice(productId);
	
	String userName=(String)session.getAttribute("CurrentUser1");	
	
	UserDaoImpl userDao =new UserDaoImpl();    
	int userId=userDao.findUserId(userName);
	session.setAttribute("UserId", userId);
	%>	
	
	<center>	
		<fieldset id="box">
			<form action="Order" method="post">
			<%if(rs.next()){
			%>
			<h3><%=rs.getString(2) %></h3>
			<h1><%double price=rs.getDouble(4);%></h1>
			<h3>Price :<%= price%></h3><br>	
			<%session.setAttribute("Price", price); %>		
				Quantity:<input type="number" name="quantity" pattern="[0-9]{2}"><br><br>							
				     orderDate : <input type="date" id="datefield"  name="orderDate" ><br><br>				
				<button type="submit" id="button">Buy</button>
				<%} %>
			</form>
		</fieldset>
	</center>
</body>
<script type="text/javascript">
var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; 
var yyyy = today.getFullYear();
if(dd<10){
  dd='0'+dd
} 
if(mm<10){
  mm='0'+mm
} 
today = yyyy+'-'+mm+'-'+dd;
document.getElementById("datefield").setAttribute("min", today);
</script>

</html>