<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Student</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>

<body style="background-color: #e2e2e2">
<div class="container mt-5">
  <div class="card " style="width: 25rem; ">
    <div class="card-body">
      <h5 class="card-title " align="center" >Edit Student</h5>
      <f:form modelAttribute="student" action="/CRUD/update" method="post">
      <f:hidden path="id"/>
        <div class="form-group">
          <label for="name">Name</label>
          <f:input path="name" class="form-control" />
        </div>
        <div class="form-group">
          <label for="branch">Branch</label>
          <f:input path="branch" class="form-control" />
        </div>
        <div class="form-group">
          <label for="semester">Semester</label>
          <f:input path="semester" class="form-control" />
        </div><br>
		<div class="form-group text-center">
          <button type="submit" class="btn btn-warning">Update Student</button>
        </div>
        
      </f:form>

    </div>
  </div>
</div>    
</body>
</html>