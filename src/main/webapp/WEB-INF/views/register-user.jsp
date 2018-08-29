<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register USer</title>
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
      <a class="nav-item nav-link" href="/register-user">Sign-up</a>
     
    </div>
  </div>
</nav>

<main class="container">

<h1>  ${title}</h1> 


<form action= "/register-result" method="post">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">email</label>
      <input name="email" type="email" class="form-control" id="inputEmail4" placeholder="proper format with (@)">
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">password</label>
      <input name="password" type="password" class="form-control" id="inputPassword4" 
      required minlength="8" maxLength= "12" placeholder="8-12 characters "><br>
        </div>
    
  </div>
  <div class="form-group">
    <label for="inputAddress">Name</label>
    <input name="name" type="text" class="form-control" id="inputAddress"
    required minlength="2" pattern="[A-Z][a-z]*" placeholder="at least 2 characters">
  </div>
  </div>
  <button type="submit" class="btn btn-primary" onclick="register()">Register</button>
  <a href= "/register-user" class="btn btn-secondary">Clear</a>
  <a href= "/" class="btn btn-secondary">Home</a>
</form>
</main>

<script src="script.js"></script>
</body>
</html>