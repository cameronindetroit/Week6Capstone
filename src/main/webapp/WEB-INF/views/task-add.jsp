<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>


<head>
<meta charset="UTF-8">
<title>Add a task</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/index">Task Manager</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="/index"> User Login <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="/show">Tasks</a>
      <a class="nav-item nav-link" href="/register-user">Sign-up</a>
     
    </div>
  </div>
</nav>

<main class="container">
		<h1>Add a task</h1>
		
		<!-- A form without an action submits back to the same URL, which is what we want here. -->
		<form method="post" action= "/task/submit">
		<div class="form-group">
			    <label type="hidden" for="name">id</label>
			    <!-- pre-populate the input value from the existing food (if any) -->
			    <input type="hidden" class="form-control" id="name" name="id" value="${task.id}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="name">Name</label>
			    <!-- pre-populate the input value from the existing food (if any) -->
			    <input class="form-control" id="name" name="name" value="${task.name}" required minlength="2" autocomplete="off">
			</div>
			<div class="form-group">
			    <label for="category">Description</label>
			    <input class="form-control" id="category" name="description" value="${task.description}" required>
			</div>
			<div class="form-group">
			    <label for="description">Due Date</label>
			    <input class="form-control" id="description" name="dueDate" value="${task.dueDate}" required minlength="1">
			</div>
			
			<button type="submit" class="btn btn-primary">Submit</button>
			<a href="/" class="btn btn-link">Cancel</a>
		</form>
		</main>




</body>
</html>