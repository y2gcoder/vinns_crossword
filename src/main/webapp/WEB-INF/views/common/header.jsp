<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>빈스미디어 십자말풀이</title>
<!-- path 설정 -->
<c:set var="path" value="${pageContext.request.contextPath}" scope="session" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="${path}/resources/css/crossword-puzzle.css">
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-light bg-light">
			<a class="navbar-brand" href="/">
				<img src="http://vinnsmedia.com/assets/image/vinns_logo_h42.png" alt="">
			</a>
			<span class="navbar-text">
				Crossword
			</span>
		</nav>
	