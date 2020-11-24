
<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container">
	<%@ include file="common/header-with-cart.jspf"%>

	<div class="body">
		<div class="menu-item-heading">
			<h1 class="body-text-heading" id="">Menu Items</h1>
		</div>
		
		<div class="added-message">
			<h3 ><c:if test="${addCartStatus}">Item added to Cart Successfully</c:if></h3>
			
		</div>
		<div id="menu-item-customer-result" class="table-div">
			<table class="table">
				<tr>
					<th>Name</th>
					<th>Free Delivery</th>
					<th>Price</th>
					<th>Category</th>
					<th>Action</th>
				</tr>
				<c:forEach var="item" items="${menuItemListCustomer}">
					<tr>
						<td>${item.name}</td>
						<td>${item.freeDelivery}</td>
						<td>${item.price}</td>
						<td>${item.category}</td>
						<td><a href="/add-to-cart?menuItemId=${item.id}">Add to
								Cart</a></td>
					</tr>

				</c:forEach>
			</table>

		</div>
	</div>


	<%@ include file="common/footer.jspf"%>
</div>
<%@ include file="common/end-tags.jspf"%>