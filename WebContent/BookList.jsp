<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Books Store Application</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body class="p-3 mb-2 bg-light text-dark">
	<div class="container">
		<div class="col-xs-1" align="center">
		     <h1>Books Management</h1>
		        <h2>
		        	<a href="new" class="btn btn-primary">Add New Book</a>
		        	&nbsp;&nbsp;&nbsp;
		        	<a href="list" class="btn btn-primary">List All Books</a>
		        </h2>
		    <div align="center">
		    <div class="container">
			  <div class="row">
			    <div class="col-12">
			      <table class="table table-bordered">
			        <thead>
			          <tr>
			            <th scope="col">ID</th>
			            <th scope="col">Title</th>
			            <th scope="col">Author</th>
			            <th scope="col">Price</th>
			            <th scope="col">Actions</th>
			          </tr>
			        </thead>
			        <tbody>
			        	<c:forEach var="book" items="${listBook}">
		                <tr>
		                    <th scope="row"><c:out value="${book.id}" /></td>
		                    <td><c:out value="${book.title}" /></td>
		                    <td><c:out value="${book.author}" /></td>
		                    <td><c:out value="${book.price}" /></td>
		                    <td>
		                    	<a class="btn btn-primary" href="edit?id=<c:out value='${book.id}' />" class="p-3 mb-2 bg-success text-white" >Edit <i class="far fa-eye"></i></a>
		                    	&nbsp;&nbsp;&nbsp;&nbsp;
		                    	<a  href="delete?id=<c:out value='${book.id}' />" class="btn btn-danger">Delete<i class="far fa-trash-alt"></i></a>                    	
		                    </td>
		                </tr>
		             </c:forEach>
			        </tbody>
			      </table>
			    </div>
			  </div>
			</div>
		    </div>	
		</div>
	</div>
</body>
</html>
