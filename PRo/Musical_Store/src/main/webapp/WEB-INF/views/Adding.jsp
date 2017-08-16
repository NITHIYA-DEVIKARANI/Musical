<%@page import="com.nithiya.BackendMusical.Model.*" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adding Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	type="text/javascript"></script>
<script type="text/javascript" src="./resources/js/jquery.min.js"></script>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/jquery-ui.js"
	type="text/javascript"></script>
<link
	href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.9/themes/blitzer/jquery-ui.css"
	rel="stylesheet" type="text/css" />
<!-- dialog -->
<style type="text/css">
input[type=text], input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline;
	border: 1px solid #ccc;
}

button {
	background-color: #e7e7e7;
	color: black;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #e7e7e7;
	color: black;
}

/* .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
} */
.container1 {
	width: 500px;
	height: 350px;
}

/* span.psw {
    float: right;
    padding-top: 16px;
} */

/* Change styles for span and cancel button on extra small screens */
/* @media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
} */
#addcat {
	position: relative;
	left: 500px;
	width: 500px;
	height: 700px;
	/* display:none; */
}

#addsup {
	position: relative;
	left: 500px;
	width: 500px;
	height: 700px;
	/* display:none; */
}

#addpro {
	position: relative;
	left: 500px;
	width: 500px;
	height: 700px;

	/* display:none; */
}

#pan {
	position: absolute;
	left: 10px;
	top:250px;
	display: inline;
	width: 300px;
	heigth: 400px;
	border: 3px solid #05396B;
	padding: 250px 150px;
}

#chead {
	color: black;
	position: absolute;
	top: 20px;
	left: 0px;
}

#shead {
	color: black;
	position: absolute;
	top: 130px;
	left: 0px;
}

#phead {
	color: black;
	position: absolute;
	top: 220px;
	left: 0px;
}

#cbuttonadd {
	position: absolute;
	top: 80px;
	left: 0px;
}

#sbuttonadd {
	position: absolute;
	top: 185px;
	left: 0px;
}

#pbuttonadd {
	position: absolute;
	top: 280px;
	left: 0px;
}

/* #cbuttonclose
{
position:absolute;
top:140px;
left:0px;
} */

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
	background-color: #fefefe;
	margin: auto;
	padding: 20px;
	border: 1px solid #888;
	width: 80%;
}

/* The Close Button */
.close {
	color: #aaaaaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
</style>
<script type="text/javascript">
function myFunction() {
	if (window.confirm('Are you Sure?'))
	{
	    alert('Your Data Successfully');
	}
	else
	{
	    die();
	}
}
$(document).ready(function() {
    $("#addcat").hide();
    $("#addsup").hide();
    $("#addpro").hide();

    $("#cbuttonadd").click(function() {
         $("#addcat").show();
           $("#addsup").hide();
           $("#addpro").hide();
           
    });
    
    $("#sbuttonadd").click(function() {
       $("#addcat").hide();
         $("#addsup").show();
         $("#addpro").hide();
  });
    
    $("#pbuttonadd").click(function() {
       $("#addcat").hide();
         $("#addsup").hide();
         $("#addpro").show();
  });
    

});
</script>
<%@include file="header.jsp"  %>
</head>
<body>
<div>
<a href="supplierList">Supplier</a>
<a href="categoryList">Category</a>
<a href="productList">Product</a>
<div id="pan" class="w3-container w3-white">
		<h1 id="chead">Category</h1>
		<button id="cbuttonadd">Add</button>
		<br> <br>
		<h1 id="shead">Supplier</h1>
		<button id="sbuttonadd">Add</button>
		<br> <br>
		<h1 id="phead">Product</h1>
		<button id="pbuttonadd">Add</button>
	</div>
	<div id="addcat">
		<form id="myform" action="category">
			<h2>Add Category</h2>
			<div class="container1">
				<label><b>Category Id</b></label> 
				<input type="text" name="cId" value="" style="width: 350px; display: block;"> 
				<label><b>Category Name</b></label> 
				<input type="text" name="cn" value="" style="width: 350px; display: block;"> 
				<!-- <input type="submit" value="Add">  -->
				 <input type="submit" value="Add" class="btn btn-primary btn-md" onclick="myFunction();">
				<input type="submit" value="Cancel" class="btn btn-primary btn-md">
			</div>
		</form>
	</div>
	<div id="addsup">
		<h2>Add Supplier</h2>
		<form action="supplier" id="form_purge" name="form_purge">
			<div class="container">
				<label><b>Supplier Id</b></label> 
				<input type="text" name="sId" value="" style="width: 350px; display: block;"> 
				<label><b>Supplier Name</b></label> 
				<input type="text" name="sn" value="" style="width: 350px; display: block;"> 
				<!-- <input type="submit" value="Add">  -->
				 <input type="submit" value="Add" class="btn btn-primary btn-md" onclick="myFunction();">
				<input type="submit" value="Cancel" class="btn btn-primary btn-md">
			</div>
	</form>
	</div>
	<%-- <div id="addpro">
		<h2>Add Product</h2>
		<form action="product" method="post" enctype="multipart/form-data">

			<div class="container">
				<label><b>Product Id</b></label> 
				<input type="text" name="pId" value="" style="width: 350px; display: block;"> 
				<label><b>Product Name</b></label> 
				<input type="text" name="pn" value="" style="width: 350px; display: block;">
			    <label><b>Product Category</b></label> 
			    <select style="width: 350px; display: block;" name="pc">
					<option>Select Category</option>
						<%
                 		List<CategoryModel> clist=(List<CategoryModel>) request.getAttribute("clist");
                			for(CategoryModel c : clist){
                    			out.println("<option value='"+ c.getCategoryId() +"'>"+ c.getCategoryName() + "</option>");
                			}
                		%>
				</select> 
				<br> 
				<label><b>Supplier Category</b></label> 
				<select style="width: 350px; display: block;" name="psc">
					<option>Select Supplier</option>
					 <%
                 		List<SupplierModel> slist=(List<SupplierModel>) request.getAttribute("slist");
                			for(SupplierModel s : slist){
                   				 out.println("<option value='"+ s.getSupplierId() +"'>"+ s.getSupplierName() + "</option>");
                			}
                
            		 %>
				</select> 
				<br> 
				<label><b>Product Price</b></label> 
				<input type="text" name="pp" value="" style="width: 350px; display: block;"> 
				<label><b>Product Image</b></label> 
				<input type="file" name="file" value="fileupload" style="width: 350px; display: block;"> 
				<!-- <input type="submit" value="Add">  -->
				 <input type="submit" value="Add" class="btn btn-primary btn-md" onclick="myFunction();">
				<input type="submit"  value="Cancel" class="btn btn-primary btn-md">
			</div>

		</form>
	</div> --%>
</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="blah">
<%@include file="footer.jsp"  %>
 </div>
</body>

</html>
