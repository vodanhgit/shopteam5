<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
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
  
<!--   <form action="/cart_visit" method="post" > -->
    <div class="col-md-12"> 
      <h3 class="title">Giỏ hàng</h3> 
      <div class="clearfix"></div> 
      
      <table class="table table-bordered"> 
        <thead> 
          <tr class="table"> 
<!--             <th>Chọn</th>  -->
            <th>Hình ảnh</th> 
            <th>Thông tin sản phẩm</th> 
            <th class="price">Giá</th> 
            <th>Số lượng</th> 
            <th>Thành tiền</th> 
            <th>Xóa</th> 
          </tr> 
        </thead> 
        <tbody> 
          <c:forEach var="itemsProductShow" items="${itemsProduct.content}"> 
           <form action="/cart_update/${itemsProductShow.id_ChiTiet}" method="post">
           
            <tr> 
<!--               <td style="vertical-align: middle; text-align: center;"> -->
<!--                 <input type="checkbox" class="check" name="selectedItems"> -->
<!--               </td>  -->
              <td style="vertical-align: middle ; text-align: center;">
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
                      <p> Kích cỡ : <strong class="pcode"> ${itemsProductShow.size} </strong> </p> 
                    </ul> 
                  </div> 
                  <p> Mã sản phẩm : <strong class="pcode"> ${itemsProductShow.sanPham1.maSanPham} </strong> </p> 
                </div> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <h5>
                	<fmt:formatNumber value="${itemsProductShow.gia}" currencySymbol="VNĐ" type="currency" />
                	
                </h5> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <input name="idgio" value="${itemsProductShow.gioHang1.ID_Gio}" style="display: none;">
              	
                <input type="number" style="width: 100%"  min="1" name="qty" value="${itemsProductShow.soLuong}" onblur="this.form.submit()">
             	
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
              
                <h5> <strong class="red">
                	<fmt:formatNumber value="${itemsProductShow.gia*itemsProductShow.soLuong}" currencySymbol="VNĐ" type="currency" />
                </strong> </h5> 
              </td> 
              <td style="vertical-align: middle; text-align: center;"> 
                <a href="/cart_detele/${itemsProductShow.id_ChiTiet}"> 
                  <img src="images/remove.png" alt=""> 
                </a>
              </td> 
            </tr> 
            </form>
          </c:forEach> 
          
        </tbody> 
        <tfoot> 
          <tr> 
            <td colspan="7"> 
              <a class="pull-left button" href="/index">Tiếp tục mua sắm</a> 
<!--               <button class="pull-right">Cập nhật giỏ hàng</button>  -->
			 <div class="pull-right" ><p>Trang số: ${itemsProduct.number+1}</p></div>
				<div class="pull-right" >
				
					<c:forEach var="pagetr" begin="0" end="${itemsProduct.totalPages-1}">
						<a href="/cart_products?p=${pagetr}" style="font-size: 25px; font-weight: lighter;">${pagetr + 1}&nbsp;&nbsp;&nbsp;</a>
					</c:forEach>
				
				
			 
            </td> 
          </tr> 
        </tfoot> 
      </table> 
      <center style="color: red">${thongbaosoluong}</center>
      <div class="shippingbox" style="vertical-align: middle; text-align: center;"> 
        <div> 
          <h5>Tổng tiền:</h5> 
          <span style="color: red; font-size: 2em ; font-weight: bold;"> 
          		<fmt:formatNumber value="${tongtien}" currencySymbol="VNĐ" type="currency" />
          </span> 
        </div>
<%--         </c:forEach>  --%>
        <br><br> 
        <div>
        

<!-- <form id="checkoutForm" action="/cart/checkout" method="post"> -->
<!-- 	<input type="hidden" id="selectedItems" name="selectedItems"> -->
<!-- 	<input type="hidden" id="totalPrice" name="totalPrice"> -->
<!-- 	<button type="submit" class="btn btn-success btn-lg" onclick="checkout()">Mua hàng</button>  -->
                            
<!-- </form> -->

	<a class="button" href="/cart_visit">Mua hàng</a>

        </div> 
      </div> 
      <div class="clearfix"></div> 
      
      
    </div> 
  </div> 
  <div class="clearfix"></div> 
  <%@include file="/WEB-INF/accers/nhanhang.jsp" %> 
</div>
<script>
        function checkout() {
            var checkboxes = document.getElementsByClassName("check");
            var selectedItems = [];
            var totalPrice = 0;
            var selectedCount = 0; // Biến đếm số sản phẩm được chọn

            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    var itemId = checkboxes[i].value;
                    selectedItems.push(itemId);
                    selectedCount++; // Tăng biến đếm khi có sản phẩm được chọn
                    var row = checkboxes[i].parentNode.parentNode;
                    var price = row.querySelector(".price").innerText;
                    var quantity = row.querySelector("input[name='qty']").value;
                    var itemTotalPrice = parseFloat(price) * parseInt(quantity);
                    totalPrice += itemTotalPrice;
                }
            }

            if (selectedCount === 0) {
                alert("Vui lòng chọn ít nhất một sản phẩm.");
                return;
            }

            document.getElementById("selectedItems").value = JSON.stringify(selectedItems);
            document.getElementById("totalPrice").value = totalPrice.toFixed(2);

            document.getElementById("checkoutForm").submit();
        }
    </script>
