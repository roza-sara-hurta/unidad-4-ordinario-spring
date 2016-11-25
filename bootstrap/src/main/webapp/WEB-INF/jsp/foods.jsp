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
					<li><a href="new-food"> New Food</a></li>
					<li><a href="all-foods"> All Foods</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Food Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_FOODS'}">
			<div class="container text-center" id="foodsDiv">
				<h3>My foods</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name Saucer</th>
								<th>Chef</th>
								<th>Price</th>
								<th>Data Order</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="food" items="${foods}">
									<tr>
										<td>${food.id}</td>
										<td>${food.nameSaucer}</td>
										<td>${food.chef}</td>
										<td>${food.price}</td>
										<td>
											<fmt:formatDate pattern="dd-MM-yyyy" value="${food.dateOrder}"/>
										</td>
										
										<td>
											<a href="update-food?id=${food.id}">
												<span class="glyphicon glyphicon-pencil"></span>
											</a>
										</td>
										<td>
											<a href="delete-food?id=${food.id}">
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
				<h3>Manage Food</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-food">
					<input type="hidden" name="id" value="${food.id}"/>
					
						<div class="form-group">
							<label class="control-label col-sm-3">Name Saucer:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="nameSaucer" value="${food.nameSaucer }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Chef:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="chef" value="${food.chef }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Price:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="price" value="${food.price }" />
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