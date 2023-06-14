<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style> 
  .table>th { 
    font-size: 20px; 
    text-align: center; 
    font-weight: bold; 
  } 
  .check { 
    width: 40px; 
    height: 40px; 
  } 
  .canle { 
    vertical-align: middle; 
  } 
</style> 
<div class="container shopping-cart">
	<div class="row">
		<div class="col-md-12">
			<h3 class="title">Thông tin đơn hàng</h3>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="shippingbox">
						<h5>Địa chỉ vận chuyển</h5>
						<form>
							<label> Tỉnh/ Thành phố * </label> <select class="">

								<option value="hsoctrang">Sóc Trăng</option>
							</select> <label> Quận / Huyện * </label> <select class="">

								<option value="hlongphu">Long Phú</option>
							</select> <label> Xã / Thị trấn * </label> <select class="">

								<option value="xhauthanh">Hậu Thạnh</option>
							</select>
							<div class="clearfix"></div>
							<!--                       <button> -->
							<!--                         Xác nhận địa chỉ -->
							<!--                       </button> -->
						</form>
					</div>
				</div>
				<!--                 <div class="col-md-4 col-sm-6"> -->
				<!--                   <div class="shippingbox"> -->
				<!--                     <h5> -->
				<!--                       Discount Codes -->
				<!--                     </h5> -->
				<!--                     <form> -->
				<!--                       <label> -->
				<!--                         Enter your coupon code if you have one -->
				<!--                       </label> -->
				<!--                       <input type="text" name=""> -->
				<!--                       <div class="clearfix"> -->
				<!--                       </div> -->
				<!--                       <button> -->
				<!--                         Get A Qoute -->
				<!--                       </button> -->
				<!--                     </form> -->
				<!--                   </div> -->
				<!--                 </div> -->
				<div class="col-md-8 col-sm-12">
					<table class="table table-bordered"> 
        <thead> 
          <tr class="table"> 
            <th>Hình ảnh</th> 
            <th>Thông tin sản phẩm</th> 
            <th class="price">Giá</th> 
            <th>Số lượng</th> 
            <th>Thành tiền</th> 
          </tr> 
        </thead> 
        <tbody> 
          <c:forEach var="itemsProductShow" items="${itemsProductvisit}"> 
            <tr> 
              <td style="vertical-align: middle; text-align: center;">
                <img src="images/products/small/products-06.png" alt="" width="80px">
              </td> 
              <td style="vertical-align: middle;display: flex;justify-content: center;align-items: center;"> 
                <div class="shop-details"> 
                  <div class="productname">${itemsProductShow.sanPham1.tenSanPham}</div> 
                  <div class="color-choser"> 
                    <span class="text"> Màu sắc : </span> 
                    <ul> 
                      <li>
                        <p> ${itemsProductShow.mau} </p>
                      </li> 
                      <p> Kích cỡ : <strong class="pcode"> ${itemsProductShow.size} </strong> </p> 
                    </ul> 
                  </div> 
                  <p> Mã sản phẩm : <strong class="pcode"> ${itemsProductShow.sanPham1.maSanPham} </strong> </p> 
                </div> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <h5>${itemsProductShow.gia}VNĐ</h5> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <input type="number" style="width: 100%" value="${itemsProductShow.soLuong}" min="1">
<%--                 <input type="number" style="width: 100%" class="input-quantity" value="1" min="1" data-price="${itemsProductShow.sanPham1.gia}"> --%>
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
              
                <h5> <strong > ${itemsProductShow.gia*itemsProductShow.soLuong} VNĐ </strong> </h5> 
              </td> 
            </tr> 
            
          </c:forEach> 
          
        </tbody> 
        <tfoot> 
          <tr> 
            <td colspan="7"> 
              <p class="pull-left" style="color: red; font-size: 20px">Tổng tiền:</p> 
              <p class="pull-right" style="color: red; font-size: 20px">0 VNĐ</p> 
            </td> 
          </tr> 
        </tfoot> 
      </table> 
				</div>
				
				<div class="col-md-12 col-sm-16">
				<h5>Ghi chú:</h5>
					<textarea rows="" cols="" style="width: 100%; height: 100px"></textarea>
				</div>
				<div class="col-md-12 col-sm-16" style="margin-top: 2%; text-align: center;">
					<button class="button">Mua hàng</button>
				</div>
			</div>
		</div>
	</div>
</div>

