<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core"
 xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
  <title>login</title>
  <link href="bootstrap/css/font-awesome.css" rel="stylesheet"/>
    <link href="/bootstrap/css/docs.css" rel="stylesheet"/>
    <link href="/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/bootstrap/css/bootstrap.css" rel="stylesheet"/>
    <link href="/bootstrap/bootstrap-social.css" rel="stylesheet" />
    <link href="/bootstrap/bootstrap.min.css" rel="stylesheet"/>

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
                    <span class="glyphicon glyphicon-user"></span> Login</div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form">
   <div class="form-group">
<label for="EmailID" class="col-sm-4 control-label">Email ID </label>
     <div class="col-sm-8">
     <input class="form-control" type="text" class="form-control" placeholder="Enter Email ID" " name="emid" required/>
     </div>
    </div>
<div class="form-group">
<label for="Password" class="col-sm-4 control-label">Password</label>
     <div class="col-sm-8"> <input class="form-control" type="password" placeholder="Enter Password" name="userpass" required><td>
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
<button type="submit" class="btn btn-success btn-sm">LOGIN</button>
<button type="reset" class="btn btn-default btn-sm">RESET</button>
</div>
</div>
</form>
 </div>
                <div class="panel-footer">
                    Not Registered? <a href="signup.jsp">Register here</a></div>
            </div>
        </div>
    </div>
<div class="blah">
<%@include file="footer.jsp"  %>
 </div>

</div>
  
  </body>
</html>
