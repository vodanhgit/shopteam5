<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> --%>
<%-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> --%>
<%-- <%@ taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="/public/images/logo-ico.svg" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Category</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 p-4 shadow"
				style="background-color: #0a3d62; height: 100vh">
				<div class="d-flex justify-content-center">
					<a class="navbar-brand" href="#"> <img alt="logo"
						src="/public/images/logo-ico.svg" width="100" height="100">
					</a>
				</div>
				<hr>
				<div class="list-group">
					<p class="text-secondary fw-bold">Components</p>
					<a href="/admin"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gauge-high fs-6 px-1"></i></span> Dash board
					</a> <a href="/admin/accounts/index"
						class="list-group-item list-group-item-action border-0"
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-user fs-6 px-1"></i></span> Accounts
					</a> <a href="/admin/products/index"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-cart-shopping fs-6 px-1"></i></span> Products
					</a> <a href="/admin/categories/index"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-share-nodes fs-6 px-1"></i></span> Categories
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span>
							<i class="fa-solid fa-money-check-dollar fs-6 px-1"></i>
					</span> Payments
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span>
							<i class="fa-solid fa-arrow-down-9-1 fs-6 px-1"></i>
					</span> Sale off
					</a> <a href="/admin/orders/index"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-truck-fast fs-6 px-1"></i></span> Orders
					</a> <a href="/admin/order-details/index"
						class="list-group-item list-group-item-action border-0  "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-calendar-check fs-6 px-1"></i></span> Order details
					</a>
					<p class="text-secondary fw-bold">Extras</p>
					<a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-message fs-6 px-1"></i></span> Feedbacks
					</a> <a href="#"
						class="list-group-item list-group-item-action border-0 "
						style="background-color: #0a3d62; color: #dcdde1"> <span><i
							class="fa-solid fa-gear fs-6 px-1"></i></span> Settings
					</a>
				</div>
			</div>
			<div class="col-10 px-0">
				<nav class="navbar navbar-expand-lg shadow-sm"
					style="background-color: #ffffff">
					<div class="container-fluid">
						<a class="navbar-brand" href="#">Navbar w/ text</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarText"
							aria-controls="navbarText" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarText">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="#">Features</a>
								</li>
								<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
								</li>
							</ul>
							<span class="navbar-text" id="dropAccount" role="button"
								data-bs-toggle="dropdown" aria-expanded="false"> <sec:authorize
									access="isAuthenticated()">
									<span> Welcome <sec:authentication
											property="principal.username" />
									</span>
								</sec:authorize> <i class="fa-solid fa-user fs-4"></i>
							</span>
							<ul class="dropdown-menu" aria-labelledby="dropAccount"
								style="left: auto; right: 10px">
								<li><a class="dropdown-item" href="/home">Home</a></li>
								<li><a class="dropdown-item" href="/logout">Log out</a></li>
							</ul>
						</div>
					</div>
				</nav>
				<div class="bg-light p-3">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb mb-0">
							<li class="breadcrumb-item"><a href="/admin">Admin</a></li>
							<li class="breadcrumb-item active" aria-current="page">Categories</li>
						</ol>
					</nav>
				</div>
				<div class="px-4 p-3">
					<div class="row">
						<div class="col-3">
							<button class="btn btn-info text-white" data-bs-toggle="modal"
								data-bs-target="#modalAdd">Add new</button>
							<!-- Modal add -->
							<div class="modal fade" id="modalAdd" data-bs-backdrop="static"
								data-bs-keyboard="false" tabindex="-1"
								aria-labelledby="staticBackdropLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h5 class="modal-title" id="staticBackdropLabel">Add a
												new category</h5>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form:form action="/admin/categories/store" method="post"
												modelAttribute="category">
												<div>
													<label>Name</label>
													<form:input path="name" class="form-control" />
												</div>
												<div>
													<label>Descriptions</label>
													<form:input path="descriptions" class="form-control" />
												</div>
												<button class="btn btn-primary w-100 mt-3" id="liveToastBtn">Add</button>
												<div class="position-fixed top-0 end-0 p-5"
													style="z-index: 11">
													<div style="background-color: #2ecc71" id="liveToast"
														class="toast align-items-center text-white border-0"
														role="alert" aria-live="assertive" aria-atomic="true">
														<div class="d-flex">
															<div class="toast-body">Successful !</div>
															<button type="button"
																class="btn-close btn-close-white me-2 m-auto"
																data-bs-dismiss="toast" aria-label="Close"></button>
														</div>
													</div>
												</div>
											</form:form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-3 offset-6">
							<a type="button" class="btn btn-primary"
								href="/admin/category/excel"> <i
								class="fa-solid fa-file-excel"></i> <span>Export to excel</span>
							</a>
						</div>
						<div class="table-responsive mt-5" style="overflow-x: auto">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th>ID</th>
										<th>Name</th>
										<th>Descriptions</th>
										<th colspan="2">Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${ data.content }" var="cate">
										<tr>
											<td>${ cate.id }</td>
											<td>${ cate.name }</td>
											<td>${ cate.descriptions }</td>
											<td>
												<button class="btn btn-primary" data-bs-toggle="modal"
													data-bs-target="#modalUpdate_${cate.id }">
													<i class="fa-solid fa-pen-to-square"></i>
												</button> <!-- Modal update -->
												<div class="modal fade" id="modalUpdate_${cate.id}"
													data-bs-backdrop="static" data-bs-keyboard="false"
													tabindex="-1" aria-labelledby="staticBackdropLabel"
													aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header bg-info">
																<h5 class="modal-title text-white"
																	id="staticBackdropLabel">Update a category</h5>
																<button type="button" class="btn"
																	data-bs-dismiss="modal" aria-label="Close">
																	<i class="fa-solid fa-xmark fs-5 text-white"></i>
																</button>
															</div>
															<div class="modal-body">
																<form:form
																	action="/admin/categories/update/${ cate.id }"
																	method="post" modelAttribute="category">
																	<div>
																		<label>Name</label>
																		<form:input path="name" class="form-control"
																			value="${ cate.name }" />
																	</div>
																	<div>
																		<label>Descriptions</label>
																		<form:input path="descriptions" class="form-control"
																			value="${ cate.descriptions }" />
																	</div>
																	<button class="btn btn-primary w-100 mt-3"
																		id="liveToastBtn">Update</button>
																	<div class="position-fixed top-0 end-0 p-5"
																		style="z-index: 11">
																		<div style="background-color: #2ecc71" id="liveToast"
																			class="toast align-items-center text-white border-0"
																			role="alert" aria-live="assertive" aria-atomic="true">
																			<div class="d-flex">
																				<div class="toast-body">Successful !</div>
																				<button type="button"
																					class="btn-close btn-close-white me-2 m-auto"
																					data-bs-dismiss="toast" aria-label="Close"></button>
																			</div>
																		</div>
																	</div>
																</form:form>
															</div>
														</div>
													</div>
												</div>
											</td>
											<td class="text-center">
												<button class="btn btn-danger" data-bs-toggle="modal"
													data-bs-target="#modalDelte_${cate.id }">
													<i class="fa-solid fa-trash-can"></i>
												</button> <!-- Modal delete -->
												<div class="modal fade" id="modalDelte_${cate.id}"
													data-bs-backdrop="static" data-bs-keyboard="false"
													tabindex="-1" aria-labelledby="staticBackdropLabel"
													aria-hidden="true">
													<div class="modal-dialog">
														<div class="modal-content">
															<div class="modal-header bg-danger">
																<h5 class="modal-title text-white"
																	id="staticBackdropLabel">Delete a category !</h5>
																<button type="button" class="btn"
																	data-bs-dismiss="modal" aria-label="Close">
																	<i class="fa-solid fa-xmark fs-5 text-white"></i>
																</button>
															</div>
															<div class="modal-body" style="background-color: #fff2df">
																<p>Warning : You are trying a category. This
																	category will be permanently deleted !</p>
																<a role="button"
																	href="/admin/categories/delete/${ cate.id }"
																	class="btn btn-danger w-100 "> Delete </a>
															</div>
														</div>
													</div>
												</div>
											</td>

										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>


						<div class="row">
							<ul class="pagination justify-content-center">
								<c:forEach var="index" begin="0" end="${ data.totalPages - 1 }">
									<li class="page-item mx-1"><a
										class="page-link ${ index==page?'bg-black text-white':'' }"
										href="/admin/categories/index?page=${ index }">${ index + 1 }</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		var option = {
			animation : true,
			delay : 5000
		}
		document.getElementById("liveToastBtn").onclick = function() {
			var myAlert = document.getElementById("liveToast");
			var bsAlert = new bootstrap.Toast(myAlert, option);
			bsAlert.show();
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>