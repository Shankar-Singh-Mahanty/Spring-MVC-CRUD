<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>Spring MVC</title>
</head>
<body style="background-color: #e2e2e2">
<div class="container mt-5">
<h1 align="center" style="font-weight: bold; ">Spring MVC CRUD Example </h1>
<a href="studentform" class="btn btn-info" style="font-weight: bold;">Add New Student</a>
<table class="table mt-5 table-info ">
  <thead>
    <tr>
      <th scope="col">#Id</th>
      <th scope="col">Name</th>
      <th scope="col">Branch</th>
      <th scope="col">Semester</th>
      <th scope="col">Action
      </th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="stud" items="${studentsList}">
    <tr>
      <th scope="row"><c:out value="${stud.id }"/></th>
      <td><c:out value="${stud.name}"/></td>
      <td><c:out value="${stud.branch}"/></td>
      <td><c:out value="${stud.semester}"/></td>
      <td><a href="editstudentform/<c:out value="${stud.id}"/>" class="btn btn-warning">Edit</a>
      <a href="deletestudent/<c:out value="${stud.id}"/>" class="btn btn-danger">Delete</a>
      </td>
      
    </tr>
    </c:forEach>
  </tbody>
</table>
</div>
  
</body>
</html>