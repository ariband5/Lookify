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
<title>Create</title>
</head>
<body>
	<div class="container">
	<div style="text-align: center">
		<h1>Create a Song</h1>
		<form:form action ="/songs/new" method="post" modelAttribute="song">
			<p>
				Title:
				<form:input path="title"/>
				<form:errors path="title"/>
			</p>
			<p>
				Artist:
				<form:input path="artist"/>
				<form:errors path="artist"/>
			</p>
			<p>
				Rating:
				<form:select path="rating">
					<form:option  value="1">1</form:option>
					<form:option value="2">2</form:option>
					<form:option value="3">3</form:option>
					<form:option value="4">4</form:option>
					<form:option value="5">5</form:option>
				</form:select>
				<form:errors path="rating"/>
			</p>
			<button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
	</div>
</body>
</html>