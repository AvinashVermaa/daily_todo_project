<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Hello, world!</title>
</head>
<body>

	<!-- Navbar Start -->
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary text-white">
			<a class="navbar-brand" href="index.jsp">Note Taker</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="addNote.jsp">Add Note <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="showAllNote.jsp">Show All Note</a></li>

				</ul>
				<form class="form-inline my-2 my-lg-0">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</nav>
	</div>

	<div class="container">
		<h1 class="text-center">Add Notes Here!!!</h1>

	</div>

	<div class="container">

		<form action="AddNoteServlet" method="post">
			
			<div class="form-group">
				<label for="title">Enter the title.</label> <input
					type="text" 
					class="form-control" 
					id="title"
					aria-describedby="emailHelp" 
					placeholder="Enter the title for note"
					name="title"
					required
					> 
					
			</div>
			
			<div class="form-group">
				<label for="content">Enter the content.</label> 
				
				<textarea 
				class="form-control" 
				id="content" 
				rows="3"
				placeholder="Enter the content for note"
				required
				name="content"
				>
				</textarea>
			</div>
			
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Add Note</button>
			</div>
		</form>

	</div>










	<!-- Navbar Ended -->















	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>