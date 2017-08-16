<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/bootstrap" />
<spring:url var="image" value="/resources/image" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>SIGN UP</title>
    <link href="./resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <link href="/bootstrap/css/docs.css" rel="stylesheet">    
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="/bootstrap/bootstrap-social.css" rel="stylesheet" >
    <link href="/bootstrap/bootstrap.min.css" rel="stylesheet">
  
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.blah {
  position:fixed;
  
  right: 0; 
  bottom: 0;
  left: 0;
  padding: 1rem;
  background-color:rgb(255,255,255);

}
</style></head>
<body>

  <div class="container">
<div> <%@include file="header.jsp" %></div>
</div>

  <div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-4">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span class="glyphicon glyphicon-pencil"></span>SIGN UP</div>
                <div class="panel-body" id="loginform">
                    <form class="form-horizontal" action="registerpage">
<div class="form-group">
<label for="UserID" class="col-sm-3 control-label">User ID</label>
     <div class="col-sm-9">
     <input type="text" class="form-control" placeholder="Enter UserID" pattern="[0-9]+" name="uid" required/>
     </div>
    </div>

<div class="form-group">
<label for="Name" class="col-sm-3 control-label">Name</label>
     <div class="col-sm-9">
     <input type="text" class="form-control" placeholder="Enter Name" pattern="[a-zA-A][a-zA-Z0-9-_\.]{1,20}$" name="username" required/>
   	 </div>
     </div>
     
<div class="form-group">
<label for="email" class="col-sm-3 control-label">Email ID</label>
     <div class="col-sm-9">
     <input type="text" class="form-control" placeholder="Enter Email ID" pattern="[0-9]+" name="email" required/>
     </div>
    </div>

<div class="form-group">
<label for="Password" class="col-sm-3 control-label">Password</label>
     <div class="col-sm-9">
      <input type="password"class="form-control" placeholder="Enter Password" name="userpass" required><td>
	 </div>
     </div>

<div class="form-group">
<label for="Age" class="col-sm-3 control-label">Age</label>
     <div class="col-sm-9">  <input type="text"class="form-control" placeholder="Enter Age" name="age" required><td>
     </div>
     </div>

<div class="form-group">
<label for="Gender" class="col-sm-3 control-label">Gender</label>
     <div class="col-sm-9"><input type="radio" name="gen" required/>M 	 <input type="radio" name="gen" required/>F</td>
    </div>
     </div>
           
<div class="form-group">
<div class="col-sm-offset-3 col-sm-9">
<div class="checkbox">
<label><input type="checkbox"/>Remember me </label>
</div>
</div>
</div>

<div class="form-group last">
<div class="col-sm-offset-3 col-sm-9">
<button type="submit" class="btn btn-success btn-sm">Sign up</button>
<button type="reset" class="btn btn-default btn-sm">Reset</button>
</div>
</div>
          </form>
                </div>
            </div>
        </div>
    </div>
    <div class="blah">
<%@include file="footer.jsp"  %>
 </div>
 </div>
</body>
</html>