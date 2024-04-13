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

	<div class="container mt-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<h1 class="text-center mb-3">Update Product</h1>
				
				<form action="${pageContext.request.contextPath}/update-product/${id}" method="post">
					<div class="form-group">
						<lable for="name">Enter Product new Name</lable>
						<input type="text" class="form-control" name="name">
					</div>

					<div class="form-group mt-3">
						<lable for="description">Enter Product new Description</lable>
						<textarea row="5" class="form-control" name="description"></textarea>
					</div>

					<div class="form-group mt-3">
						<lable for="price">Enter Product new  Price</lable>
						<input type="text" class="form-control" name="price">
					</div>

					<div class="container text-center mt-3">
						<a href="${pageContext.request.contextPath}/home"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>

				</form>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
</body>
</html>