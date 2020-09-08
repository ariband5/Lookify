<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<title>Show</title>
</head>
<body>
	<div class="container">
	
	<a href="/dashboard">Back</a>
		<div style="text-align: center">
			<h1>Song</h1>
			<h2>Title: <c:out value="${song.title}" /></h2> <br/>
			<h2>Artist: <c:out value="${song.artist}" /></h2> <br/>
			<h2>Rating: <c:out value="${song.rating}" /></h2> <br/>
			
			<form action="/song/${song.id }" method="post">
				<input type="hidden" name="_method" value="delete">
				<!-- <input type="submit" value="Delete"> -->
				<button class="btn btn-danger" type="submit" value="Delete">Delete</button>
			</form>
		</div>
	</div>
</body>
</html>