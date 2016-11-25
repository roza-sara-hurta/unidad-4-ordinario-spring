
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
				
					<li><a href="new-deptManager"> New DeptManager</a></li>
					<li><a href="all-deptManagers"> All DeptManager</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to DeptManager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_DEPTMANAGERS'}">
			<div class="container text-center" id="deptManagersDiv">
				<h3>My deptManager</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id</th>
								<th>EmpNo</th>
								<th>From Date</th>
								<th>To Date </th>
							
								<th></th>
								<th></th>
							</tr>
						</thead>
						
						<tbody>
							<c:forEach var="deptManager" items="${deptManagers}">
									<tr>
										<td>${deptManager.id}</td>
										<td>${deptManager.empNo}</td>
										<td>
											<fmt:formatDate pattern="dd-MM-yyyy" value="${deptManager.fromDate}"/>
										</td>
										
										<td>
											<fmt:formatDate pattern="dd-MM-yyyy" value="${deptManager.toDate}"/>
										</td>
										
										<td>
											<a href="update-deptManager?id=${deptManager.id}">
												<span class="glyphicon glyphicon-pencil"></span>
											</a>
										</td>
										<td>
											<a href="delete-deptManager?id=${deptManager.id}">
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
				<h3>Manage deptManager</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-deptManager">
					<input type="hidden" name="id" value="${deptManager.id}"/>
					
						<div class="form-group">
							<label class="control-label col-sm-3">EmpNo.:</label>
							<div class="col-sm-7">
								<input type="text" class="form-control" name="empNo" value="${deptManager.empNo }" />
							</div>
						</div>
						
						<div class="form-group">
							<label class="control-label col-sm-3">From Date:</label>
							<div class="col-sm-7">
								<input type="date" class="form-control" name="fromDate" value="${deptManager.fromDate }" />
							</div>
						</div>
						
							<div class="form-group">
							<label class="control-label col-sm-3">To Date:</label>
							<div class="col-sm-7">
								<input type="date" class="form-control" name="toDate" value="${deptManager.toDate }" />
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