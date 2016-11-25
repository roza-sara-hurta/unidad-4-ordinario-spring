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
					
					   <li><a href="/tasks"> Tasks</a></li>
					
					
						<li><a href="/dogs"> Dogs</a></li>
						
				        <li><a href="/foods"> Foods</a></li>
					   <li><a href="/pencils"> Pencils</a></li>
					    <li><a href="/deptManagers"> DeptManager</a></li>
					 <li><a href="/products"> Products</a></li>
					  <li><a href="/books"> Books</a></li>
					 
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome </h1>
				</div>
			</div>
		</c:when>
		
	</c:choose>

	<script type="text/javascript" src="/static/js/bootstrap.min.js">
		
	</script>
	<script type="text/javascript" src="/static/js/jquery-3.1.1.min.js">
		
	</script>
	<div class=" text-center">
	<h3>Rosa Sarahi Huerta Gonzalez </h3>
	</div>
	
	

	
</body>
</html>