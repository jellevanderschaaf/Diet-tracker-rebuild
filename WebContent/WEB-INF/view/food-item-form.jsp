<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<title>New Food Item</title>


<body>

	<div id="wrapper">
		<div id="header">
			<h2>New Food Item</h2>
			
			<form:form action="saveFoodItem" modelAttribute="foodItem" method="POST">
			
			<form:hidden path="id" />
			
			 <table>
                            <tr>
                                <td><label>name</label></td>
                                <td><form:input path="name" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><label>fat</label></td>
                                <td><form:input path="fat" /></td>
                                <td>grams</td>
                            </tr>
                            <tr>
                                <td><label>carbs</label></td>
                                <td><form:input path="carbs" /></td>
                                <td>grams</td>
                            </tr>
                            <tr>
                                <td><label>protein</label></td>
                                <td><form:input path="protein" /></td>
                                <td>grams</td>
                            </tr>
                            <tr>
                                <td><label>kcals</label></td>
                                <td><form:input path="kcals" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><label>price: &euro;</label></td>
                                <td><form:input path="price" /></td>
                                <td></td>
                            </tr>

                        </table>

                       list per:<br>
                       100 grams <form:radiobutton path="list" value="grams" /><br>
                       piece <form:radiobutton path="list" value="piece" />
                    
                    <a href="${pageContext.request.contextPath}/food-item/list">Cancel</a>
                    <input type="submit" value="Create" />
			
			</form:form>
			
		</div>
	</div>

</body>

</html>