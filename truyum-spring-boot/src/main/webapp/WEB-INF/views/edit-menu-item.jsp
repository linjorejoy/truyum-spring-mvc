
<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container-my">
	<%@ include file="common/header-with-cart.jspf"%>

	<div class="body">
		<h2 class="body-text-heading">Edit Menu Item</h2>
		<div class="edit-menu-item-form">
			<form:form class="form-edit-menu" modelAttribute="menuItem" name="menuItemForm" method="POST" action="edit-menu-item" cssClass="edit-form">
				<form:hidden path="id"/>
				<form:label path="name">Name</form:label><br>
				<form:input path="name" cssClass="edit-form-name" name="title" id="title"  value="${menuItem.name}" /><br>
				<form:errors path="name" cssClass="text-warning"></form:errors>
				<table>
					<tr class="form-table-edit-menu-row">
						
						
						
						<td class="form-table-edit-menu">
						<form:label path="price">Price (Rs.)</form:label></td>
						<td class="form-table-edit-menu"><form:label path="active">Active</form:label></td>
						<td class="form-table-edit-menu">
						<form:label path="dateOfLaunch">Date of Launch</form:label></td>
						<td class="form-table-edit-menu"><form:label path="freeDelivery">Category</form:label> </td>
					</tr>
					<tr class="form-table-edit-menu-row">
						<td class="form-table-edit-menu">
							<form:input path="price" type="number" value="${menuItem.price}" name="price" id="price"/><br>
							<form:errors path="price" cssClass="text-warning"></form:errors>
						</td>
						<td class="form-table-edit-menu">
							<form:radiobutton path="active" value="true" name="inStock" id="inStock"  />
							<form:label path="active">Yes</form:label>
							<form:radiobutton path="active" value="false" name="inStock" id="inStock"/>
							<form:label path="active">No</form:label>
						 </td>
						<td class="form-table-edit-menu"> 
							<form:input path="dateOfLaunch" name="dateOfLaunch" id="dateOfLaunch"/>
						</td>
						<td class="form-table-edit-menu">
						<form:select path="category" >
							<c:forEach var="x" items="${catogoryList}">
								<option value="${x}">${x}</option>
							</c:forEach>
						</form:select>
					</tr>
				</table>
				<form:label path="freeDelivery">Free Delivery</form:label>
				<form:checkbox path="freeDelivery" name="freeDelivery" id="freeDelivery" value="${menuItem.freeDelivery}" />
				<br> 
					<input class="save-button-edit" type="submit"
					value="Save">
			</form:form>
		</div>
	</div>


	<%@ include file="common/footer.jspf"%>
</div>
<%@ include file="common/end-tags.jspf"%>