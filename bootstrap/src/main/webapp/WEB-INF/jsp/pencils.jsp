<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Tasks Manager | Home</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-pencil"> New Pencil</a></li>
					<li><a href="all-pencils"> All Pencils</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Pencil Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_PENCILS'}">
			<div class="container text-center" id="foodsDiv">
				<h3>My Pencils</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Brand</th>
								<th>Color</th>
								<th>Size</th>
								<th>Price</th>
								
								<th></th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="pencil" items="${pencils}">
									<tr>
										<td>${pencil.id}</td>
										<td>${pencil.brand}</td>
										<td>${pencil.color}</td>
										<td>${pencil.size}</td>
										
										<td>${pencil.price}</td>
										
										
										<td>
											<a href="update-pencil?id=${pencil.id}">
												<span class="glyphicon glyphicon-pencil"></span>
											</a>
										</td>
										<td>
											<a href="delete-pencil?id=${pencil.id}">
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
				<h3>Manage Pencil</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-pencil">
					<input type="hidden" name="id" value="${pencil.id}"/>
					
						<div class="form-group">
							<label class="control-label col-sm-3">Brand:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="brand" value="${pencil.brand }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Color:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="color" value="${pencil.color }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Size:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="size" value="${pencil.size }" />
							</div>
						</div>
						
						
						<div class="form-group">
							<label class="control-label col-sm-3">Price:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="price" value="${pencil.price}" />
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