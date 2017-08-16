<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/bootstrap" />
<spring:url var="image" value="/resources/image" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:f="http://java.sun.com/jsf/core"
 xmlns:h="http://java.sun.com/jsf/html">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Header</title>
<link rel="stylesheet" href="../resources/bootstrap-social.css"/>
<link rel="stylesheet" href="/bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Bigshot+One" />
<link href='https://fonts.googleapis.com/css?family=Audiowide'rel='stylesheet'/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style> 
.modal{
  text-align: center;
  padding: 0!important;

}

.modal:before {
  content: '';
  display: inline-block;
  height: 100%;
  vertical-align: middle;
  margin-right: -4px;
}

.modal-dialog {
  display: inline-block;
  text-align: left;
  vertical-align: middle;
}
  
.nav.navbar-nav.navbar-right li a {
color: orange;
}
.nav.navbar-nav.navbar-right li a:focus {
    color: white;    
}
.nav.navbar-nav.navbar-left li a {
color: orange;
}
.nav.navbar-nav.navbar-left li a:focus{
    color: white;    
}
.txt1{
    font-family: 'Audiowide';
    font-size: 30px;
	font-style: normal;
	font-variant: small-caps;
	font-weight: bold;
	line-height: 30px;
}
.txt2{
	font-family: 'Audiowide';
    font-size: 20px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
S	line-height: 23px;
	
}
</style> 
</head>
<body >
<f:view >
<div class="container" > 
 <div class="row" style="height: 160">
    <div class="col-sm-3"style="float: left;" >
<img src="${pageContext.request.contextPath}/resources/img/l.png"  width="170" height="126" class="img-responsive"/>
    </div>
    <div class="col-sm-9" >
<br/>			
  <h1 class="txt1">THE SYMPHONY MUSICALS</h1>
  <p class="txt2" >Bringing Music to Life..!!!</p> 
</div>
<hr>
</hr>
</div> 
</div>
</f:view>
<div class="container" >
   <div class="navbar navbar-inverse" role="navigation">  	
   <div class="navbar-header">
   <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
   <span class="sr-only">Toggle navigation</span>
   </button>
   </div> 
   <div class="navbar-collapse collapse">
       <ul class="nav navbar-nav navbar-left">
        <li><a href="index.jsp">HOME</a></li>
        
        </ul>
<ul class="nav navbar-nav navbar-right">
  <li><a  href='<c:url value="/login"/>'><span id="sign" class="glyphicon glyphicon-user" ></span> LOGIN</a></li>
 <li><a  href='<c:url value="/regs"/>'><span id="sign" class="glyphicon glyphicon-pencil"></span> SIGN UP</a></li>
 <li><a  href='<c:url value="/add"/>'><span id="sign" class="glyphicon glyphicon-pencil"></span>Adding</a></li>

</ul>
</div>
</div>
</div>
</body>
</html>

    
