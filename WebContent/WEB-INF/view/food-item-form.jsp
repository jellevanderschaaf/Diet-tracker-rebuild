<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>

<title>Food Item</title>

  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="container">
	<div id="contentForm">
		<div id="header">	
		
			<form:form class="form" action="saveFoodItem" modelAttribute="foodItem" method="POST">
			
			<form:hidden path="id" />
			
			 <table class="formTable">
                            <tr>
                                <td>name &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="name" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>fat &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="fat" /></td>
                                <td>&nbsp; grams</td>
                            </tr>
                            <tr>
                                <td>carbs &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="carbs" /></td>
                                <td>&nbsp; grams</td>
                            </tr>
                            <tr>
                                <td>protein &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="protein" /></td>
                                <td>&nbsp; grams</td>
                            </tr>
                            <tr>
                                <td>kcals &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="kcals" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>price: &euro; &nbsp;</td>
                                <td><form:input class="form-control form-control-sm" path="price" /></td>
                                <td></td>
                            </tr>

                        </table>

                       list per:<br>
                       <div>100 grams &nbsp;<form:radiobutton class="form-check" path="list" value="grams" /></div>
                       <div>piece &nbsp;<form:radiobutton class="form-check" path="list" value="piece" /></div>
                    
                    
                    <button type="button" class="buttonForm"><a id="cancel" href="${pageContext.request.contextPath}/food-item/list">Cancel</a></button>
                    <button class="save buttonForm" type="submit">Save</button>
			
			</form:form>
			
		</div>
	</div>
</div>

</body>

</html>