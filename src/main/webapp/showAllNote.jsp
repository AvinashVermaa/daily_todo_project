<!doctype html>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.Session"%>
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
		<h1 class="text-center">All Notes are Here!!!</h1>

	</div>

	<%
	SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
	Session session1 = sessionFactory.openSession();

	Query q1 = session1.createQuery("from Note");
	List<Note> lists = q1.list();

	for (Note note : lists) {
	%>
	<div class="row">
		<div class="col-12">

			<div class="card container" style="width: 18rem;">
				<img src="img/notes.jpg" class="card-img-thumbnail" alt="...">
				<div class="card-body">
					<h5 class="card-title"><%=note.getTitle() %></h5>
					<p class="card-text"><%=note.getContent() %></p>
					<a href="DeleteServlet?id=<%=note.getId() %>" class="btn btn-danger">Delete</a>
					<a href="update.jsp?id=<%=note.getId()%>" class="btn btn-success">Update</a>
					<br>
					<h6>Last Modified : <%=note.getAddedDate() %>></h6>
				</div>
			</div>

		</div>


	</div>



	<%
	}
	%>












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