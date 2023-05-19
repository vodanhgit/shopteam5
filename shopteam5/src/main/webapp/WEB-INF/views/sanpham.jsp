<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="icon" href="/public/images/logo-ico-small.svg" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/bootstrap/css/ui.css" rel="stylesheet">



    <link href="assets/bootstrap/css/all.min.css" rel="stylesheet">
    <title>Shoes shop</title>
</head>
<style>
    Scrollbar CSS html *::-webkit-scrollbar {
        border-radius: 0;
        width: 8px;
    }

    html *::-webkit-scrollbar {
        border-radius: 0;
        width: 8px;
    }

    html *::-webkit-scrollbar-thumb {
        background-color: rgba(0, 0, 0, .15);
    }

    html *::-webkit-scrollbar-thumb {
        background-color: rgba(0, 0, 0, .15);
    }

    html *::-webkit-scrollbar-track {
        border-radius: 0;
        background-color: rgba(0, 0, 0, 0);
    }

    html *::-webkit-scrollbar-track {
        border-radius: 0;
        background-color: rgba(0, 0, 0, 0);
    }
</style>

<body>
    <div class="container-fluid">
      
        <!-- <%-- Service --%> -->
        <div class="container mt-5 border rounded">
            <div class="row">
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="images/exchange-svgrepo-com.svg" height="45" width="45">
                    <div>Exchange</div>
                </div>
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="images/free-shipping-svgrepo-com.svg" height="45" width="45">
                    <div>Free ship</div>
                </div>
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="images/award-quality-svgrepo-com.svg" height="45" width="45">
                    <div>Quality</div>
                </div>
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="images/flash-svgrepo-com.svg" height="45" width="45">
                    <div>Cheap</div>
                </div>
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="/images/shipping-fast-solid-svgrepo-com.svg" height="45" width="45">
                    <div>Fast shipping</div>
                </div>
                <div class="col-2 d-flex justify-content-center align-items-center p-3">
                    <img alt="exchange" src="images/operator-customer-service-svgrepo-com.svg" height="45" width="45">
                    <div>CSKH</div>
                </div>
            </div>
        </div>
        <!-- <%-- Main --%> -->
        <section class="section-main bg padding-y">
            <div class="container">

                <div class="row">
                    <h3>Danh Mục</h3>
                    <aside class="col-md-3">

                        <nav class="card">
                            <ul class="menu-category">
                                <li><a href="#">Tất cả</a></li>
                                <li><a href="#">Áo thun</a></li>
                                <li><a href="#">Áo sơ mi dài tay</a></li>
                                <li><a href="#">Áo sơ mi ngắn tay</a></li>
                                <li><a href="#">Áo Polo</a></li>
                                <li><a href="#">Áo len</a></li>
                                <li><a href="#">Áo Nỉ & Hoodie</a></li>
                                <li class="has-submenu"><a href="#">Quần</a>
                                    <ul class="submenu">
                                        <li><a href="#">Quần Dài</a></li>
                                        <li><a href="#">Quần Đùi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </aside> <!-- col.// -->
                    <div class="col-md-9">
                        <article class="banner-wrap">
                            <img src="assets/images/2.jpg" class="w-100 rounded">
                        </article>
                    </div> <!-- col.// -->
                </div> <!-- row.// -->
            </div> <!-- container //  -->
        </section>
        <!-- ========================= SECTION MAIN END// ========================= -->

        <!-- ========================= SECTION  ========================= -->
        <section class="section-name padding-y-sm">
            <div class="container">

                <header class="section-heading">
                    <a href="#" class="btn btn-outline-primary float-end">See all</a>
                    <h3 class="section-title">Sản Phẩm Đang Giảm Giá</h3>
                </header><!-- sect-heading -->


                <div class="row">
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/1.jpg">
                               
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Just another product name</a>
                                <div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/2.jpg">
                            </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Some item name here</a>
                                <div class="price mt-1">$280.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/3.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Great product name here</a>
                                <div class="price mt-1">$56.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/4.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Just another product name</a>
                                <div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/5.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Just another product name</a>
                                <div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/6.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Some item name here</a>
                                <div class="price mt-1">$280.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/7.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Great product name here</a>
                                <div class="price mt-1">$56.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                    <div class="col-md-3">
                        <div href="#" class="card card-product-grid">
                            <a href="#" class="img-wrap"> <img src="assets/images/items/9.jpg"> </a>
                            <figcaption class="info-wrap">
                                <a href="#" class="title">Just another product name</a>
                                <div class="price mt-1">$179.00</div> <!-- price-wrap.// -->
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                </div> <!-- row.// -->

            </div><!-- container // -->
        </section>
        <!-- <%-- Footer --%> -->
        <div class="row mt-5 p-4" style="background-color: #0a3d62">
            <div class="col-4 text-center">
                <img alt="logo" src="/public/images/logo-ico-small.svg">
                <p style="color: #dcdde1">FPT Polytechnic Shopping</p>
            </div>
            <div class="col-4">
                <p class="text-white fw-bold">INFORMATION</p>
                <p style="color: #dcdde1">About Us</p>
                <p style="color: #dcdde1">Delivery Information</p>
                <p style="color: #dcdde1">Privacy Policy</p>
                <p style="color: #dcdde1">Terms and Conditions</p>
                <p style="color: #dcdde1">Returns</p>
                <p style="color: #dcdde1">Gift Certificates</p>
            </div>
            <div class="col-4">
                <p class="text-white fw-bold">CONTACT US</p>
                <form action="">
                    <label for="exampleFormControlInput1" class="form-label" style="color: #dcdde1">Email
                        address</label> <input type="email" class="form-control" id="exampleFormControlInput1"
                        placeholder="name@example.com">
                    <button type="button" class="btn btn-primary w-100 mt-2">Send</button>
                </form>
            </div>
            <hr>
            <p class="text-center text-white fw-bold">Copyright by Shopteam5</p>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>