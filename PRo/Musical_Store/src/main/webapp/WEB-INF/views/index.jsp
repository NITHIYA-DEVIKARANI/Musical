<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>THE SYMPHONY MUSICALS</title>
<link href="../resources/bootstrap/css/font-awesome.css" rel="stylesheet">
    <link href="./resources/bootstrap/css/docs.css" rel="stylesheet">
    <link href="./resources/bootstrap/css/bootstrap.min.css" rel="stylesheet" >
    <link href="./resources/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="./resources/bootstrap/bootstrap-social.css" rel="stylesheet" >
    <link href="./resources/bootstrap/bootstrap.min.css" rel="stylesheet">
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
<body >
<div class="container">
<div> <%@include file="header.jsp" %></div>

 <div><%@include file="content.jsp"%></div>
 
 
 <br/><br/><br/>
 
<div class="blah">
<%@include file="footer.jsp"  %>
 </div>
</div>
</body>
</html>
