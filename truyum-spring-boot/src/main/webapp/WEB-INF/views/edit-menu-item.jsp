
<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container">
	<%@ include file="common/header-with-cart.jspf"%>

	<div class="body">
		<h2 class="body-text-heading">Edit Menu Item</h2>
		<form class="form-edit-menu" name="menuItemForm" method="POST"
			action="edit-menu-item">
			<label for="name">Name</label><br> <input type="text"
				name="title" id="title" minlength="2" value="${menuItem.name}"
				maxlength="65" size="80" required><br>
			<table>
				<tr class="form-table-edit-menu-row">
					<td class="form-table-edit-menu"><label for="field-price">Price
							(Rs.)</label></td>
					<td class="form-table-edit-menu"><label for="field-active">Active</label></td>
					<td class="form-table-edit-menu"><label
						for="field-datoflaunch">Date of Launch</label></td>
					<td class="form-table-edit-menu"><label for="filed-category">Category</label></td>
				</tr>
				<tr class="form-table-edit-menu-row">
					<td class="form-table-edit-menu"><input type="number"
						value="${menuItem.price}" name="price" id="price" width="10"
						required></td>
					<td class="form-table-edit-menu"><input type="radio"
						name="inStock" id="inStock" width="10" value="Yes"
						<c:if test="${menuItem.active}">checked</c:if> /> <label>Yes</label>
						<input type="radio" name="inStock" id="inStock" width="10"
						<c:if test="${not menuItem.active}">checked</c:if> value="No">
						<label>No</label></td>
					<td class="form-table-edit-menu">
						<input type="date" value="${menuItem.dateOfLaunch}" name="dateOfLaunch"	id="dateOfLaunch" required width="10">
					</td>
					<td class="form-table-edit-menu"><select name="category"
						id="category">
							<c:forEach var="x" items="${catogoryList}">
								<option value="${x}">${x}</option>
							</c:forEach>
					</select></td>
				</tr>
			</table>
			<input type="checkbox" value="${menuItem.freeDelivery}"
				name="freeDelivery" id="freeDelivery"
				<c:if test="${menuItem.freeDelivery}">checked</c:if>> <label>Free
				Delivery</label><br> <input class="save-button-edit" type="submit"
				value="Save">
		</form>
	</div>


	<%@ include file="common/footer.jspf"%>
</div>
<%@ include file="common/end-tags.jspf"%>