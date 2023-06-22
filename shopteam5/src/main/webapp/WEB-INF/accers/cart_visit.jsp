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
  
  .modal {
      display: none; /* Ẩn modal ban đầu */
      position: fixed; /* Vị trí cố định */
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0, 0, 0, 0.5); /* Màu nền với độ mờ 50% */
      overflow: hidden; /* Ẩn thanh cuộn */
    }
    
    .modal-content {
      background-color: #fff;
      border-radius: 5px;
      width: 300px;
      padding: 20px;
      position: absolute;
      top: 50%;
      left: 50%;
      transform: translate(-50%, -50%); /* Canh giữa */
      overflow: auto; /* Cho phép cuộn nội dung trong modal */
    }
    
    .close-button {
      position: absolute;
      top: 10px;
      right: 10px;
      cursor: pointer;
    }
</style> 
<div class="container shopping-cart">
	<div class="row">
		<div class="col-md-12">
		
			<center><h3 class="title">Thông tin đơn hàng</h3></center>
			
		
			<div class="clearfix">	
			<form action="/kiemtrakhuyenmai" method="post">
					<h5 style="margin-top: 2%;">Nhập mã khuyến mãi:</h5>
					<label style=" margin-top: 1%; color: red;">${thongbaokhuyenmai}</label>
					<br>
						<input style="height: 30px; "name="makhuyenmai" value="${makhuyenmai}" placeholder="MKM(Không bắt buộc)">
						<button type="submit" onclick="showNotification()">Kiểm tra</button>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hình thức thanh toán: Thanh toán khi nhận hàng
				</form>
<%-- 				<center> --%>
				
<%-- 				</center> --%>
				</div>
				
			<div class="row">
			<form action="/thanhtoan" method="post">
			<div class="col-md-3 col-sm-4">
					<div class="shippingbox">
					<input type="hidden" value="${makhuyenmai}"name="makhuyenmai">
						<h5>Thông tin người mua</h5>
						
							<label> Tên * </label>
<!-- 							<select class="" name="tinh_diachi" style="margin-top: 2%;"> -->
<!-- 								<option value="tỉnh Sóc Trăng">Sóc Trăng</option> -->
	
							<input style="height: 30px; margin-top: 2%; "name="ten_nguoimua"  required id="inputField5">
							 <label>Số điện thoại * </label > 
	
							<input style="height: 30px; margin-top: 2%; "name="sdt_nguoimua" pattern="[0-9]{10}" title="Vui lòng nhập số điện thoại 10 số" required id="inputField6">
							
						
					</div>
					<h5>Ghi chú:</h5>
					<textarea rows="" cols="" style="width: 100%; height: 100px" name="ghichu" id="inputField4"></textarea>
				
				</div>
					
				<div class="col-md-3 col-sm-5">
					<div class="shippingbox">
						<h5>Địa chỉ vận chuyển</h5>
						
							<label> Tỉnh/ Thành phố * </label>
<!-- 							<select class="" name="tinh_diachi" style="margin-top: 2%;"> -->
<!-- 								<option value="tỉnh Sóc Trăng">Sóc Trăng</option> -->


<select  class="" name="tinh_diachi" style="margin-top: 2%;"> <option value="tỉnh An Giang">An Giang</option> <option value="tỉnh Bà Rịa – Vũng Tàu">Bà Rịa – Vũng Tàu</option> <option value="tỉnh Bắc Giang">Bắc Giang</option> <option value="tỉnh Bắc Kạn">Bắc Kạn</option> <option value="tỉnh Bạc Liêu">Bạc Liêu</option> <option value="tỉnh Bắc Ninh">Bắc Ninh</option> <option value="tỉnh Bến Tre">Bến Tre</option> <option value="tỉnh Bình Định">Bình Định</option> <option value="tỉnh Bình Dương">Bình Dương</option> <option value="tỉnh Bình Phước">Bình Phước</option> <option value="tỉnh Bình Thuận">Bình Thuận</option> <option value="tỉnh Cà Mau">Cà Mau</option> <option value="tỉnh Cần Thơ">Cần Thơ</option> <option value="tỉnh Cao Bằng">Cao Bằng</option> <option value="tỉnh Đắk Lắk">Đắk Lắk</option> <option value="tỉnh Đắk Nông">Đắk Nông</option> <option value="tỉnh Điện Biên">Điện Biên</option> <option value="tỉnh Đồng Nai">Đồng Nai</option> <option value="tỉnh Đồng Tháp">Đồng Tháp</option> <option value="tỉnh Gia Lai">Gia Lai</option> <option value="tỉnh Hà Giang">Hà Giang</option> <option value="tỉnh Hà Nam">Hà Nam</option> <option value="tỉnh Hà Nội">Hà Nội</option> <option value="tỉnh Hà Tĩnh">Hà Tĩnh</option> <option value="tỉnh Hải Dương">Hải Dương</option> <option value="tỉnh Hải Phòng">Hải Phòng</option> <option value="tỉnh Hậu Giang">Hậu Giang</option> <option value="tỉnh Hoà Bình">Hoà Bình</option> <option value="tỉnh Hưng Yên">Hưng Yên</option> <option value="tỉnh Khánh Hòa">Khánh Hòa</option> <option value="tỉnh Kiên Giang">Kiên Giang</option> <option value="tỉnh Kon Tum">Kon Tum</option> <option value="tỉnh Lai Châu">Lai Châu</option> <option value="tỉnh Lâm Đồng">Lâm Đồng</option> <option value="tỉnh Lạng Sơn">Lạng Sơn</option> <option value="tỉnh Lào Cai">Lào Cai</option> <option value="tỉnh Long An">Long An</option> <option value="tỉnh Nam Định">Nam Định</option> <option value="tỉnh Nghệ An">Nghệ An</option> <option value="tỉnh Ninh Bình">Ninh Bình</option> <option value="tỉnh Ninh Thuận">Ninh Thuận</option> <option value="tỉnh Phú Thọ">Phú Thọ</option> <option value="tỉnh Phú Yên">Phú Yên</option> <option value="tỉnh Quảng Bình">Quảng Bình</option> <option value="tỉnh Quảng Nam">Quảng Nam</option> <option value="tỉnh Quảng Ngãi">Quảng Ngãi</option> <option value="tỉnh Quảng Ninh">Quảng Ninh</option> <option value="tỉnh Quảng Trị">Quảng Trị</option> <option value="tỉnh Sóc Trăng">Sóc Trăng</option> <option value="tỉnh Sơn La">Sơn La</option> <option value="tỉnh Tây Ninh">Tây Ninh</option> <option value="tỉnh Thái Bình">Thái Bình</option> <option value="tỉnh Thái Nguyên">Thái Nguyên</option> <option value="tỉnh Thanh Hóa">Thanh Hóa</option> <option value="tỉnh Thừa Thiên Huế">Thừa Thiên Huế</option> <option value="tỉnh Tiền Giang">Tiền Giang</option> <option value="tỉnh Trà Vinh">Trà Vinh</option> <option value="tỉnh Tuyên Quang">Tuyên Quang</option> <option value="tỉnh Vĩnh Long">Vĩnh Long</option> <option value="tỉnh Vĩnh Phúc">Vĩnh Phúc</option> <option value="tỉnh Yên Bái">Yên Bái</option> <option value="tỉnh Phú Thọ">Phú Thọ</option> <option value="thành phố Cần Thơ">Cần Thơ</option> <option value="thành phố Đà Nẵng">Đà Nẵng</option> <option value="thành phố Hải Phòng">Hải Phòng</option> <option value="thành phố Hà Nội">Hà Nội</option> <option value="thành phố Hồ Chí Minh">Hồ Chí Minh</option> </select>

							</select >
							 <label> Quận / Huyện * </label > 
	
							<input style="height: 30px; margin-top: 2%; color: red; "name="huyen_diachi"  required id="inputField1">
						
							<label> Xã / Thị trấn * </label> 
							<input style="height: 30px; margin-top: 2%; color: red; "name="xa_diachi"  required id="inputField2">

							<label> Ấp, số nhà * </label>
							<input style="height: 30px; margin-top: 2%; color: red; "name="apsonha_diachi" required id="inputField3">
<!-- 							</select > <label> Quận / Huyện * </label >  -->
<!-- 							<select class="" name="huyen_diachi" style="margin-top: 2%;"> -->

<!-- 								<option value="huyện Long Phú">Long Phú</option> -->
<!-- 							</select> <label> Xã / Thị trấn * </label>  -->
<!-- 							<select class="" name="xa_diachi" style="margin-top: 2%;"> -->

<!-- 								<option value="xã Hậu Thạnh">Hậu Thạnh</option> -->
<!-- 							</select> -->
<!-- 							<label> Ấp, số nhà * </label> -->
<!-- 							<input style="height: 30px; margin-top: 2%;"name="apsonha_diachi"> -->
							<div class="clearfix"></div>
							<!--                       <button> -->
							<!--                         Xác nhận địa chỉ -->
							<!--                       </button> -->
						
					</div>
				</div>
				<div class="col-md-6 col-sm-10">
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
          <c:forEach var="itemsProductShow" items="${itemsProductvisit.content}"> 
            <tr> 
              <td style="vertical-align: middle; text-align: center;">
                <img src="images/products/large/${itemsProductShow.sanPham1.hinhAnh}" alt="" width="80px">
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
                      <p> Kích cỡ : <span class="pcode" style="color: black"> ${itemsProductShow.size} </span> </p> 
                    </ul> 
                  </div> 
                  <p> Mã sản phẩm : <span class="pcode" style="color: black"> ${itemsProductShow.sanPham1.maSanPham} </span> </p> 
                </div> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <h5>
                	 <fmt:formatNumber value="${itemsProductShow.gia}" currencySymbol="VNĐ" type="currency" />
                	
                </h5> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
              <label style="font-size: 20px; ">${itemsProductShow.soLuong}</label>
<%--                 <input type="number" style="width: 100%" value="${itemsProductShow.soLuong}" min="1"> --%>
<%--                 <input type="number" style="width: 100%" class="input-quantity" value="1" min="1" data-price="${itemsProductShow.sanPham1.gia}"> --%>
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
              
                <h5> <strong > <fmt:formatNumber value="${itemsProductShow.gia*itemsProductShow.soLuong}" currencySymbol="VNĐ" type="currency" /></strong> </h5> 
              </td> 
            </tr> 
            
          </c:forEach> 
          
        </tbody> 
        <tfoot> 
          <tr> 
            <td colspan="7"> 
              <p class="pull-left" style="color: red; font-size: 20px">Tổng tiền:</p> 
              <p class="pull-right" style="color: red; font-size: 20px">
              	<fmt:formatNumber value="${tongtien}" currencySymbol="VNĐ" type="currency" />
              </p> 
              
            </td> 
            </tr> 
            
           <tr style="border: none;"> 
           <td colspan="7" style="text-align: center;">
             <div><p>Trang số: ${itemsProductvisit.number+1}</p></div>
				<div>
				
					<c:forEach var="pagetr" begin="0" end="${itemsProductvisit.totalPages-1}">
						<a href="/cart_visit?p=${pagetr}" style="font-size: 25px; font-weight: lighter;">${pagetr + 1}&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
			</td> 
          </tr> 
        </tfoot> 
      </table> 
				</div>
				
				
				<div class="col-md-12 col-sm-16" style="margin-top: 2%; text-align: center;">
				<p>Vui lòng nhập chính xác thông tin! Để việc giao hàng được diễn ra tốt nhất!.</p>
					<button class="button" type="submit">Mua hàng</button>
				</div>
				</form>
			
			</div>
			
			
		</div>
		
	</div>
</div>
<!-- <div id="myModal" class="modal"> -->
<!--     <div class="modal-content"> -->
<!--       <button class="close-button">&times;</button> -->
<!--       <h2>!!!!!</h2> -->
<!--       <p>Vui lòng nhập chính xác thông tin! Để việc giao hàng được diễn ra tốt nhất!.</p> -->
<!--     </div> -->
<!--   </div> -->
<script>
window.addEventListener('DOMContentLoaded', function() {
    var inputElement1 = document.getElementById("inputField1");
    var inputElement2 = document.getElementById("inputField2");
    var inputElement3 = document.getElementById("inputField3");
    var inputElement4 = document.getElementById("inputField4");
    var inputElement5 = document.getElementById("inputField5");
    var inputElement6 = document.getElementById("inputField6");
    
    inputElement1.value = sessionStorage.getItem("paramValue1") || "";
    inputElement2.value = sessionStorage.getItem("paramValue2") || "";
    inputElement3.value = sessionStorage.getItem("paramValue3") || "";
    inputElement4.value = sessionStorage.getItem("paramValue4") || "";
    inputElement5.value = sessionStorage.getItem("paramValue5") || "";
    inputElement6.value = sessionStorage.getItem("paramValue6") || "";

    inputElement1.addEventListener('input', function() {
      sessionStorage.setItem("paramValue1", inputElement1.value);
    });
    
    inputElement2.addEventListener('input', function() {
      sessionStorage.setItem("paramValue2", inputElement2.value);
    });
    
    inputElement3.addEventListener('input', function() {
      sessionStorage.setItem("paramValue3", inputElement3.value);
    });
    
    inputElement4.addEventListener('input', function() {
      sessionStorage.setItem("paramValue4", inputElement4.value);
    });
    
    inputElement5.addEventListener('input', function() {
      sessionStorage.setItem("paramValue5", inputElement5.value);
    });
    
    inputElement6.addEventListener('input', function() {
      sessionStorage.setItem("paramValue6", inputElement6.value);
    });
    
  });
//     window.addEventListener('DOMContentLoaded', function() {
//         var modal = document.getElementById("myModal");
//         var closeButton = document.querySelector(".close-button");
        
//         modal.style.display = "block"; // Hiển thị modal khi trang được tải
        
//         closeButton.addEventListener("click", function() {
//           modal.style.display = "none"; // Ẩn modal khi nút tắt được click
//         });
//       });
// function showNotification() {
//       alert("${thongbaokhuyenmai}");
//     }
// 	document.addEventListener('DOMContentLoaded', function() {
//     alert("${thongbaokhuyenmai}");
//   });
  </script>