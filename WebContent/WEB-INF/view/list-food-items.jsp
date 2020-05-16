<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
<title>List Food Items</title>

  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

</head>

<body>

	<div id="container">
	
		<div id="content">
		
				<div id="header">
			<h2>Food Items</h2>
		</div>
		
		<hr>
		
		<div id="padding">
		
			<table class="foodlist-table-head" style='width:100%'>
				<tr>
					<th style='width:20%'>Name</th>
					<th id="tableFat" style='width:10%'>Fat</th>
					<th id="tableCarbs" style='width:10%'>Carbs</th>
					<th id="tableProtein" style='width:10%'>Protein</th>
					<th style='width:10%'>Kcals</th>
					<th style='width:10%'>Price</th>
					<th style='width:10%'>List</th>
					<th style='width:10%'>Edit</th>
					<th style='width:10%'>Delete</th>
				</tr>
				
				</table>
				
				<table class="foodlist-table" style='width:100%'>
				
				<c:forEach var="tempFoodItem" items="${foodItems}">
				
					<c:url var="editLink" value="/food-item/showFormForEdit">
						<c:param name="foodItemId" value="${tempFoodItem.id}" />
					</c:url>
					
					<c:url var="deleteLink" value="/food-item/delete">
						<c:param name="foodItemId" value="${tempFoodItem.id}" />
					</c:url>
				
					<tr class="food-list-tr">
						<td style='width:20%' class="td-left"> ${tempFoodItem.name} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.fat} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.carbs} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.protein} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.kcals} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.price} </td>
						<td style='width:10%' class="td-center"> ${tempFoodItem.list} </td>
						<td style='width:10%' class="td-center"> <a href="${editLink}"><i class='material-icons'>edit</i></a>
						<td style='width:10%'class="td-right"> <a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this food item?'))) return false"><i class='material-icons'>delete_outline</i></a>			
					</tr>
				
				</c:forEach>
				
			</table>
		
		<input type="button" value="New Food Item" class="buttonNew" onclick="window.location.href='showFormNewFoodItem'; return false;" />
		
			</div>

		</div>

	</div>

</body>

</html>