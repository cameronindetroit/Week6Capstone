<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
 <link rel="stylesheet" href="style.css">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
       <a class="nav-item nav-link" href="/logout"> ${user.name} Log-out</a>
     
    </div>
  </div>
</nav>

<h1>Task List</h1>
<br>

<main class="container">
		<table class="table" action="checckbox" method="post">
			<thead>
				<tr>
					<th>Name</th><th>Description</th><th>Due Date</th><th></th><th>Complete</th><th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${task}">
				<tr>
					<td><a href="/task/${task.id}">${task.name}</a></td>
					<td>${task.description}</td>
					<td>${task.dueDate}</td>
					<td>${task.isComplete}</td>
					<td><div class="form-check">
			<form:form method="POST" commandName="isComplete" action="/check-box">
  <input class="form-check-input" type="checkbox" value="Submit" id="defaultCheck1">
  <label class="form-check-label" for="defaultCheck1">
    Check if Complete
  </label>
 
  </form:form>
</div></td>
					<td>	
					<a href="/task/${ task.id }/delete" onclick="return confirm('Are you sure?')" class="btn btn-light btn-sm">Delete</a>
					</td>
					
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		<a class="btn btn-primary mb-2 mr-2" href="task/add">Add</a>
		
					
						<%-- <a href="/items/${ item.id }/update-form" class="btn btn-light btn-sm">Edit</a>  --%>
						
	</main>


</body>
</html>