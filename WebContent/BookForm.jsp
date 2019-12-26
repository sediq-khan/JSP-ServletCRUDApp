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
		        	<a href="list" class="btn btn-primary">List All Books</a>
		        </h2>
		    <div align="center">
		    <div class="container">
			  <div class="row">
			    <div class="col-sm-12">
			    
			    <c:if test="${book != null}">
				<form action="update" method="post">
		        </c:if>
		        <c:if test="${book == null}">
					<form action="insert" method="post">
		        </c:if>
		        <h2>
            		<c:if test="${book != null}">
            			Edit Book
            		</c:if>
            		<c:if test="${book == null}">
            			Add New Book
            		</c:if>
            	</h2>
            	<c:if test="${book != null}">
        			<input type="hidden" name="id" value="<c:out value='${book.id}' />" />
        		</c:if> 
				  <div class="form-group row">
				    <label for="inputTitle3" class="col-sm-2 col-form-label">Book Title</label>
				    <div class="col-sm-10">
			
				      <input type="text" name="title" class="form-control" id="inputTitle3" placeholder="Book Title" value="<c:out value='${book.title}' />" >
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputAuthor3" class="col-sm-2 col-form-label">Author Name</label>
				    <div class="col-sm-10">
				      <input type="text" name="author" value="<c:out value='${book.author}' />" class="form-control" id="inputAuthor3" placeholder="Author Name">
				    </div>
				  </div>
				  <div class="form-group row">
				    <label for="inputPrice3" class="col-sm-2 col-form-label">Price</label>
				    <div class="col-sm-10">
				      <input type="text" name="price" class="form-control" id="inputPrice3" placeholder="Price" value="<c:out value='${book.price}' />">
				    </div>
				  </div>
				  
				
				  <div class="form-group row">
				    <div class="col-sm-12">
				      <button type="submit" class="btn btn-primary">Save</button>
				    </div>
				  </div>
				</form>
			    </div>
			  </div>
			</div>
		    </div>	
		</div>
	</div>
</body>
</html>
