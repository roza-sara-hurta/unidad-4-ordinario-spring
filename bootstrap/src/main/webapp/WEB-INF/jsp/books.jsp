

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<title>Books Manager | Home</title>
<link href="/static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
</head>
<body>
	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/" class="navbar-brand">Home</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="new-book"> New book</a></li>
					<li><a href="all-books"> All books</a></li>
				</ul>
			</div>
		</div>
	</div>
	<c:choose>
		<c:when test="${mode=='MODE_HOME'}">
			<div class="container" id="homeDiv">
				<div class="jumbotron text-center">
					<h1>Welcome to Book Manager</h1>
				</div>
			</div>
		</c:when>
		<c:when test="${mode=='MODE_BOOKS'}">
			<div class="container text-center" id="booksDiv">
				<h3>My bookss</h3>
				<hr />
				<div class="table-responsive">
					<table class="table table-striped table-bordered text-left">
						<thead>
							<tr>
								<th>Id Book</th>
								<th>Title</th>
								<th>Editorial</th>
								<th>Price</th>
								<th>Color</th>
								<th>Author</th>
								<th></th>
								<th></th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="book" items="${books}">
								<tr>
									<td>${book.idBook}</td>
									<td>${book.title}</td>
									<td>${book.editorial}</td>
									<td>${book.price}</td>
									<td>${book.color}</td>
									<td>${book.author}</td>
									<td><a href="update-book?idBook=${book.idBook}"> <span
											class="glyphicon glyphicon-pencil"></span>
									</a></td>
									<td><a href="delete-book?idBook=${book.idBook}"> <span
											class="glyphicon glyphicon-trash"></span>
									</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		<c:when test="${mode=='MODE_NEW' || mode=='MODE_UPDATE'}">
			<div class="container text-center">
				<h3>Manage Book</h3>
				<hr />
				<form class="form-horizontal" method="POST" action="save-book">
					<input type="hidden" name="idBook" value="${book.idBook}" />

					<div class="form-group">
						<label class="control-label col-sm-3">Title:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="title"
								value="${book.title}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Editorial:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="editorial"
								value="${book.editorial}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">price:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="price"
								value="${book.price}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Color:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="color"
								value="${book.color}" />
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-3">Author:</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" name="author"
								value="${book.author}" />
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