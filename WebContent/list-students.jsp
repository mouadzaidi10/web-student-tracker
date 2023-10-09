<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>

	<head>
		<title>Student Tracker App</title>
		
		<link type="text/css" rel="stylesheet" href="css/style.css" />
		
	</head>
		
	<body>
	
		<div class="wrapper">
			<div id="header">
				<h2>My University</h2>
			</div>
		</div>
		
		<br/><br/>
		
		<div class="container">
			
			<div id="content">
				
				<input type="button" value="Add Student" 
					onclick="window.location.href='add-student-form.jsp'; return false;"
					class="add-student-button"
				/>
				
				<table>
				
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
				
					<c:forEach var="tempStudent" items="${STUDENTS_LIST}">
					
						<!-- set up a link for each student -->
						<c:url var="templink" value="StudentControllerServlet">
							<c:param name="command" value="LOAD"></c:param>
							<c:param name="studentId" value="${tempStudent.id}"></c:param>
						</c:url>
						
						<!-- set up a link to delete student -->
						<c:url var="deleteLink" value="StudentControllerServlet">
							<c:param name="command" value="DELETE"></c:param>
							<c:param name="studentId" value="${tempStudent.id}"></c:param>
						</c:url>
					
						<tr>
							<td>${tempStudent.firstName}</td>
							<td>${tempStudent.lastName}</td>
							<td>${tempStudent.email}</td>
							<td>
								<a href="${templink}">Update</a> 
								| 
								<a href="${deleteLink}"
								onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">Delete</a>
							</td>
						</tr>
					
					</c:forEach>
					
				</table>
				
			</div>
			
		</div>
	
	</body>

</html>






