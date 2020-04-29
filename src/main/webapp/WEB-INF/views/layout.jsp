<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>${title}</title>
		<link rel="stylesheet" href="/resources/css/commons.css" type = "text/css">
	</head>
<body>

	<!-- Header부분 -->
	<div id = "header">
		<c:import url="/layout/header" />
	</div>
	
	<!-- 본문 -->
	<div id = "main">
		<div id = "menubar">
			<c:import url="/layout/menu" />
		</div>
		<div id = "mainpage">
			<c:import url="/view/${page}" />
		</div>
	</div>
	
 	<!-- Footer부분 -->
 	<div id = "footer">
		<c:import url="/layout/footer" />
	</div>
	
</body>
</html>