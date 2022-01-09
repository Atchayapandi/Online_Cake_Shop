<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>add product</title>
<style>
#box{
width:350px;
margin-left:600px;
margin-top:250px;
}
body{
background-image:url('assets/Background.png');
background-repeat:no-repeat;
background-size:cover;

}
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>

</head>
<body>
<legend align="right">fieldset legend</legend>
<fieldset id="box"><center>
<form action="AddProduct" method="post">
<label for="cakeName">Cake_Name</label><input type="text" name="cakeName" pattern="[A-Za-z/s]" required><br><br>
<label for="cakeName">Cake_description</label><input type="text" name="cakeDescription" pattern="[A-Za-z/s]" required><br><br>
<label for="cakeName">Cake_price</label><input type="number" name="cakePrice" pattern="[0-9]" required><br><br>
<label for="cakeName">Category_name</label><input type="text" name="categoryName" pattern="[A-Za-z/s]" required><br><br>
<button type="submit" name="button">Add</button>
</form></center>
</fieldset>
</body>
</html>