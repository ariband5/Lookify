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
<title>Dashboard</title>
</head>
<body>
	<div class="container">
	<a href="/">Home</a>
	<div style="text-align: center">
		<h1>Dashboard</h1>
		<div>
			<a href="songs/new">Add New Song</a>
		</div>
		<div>
			<a href="top_10">Top 10</a>
		</div>
		<div>
			<form action="/search">
				<input name="search" />
				<button class="btn btn-info" type="submit">Search</button>
			</form>
		</div>
		
		<table class="table table-hover table-striped mt-2">
			<thead class="thead-dark">
				<tr>
					<th>Title</th>
					<th>Artist</th>
					<th>Rating</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allSongs}" var="song">
					<tr>
						<td>
							<a href="song/${song.id}"><c:out value="${song.title}"/></a>
						</td>
						<td><c:out value="${song.artist}"/></td>
						<td><c:out value="${song.rating}"/></td>
						<td>
							<form action="/song/${song.id }" method="post">
								<input type="hidden" name="_method" value="delete">
								<!-- <input type="submit" value="Delete"> -->
								<button class="btn btn-danger" type="submit" value="Delete">Delete</button>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>