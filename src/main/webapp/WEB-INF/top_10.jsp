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
<title>Top 10</title>
</head>
<body>
<div class="container">
	<a href="/dashboard">Back</a>
	<h1 style="text-align: center">Top 10</h1>
	<div>
		<table class="table table-hover table-striped">
			<thead class="thead-dark">
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Rating</th>
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${top_10}" var="song">
					<tr>
						<td><c:out value="${song.title}"/></td>
						<td><c:out value="${song.artist}"/></td>
						<td><c:out value="${song.rating}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>