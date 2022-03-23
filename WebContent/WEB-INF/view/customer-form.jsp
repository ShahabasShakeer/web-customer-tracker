<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<title>Add a new Customer</title>
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
	<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
		<h3>Save Customer</h3>
		
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			<form:hidden path="id"/>
			<table>
				<tbody>
					<tr>
						<td>
							<label>First Name:</label>
						</td>
						<td>
							<form:input path="firstName"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>Last Name:</label>
						</td>
						<td>
							<form:input path="lastName"/>
						</td>
					</tr>
					<tr>
						<td>
							<label>Email:</label>
						</td>
						<td>
							<form:input path="email"/>
						</td>
					</tr>
					<tr>
						<td>
							<input type="submit" value="Submit" class="save"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form:form>
		
		<div style="clear;both;">
			<a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
		</div>
		
	</div>
	
</body>
</html>