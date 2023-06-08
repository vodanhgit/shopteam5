<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hóa đơn</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
      body {
    padding: 20px;
    
}

h1 {
    margin-bottom: 30px;
}
.container{
  border: 2px solid rebeccapurple;
}
table {
    margin-bottom: 30px;
    border: 2px solid rgb(25, 24, 26);
}

.btn {
    margin-top: 20px;
}

    </style>
</head>
<body>
  

  
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h1 class="text-center">Hóa đơn</h1>
                <hr>
                <div class="row">
                    <div class="col-xs-6" >
                        <h4>Người mua: Nguyễn Minh Quang</h4>
                        <p>Mã hóa đơn: HD01</p>
                        <p>Tên shop: Shopteam5</p>
                        <p>Địa chỉ: Bình Dương</p>
                        <p>Số điện thoại: 123-XXX-456</p>
                        <p>Ngày đặt hàng: 22-05-2023</p>
                    </div>
                  
                </div>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Kích thước</th>
                            <th>Số lượng</th>
                            <th>Đơn giá</th>
                            <th>Tổng</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Quần xì lọt khe</td>
                            <td>XL</td>
                            <td>2</td>
                            <td>10.000đ</td>
                            <td>20.000đ</td>
                        </tr>
                        <tr>
                            <td>Áo 10 lỗ</td>
                            <td>XL</td>
                            <td>2</td>
                            <td>10.000đ</td>
                            <td>20.000đ</td>
                        </tr>
                        <tr>
                            <td colspan="4" class="text-right">Tổng cộng:</td>
                            <td>35.000đ</td>
                        </tr>
                    </tbody>
                </table>
                <div class="text-center">
                    <button class="btn btn-primary">In hóa đơn</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
