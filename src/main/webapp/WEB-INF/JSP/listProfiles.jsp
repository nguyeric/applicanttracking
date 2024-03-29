<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="partials/dependencies.jsp"></jsp:include>
</head>
<body>
<jsp:include page="partials/navbar.jsp"></jsp:include>

<div class="container">
<div class="row d-flex justify-content-center">
<div class="column">
	<div class="h1 text-left my-4">List of Profiles</div>

	<table class="table table-striped table-border">
		<thead>
			<tr>
				<th scope="col">ID</th>
				<th scope="col">First Name</th>
				<th scope="col">Last Name</th>
				<th scope="col">Email</th>
				<th scope="col">Operations</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items='${profiles}' var="profile">
				<tr>
					<td>${profile.getId() }</td>
					<td>${profile.getFirstName() }</td>
					<td>${profile.getLastName() }</td>
					<td>${profile.getEmail() }</td>
					<td>
						<a class="btn btn-primary" href="/getProfile/${profile.getId()}">View</a>
						<a class="btn btn-info" href="/updateProfile/${profile.getId()}">Edit</a>
						<a class="btn btn-danger" href="/deleteProfile/${profile.getId()}">Delete</a>
					</td>

				</tr>
			</c:forEach>
		</tbody>
	</table>


</div>
</div>
</div>

</body>
</html>