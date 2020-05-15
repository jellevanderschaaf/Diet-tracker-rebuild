<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
<title>List Food Items</title>
</head>

<body>


	<div id="wrapper">
		<div id="header">
			<h2>Food Items</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
		<input type="button" value="New Food Item" onclick="window.location.href='showFormNewFoodItem'; return false;" />
		
			<table>
				<tr>
					<th>Name</th>
					<th>Fat</th>
					<th>Carbs</th>
					<th>Protein</th>
					<th>Kcals</th>
					<th>Price</th>
					<th>List</th>
				</tr>
				
				<c:forEach var="tempFoodItem" items="${foodItems}">
				
					<tr>
						<td> ${tempFoodItem.name} </td>
						<td> ${tempFoodItem.fat} </td>
						<td> ${tempFoodItem.carbs} </td>
						<td> ${tempFoodItem.protein} </td>
						<td> ${tempFoodItem.kcals} </td>
						<td> ${tempFoodItem.price} </td>
						<td> ${tempFoodItem.list} </td>
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>

	</div>

</body>

</html>