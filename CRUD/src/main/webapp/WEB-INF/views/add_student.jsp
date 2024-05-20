<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>

<body style="background-color: #e2e2e2">
<div class="container mt-5">
  <div class="card " style="width: 25rem;">
    <div class="card-body">
      <h5 class="card-title" align="center">Add Student</h5>
      <f:form modelAttribute="student" action="add" method="post">
      	<div class="form-group">
    		<label for="id">ID</label>
    		<f:input path="id" class="form-control" id="id" />
		</div>
        <div class="form-group">
          <label for="name">Name</label>
          <f:input path="name" class="form-control" id="name" />
        </div>
        <div class="form-group">
          <label for="branch">Branch</label>
          <f:input path="branch" class="form-control" id="branch" />
        </div>
        <div class="form-group">
          <label for="semester">Semester</label>
          <f:input path="semester" class="form-control" id="semester" />
        </div><br>
        <div class="form-group text-center">
          <button type="submit" class="btn btn-warning">Add Student</button>
        </div>
      </f:form>
    </div>
  </div>
</div>    
</body>
</html>
