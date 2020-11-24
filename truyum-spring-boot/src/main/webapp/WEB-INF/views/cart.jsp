
<%@ include file="common/taglibs-and-head.jspf"%>
<div class="container">
	<%@ include file="common/header-with-cart.jspf"%>
	<div class="body">
		<h1 class="body-text-heading">Cart</h1>
		<div id="cart-result">
			<table class="table">
				<tr>
					<th>Name</th>
					<th>Free Delivery</th>
					<th>Price</th>
					<th></th>
				</tr>
				<c:forEach var="cartItem" items="cart">
					<tr>
						<td>${cartitem.name}</td>
						<td><c:if test="${cartitem.freeDelivery}">Yes</c:if><c:otherwise>No</c:otherwise></td>
						<td>${cartItem.price}</td>
						<td><a href="/remove-cart-item?menuItemId=${item.id}"></a> </td>
					</tr>
				</c:forEach>
				
			</table>
		
		</div>
	</div>

	<%@ include file="common/footer.jspf"%>
</div>
<%@ include file="common/end-tags.jspf"%>