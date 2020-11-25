
<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container-my">
	<%@ include file="common/header.jspf"%>

	<div class="body">
		<div class="menu-item-heading">
			<h1 class="body-text-heading" id="">Menu Items</h1>
		</div>
		<div id="menu-Item-List-Result" class="table-div-my">
			<table class="table">
				<tr>
					<th>Name</th>
					<th>Price</th>
					<th>Active</th>
					<th>Date of Launch</th>
					<th>Category</th>
					<th>Free Delivery</th>
					<th>Action</th>
				</tr>
				<c:forEach var="eachitem" items="${menuItemListAdmin}">
					<tr>
						<td>${eachitem.name}</td>
						<td>Rs. ${eachitem.price}</td>
						<td>${eachitem.active}</td>
						<td><fmt:formatDate value="${eachitem.dateOfLaunch}"
								pattern="yyyy-MM-dd" /></td>
						<td>${eachitem.category}</td>
						<td>${eachitem.freeDelivery}</td>
						<td><a href="/show-edit-menu-item?menuItemId=${eachitem.id}">Edit</a></td>
					</tr>
				</c:forEach>
			</table>

		</div>
	</div>

	<%@ include file="common/footer.jspf"%>

</div>
<%@ include file="common/end-tags.jspf"%>