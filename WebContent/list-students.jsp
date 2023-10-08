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
					</tr>
				
					<c:forEach var="tempStudent" items="${STUDENTS_LIST}">
					
						<tr>
							<td>${tempStudent.firstName}</td>
							<td>${tempStudent.lastName}</td>
							<td>${tempStudent.email}</td>
						</tr>
					
					</c:forEach>
					
				</table>
				
			</div>
			
		</div>
	
	</body>

</html>






