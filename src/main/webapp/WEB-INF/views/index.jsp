<!doctype html>
<html lang="en">
<%@ page isELIgnored="false"%>
<%@taglib prefix="c" uri="jakarta.tags.core"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><c:out value="${title}" /></title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center mt-3">Welcome to Product App</h1>
	<div class="container mt-5">
		<div class="row">

			<div class="col-md-12">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Name</th>
							<th scope="col">Description</th>
							<th scope="col">Price</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${products}" var="product">
						<tr>
							<td>${product.getId()}</td>
							<td>${product.getName()}</td>
							<td>${product.getDescription()}</td>
							<td>${product.getPrice()}</td>
							<td><a href="deleteProduct/${product.getId()}" class="btn btn-outline-danger btn-sm">Delete</a>
							<a href="updateProduct/${product.getId()}" class="btn btn-outline-success btn-sm">Update</a></td>
						</tr>	
						</c:forEach>					
					</tbody>
				</table>
				<div class="container text-center">
					<a href="addProduct" class="btn btn-outline-success">add Product</a>
				</div>
			</div>
		</div>



	</div>













	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>