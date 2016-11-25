
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
					<li><a href="new-dog"> New Dog</a></li>
					<li><a href="all-dogs"> All Dog</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Dog Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_DOGS'}">
			<div class="container text-center" id="dogsDiv">
				<h3>My Dogs</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>Name</th>
								<th>Description</th>
								<th>Date </th>
								<th>Sexo</th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="dog" items="${dogs}">
									<tr>
										<td>${dog.id}</td>
										<td>${dog.name}</td>
										<td>${dog.description}</td>
										<td>
											<fmt:formatDate pattern="dd-MM-yyyy" value="${dog.date_Created}"/>
										</td>
										<td>${dog.finished==true?"Hembra":"Macho"}</td>
										
										<td>
											<a href="update-dog?id=${dog.id}">
												<span class="glyphicon glyphicon-pencil"></span>
											</a>
										</td>
										<td>
											<a href="delete-dog?id=${dog.id}">
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
				<h3>Manage Dog</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-dog">
					<input type="hidden" name="id" value="${dog.id}"/>
					
						<div class="form-group">
							<label class="control-label col-sm-3">Name:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="name" value="${dog.name }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Description:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="description" value="${dog.description }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">Sexo:</label>
							<div class="col-sm-7">
								<input type="radio" class="col-sm-1" name="finished" value="true"/>
								<div class="col-sm-1">Hembra</div>
									<input type="radio" class="col-sm-1" name="finished" value="false"checked="checked"/>
								<div class="col-sm-1">Macho</div>
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