<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>hello</title>
</head>
<body>
<jsp:include page="navbar.jsp"/>
<div style="min_height: 500px">

<c:if test="${slider}">
<jsp:include page="slider.jsp"/>
</c:if>

<c:if test="${register}">
<jsp:include page="register.jsp"/>
</c:if>

<c:if test="${viewdemo}">
<jsp:include page="demotable.jsp"/>
</c:if>

</body>
</html>