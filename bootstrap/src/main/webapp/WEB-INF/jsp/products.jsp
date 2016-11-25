
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title> Manager | Home</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-product"> New Product</a></li>
					<li><a href="all-products"> All Products</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Product Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_PRODUCTS'}">
			<div class="container text-center" id="productsDiv">
				<h3>My Products</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Supplier</th>
								<th>Category</th>
								
								<th>Price</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="product" items="${products}">
									<tr>
										<td>${product.id}</td>
										<td>${product.name}</td>
										<td>${product.supplier}</td>
										<td>${product.category}</td>
										<td>${product.price}</td>
										
										
										<td>
											<a href="update-product?id=${product.id}">
												<span class="glyphicon glyphicon-pencil"></span>
											</a>
										</td>
										<td>
											<a href="delete-product?id=${product.id}">
												<span class="glyphicon glyphicon-trash"></span>
											</a>
										</td>
									</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>
		
		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Product</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-product">
					<input type="hidden" name="id" value="${product.id}"/>
					
						<div class="form-group">
							<label class="control-label col-sm-3">Name:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="name" value="${product.name }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Supplier:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="supplier" value="${product.supplier }" />
							</div>
						</div>
						
						
						<div class="form-group">
							<label class="control-label col-sm-3">Category:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="category" value="${product.category }" />
							</div>
						</div>
						
						
						
						<div class="form-group">
							<label class="control-label col-sm-3">Price:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="price" value="${product.price }" />
							</div>
						</div>
						
						<div class="form-group">
							<input type="submit" class="btn btn-primary" value="Save" />
						</div>
						
				</form>
			</div>
		
		</c:when>
		
		
		
	</c:choose>

	<script type="text/javascript" src="/static/js/bootstrap.min.js">
		
	</script>
	<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js">
		
	</script>

</body>
</html>