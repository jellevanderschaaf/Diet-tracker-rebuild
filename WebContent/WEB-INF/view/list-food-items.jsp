<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
<title>List Food Items</title>

  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="container">
	
		<div id="content">
		
				<div id="header">
			<h2>Food Items</h2>
		</div>
		
			<table>
				<tr>
					<th>Name</th>
					<th>Fat</th>
					<th>Carbs</th>
					<th>Protein</th>
					<th>Kcals</th>
					<th>Price</th>
					<th>List</th>
					<th></th>
					<th></th>
				</tr>
				
				<c:forEach var="tempFoodItem" items="${foodItems}">
				
					<c:url var="editLink" value="/food-item/showFormForEdit">
						<c:param name="foodItemId" value="${tempFoodItem.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/food-item/delete">
						<c:param name="foodItemId" value="${tempFoodItem.id}" />
					</c:url>
				
					<tr>
						<td> ${tempFoodItem.name} </td>
						<td> ${tempFoodItem.fat} </td>
						<td> ${tempFoodItem.carbs} </td>
						<td> ${tempFoodItem.protein} </td>
						<td> ${tempFoodItem.kcals} </td>
						<td> ${tempFoodItem.price} </td>
						<td> ${tempFoodItem.list} </td>
						<td> <a href="${editLink}">Edit</a>
						<td> <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this food item?'))) return false">Delete</a>
					</tr>
				
				</c:forEach>
				
			</table>
		
		<input type="button" value="New Food Item" class="buttonNew" onclick="window.location.href='showFormNewFoodItem'; return false;" />
		
		</div>

	</div>

</body>

</html>