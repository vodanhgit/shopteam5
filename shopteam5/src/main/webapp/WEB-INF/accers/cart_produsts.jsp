<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<style>
	.table>th{
		font-size: 20px ;
		text-align: center;
		font-weight: bold;
	}
	.check{
		width: 40px;
		height: 40px;
	}
/* 	.canle>td{ */
/* 		vertical-align: middle; */
/* 	} */
	.canle{
		vertical-align: middle;
	}
</style>
			<div class="container shopping-cart">
				<div class="row">
					<div class="col-md-12">
						<h3 class="title">Giỏ hàng</h3>
						<div class="clearfix"></div>
						<table class="table table-bordered">
							<thead>
								<tr class="table">
									<th>Chọn</th>
									<th>Hình ảnh</th>
									<th>Thông tin sản phẩm</th>
									<th>Giá</th>
									<th>Số lượng</th>
									<th>Thành tiền</th>
									<th>Xóa</th>
								</tr>
							</thead>
							<tbody>
								<tr>
								<td style="vertical-align: middle; text-align: center;"><input type="checkbox" class="check"></td>
								
									<td style="vertical-align: middle; text-align: center;"><img src="images/products/small/products-06.png"
										alt="" width="80px"></td>
									<td style="vertical-align: middle;display: flex;justify-content: center;align-items: center;">
										<div class="shop-details">
											<div class="productname">Lincoln Corner Unit Products</div>
											<!--                         <p> -->
											<!--                           <img alt="" src="images/star.png"> -->
											<!--                           <a class="review_num" href="#"> -->
											<!--                             02 Review(s) -->
											<!--                           </a> -->
											<!--                         </p> -->
											<div class="color-choser">
												<span class="text"> Màu sắc : </span>
												<ul>
													<li><p > Đen </p></li>
													<p>
													Kích cỡ : <strong class="pcode"> S </strong>
												</p>
												</ul>
												
											</div>
											
											<p>
												Mã sản phẩm : <strong class="pcode"> SP01 </strong>
											</p>
										</div>
									</td>
									<td style="vertical-align: middle; text-align: center;">
										<h5>200.000VNĐ</h5>
									</td>
									<td style="vertical-align: middle; text-align: center;"><input type="number" style="width: 100%"> <!--                       <select name=""> -->
										<!--                         <option selected value="1"> --> <!--                           1 -->
										<!--                         </option> --> <!--                         <option value="1"> -->
										<!--                           2 --> <!--                         </option> -->
										<!--                         <option value="1"> --> <!--                           3 -->
										<!--                         </option> --> <!--                       </select> -->
									</td>
									<td style="vertical-align: middle; text-align: center;">
										<h5>
											<strong class="red"> 200.000VNĐ </strong>
										</h5>
									</td>
									<td style="vertical-align: middle; text-align: center;"><a href="#"> <img src="images/remove.png" alt="">
									</a></td>
								</tr>


								

								
							</tbody>
							<tfoot>
								<tr>
									<td colspan="7">
										<button class="pull-left">Tiếp tục mua sắm</button>
										<button class=" pull-right">Cập nhật giỏ hàng</button>
									</td>
								</tr>
							</tfoot>
						</table>
						<div class="clearfix"></div>
						
					
					</div>
				</div>
				<div class="clearfix"></div>
					 <%@include file="/WEB-INF/accers/nhanhang.jsp" %>
			</div>
