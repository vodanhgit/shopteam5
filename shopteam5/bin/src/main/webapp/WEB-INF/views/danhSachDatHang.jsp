<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Quản lí đơn hàng</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
      crossorigin="anonymous"
    />
        <%@include file="css-danhSachDatHang.jsp" %>
  </head>
  <body>
    <div class="container">
      <article>
        <div class="row">
         
          <div class="col-md-3  mt-3">
            <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <div class="accordion accordion-flush" id="benTrai">
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button
                    class="accordion-button collapsed"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseOne"
                    aria-expanded="false"
                    aria-controls="flush-collapseOne"
                  >
                    Tìm kiếm
                  </button>
                </h2>
                <div
                  id="flush-collapseOne"
                  class="accordion-collapse collapse"
                  data-bs-parent="#benTrai"
                >
                  <div class="accordion-body">
                    <div class="search-container">
                      <input
                        type="text"
                        class="search-input"
                        placeholder="Tìm kiếm mã đơn hàng"
                      />
                      <button class="search-button" type="submit">
                        <i class="fa-solid fa-magnifying-glass fa-bounce"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button
                    class="accordion-button collapsed"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseTwo"
                    aria-expanded="false"
                    aria-controls="flush-collapseTwo"
                  >
                    Lọc theo trạng thái
                  </button>
                </h2>
                <div
                  id="flush-collapseTwo"
                  class="accordion-collapse collapse"
                  data-bs-parent="#benTrai"
                >
                  <div class="accordion-body">
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                      <label class="form-check-label" for="flexCheckDefault1">
                        Hoàn thành đơn hàng
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1" >
                      <label class="form-check-label" for="flexCheckDefault1 ">
                        Hủy đơn hàng
                      </label>
                    </div>
                  </div>
                </div>
              </div>
              <div class="accordion-item" >
                <h2 class="accordion-header">
                  <button
                    class="accordion-button collapsed"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseThree"
                    aria-expanded="false"
                    aria-controls="flush-collapseThree"
                  >
                   Lọc theo ngày
                  </button>
                </h2>
                <div
                  id="flush-collapseThree"
                  class="accordion-collapse collapse"
                  data-bs-parent="#benTrai"
                >
                  <div class="accordion-body">
                    <i class="fa-solid fa-diagram-next"></i>
                  </div>
                </div>
              </div>
              <div class="accordion-item">
                <h2 class="accordion-header">
                  <button
                    class="accordion-button collapsed"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#flush-collapseFour"
                    aria-expanded="false"
                    aria-controls="flush-collapseFour"
                  >
                    Lọc theo loại
                  </button>
                </h2>
                <div
                  id="flush-collapseFour"
                  class="accordion-collapse collapse"
                  data-bs-parent="#benTrai"
                >
                  <div class="accordion-body">
                    <div class="accordion accordion-flush" id="In-accordionFlushExample">
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#In-flush-collapseOne" aria-expanded="false" aria-controls="In-flush-collapseOne">
                            <i class="fa-solid fa-shirt fa-beat-fade" style="color: #000000;"></i>&nbsp Áo
                          </button>
                        </h2>
                        <div id="In-flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#In-accordionFlushExample">
                          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the first item's accordion body.</div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#In-flush-collapseTwo" aria-expanded="false" aria-controls="In-flush-collapseTwo">
                            Quần
                          </button>
                        </h2>
                        <div id="In-flush-collapseTwo" class="accordion-collapse collapse" data-bs-parent="#In-accordionFlushExample">
                          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the second item's accordion body. Let's imagine this being filled with some actual content.</div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#In-flush-collapseThree" aria-expanded="false" aria-controls="In-flush-collapseThree">
                            Accordion Item #3
                          </button>
                        </h2>
                        <div id="In-flush-collapseThree" class="accordion-collapse collapse" data-bs-parent="#In-accordionFlushExample">
                          <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the <code>.accordion-flush</code> class. This is the third item's accordion body. Nothing more exciting happening here in terms of content, but just filling up the space to make it look, at least at first glance, a bit more representative of how this would look in a real-world application.</div>
                        </div>
                      </div>
                    </div>
                   
                  </div>
                </div>
              </div>
            </div></div>
           
          </div>
          <div class="col-md-9" >
            <div class="row mt-3">
              <div class="product-list">
                <div class="col-md-3" >
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <div class="product-card">
                    <img
                      class="product-image"
                      src="/img/ao.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Cotton jersey polo polo shirt</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH001<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                 
                </div>
                <div class="col-md-3">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"><div class="product-card">
                    <img
                      class="product-image"
                      src="/img/quancusi.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Cotton jersey basketball</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH002<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                  
                </div>
                <div class="col-md-3 ">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"><div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Cotton-polyester-shirt-with-embroidery.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Equestrian cotton wool jacquard polo</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH003<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                  
                </div>
                
              </div>
            </div>
            <div class="row mt-3">
              <div class="product-list">
                <div class="col-md-3" >
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Mesh-fabric-zip-jacket.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Mesh fabric zip</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH004<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                 
                </div>
                <div class="col-md-3">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"><div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Mesh-fabric-shorts.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Mesh fabric shorts</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH005<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                  
                </div>
                <div class="col-md-3">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"><div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Mesh-fabric-shorts.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Silk twill equestrian</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH006<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                  
                </div>
                
              </div>
            </div>
            <div class="row mt-3">
              <div class="product-list">
                <div class="col-md-3" >
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Equestrian-print-silk-twill-shorts.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Equestrian print silk twill shorts</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH007<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                 
                </div>
                <div class="col-md-3">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"><div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Cotton-polyester-shirt-with-embroidery.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">Cotton polyester shirt </div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH008<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                  
                </div>
                <div class="col-md-3">
                  <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <div class="product-card">
                    <img
                      class="product-image"
                      src="/img/Light-Cotton-polyester-shirt-with-embroidery.jpg"
                      alt="Product 1"
                    />
                    <div class="product-title">GG technical jersey zip jacket</div>
                    <div class="product-price">$99.99</div>
                    <div class="product-description">
                      Mã đơn hàng: DH009<br>
                      Ngày bán: 22/05/2023 <br />
                      Khách hàng: Nguyễn Minh Quang<br />
                      Trạng thái:
                      <span class="badge text-bg-primary">Hoàn thành tiền mặt</span>
                    </div>
                  </div></div>
                 
                </div>
                
              </div>
            </div>
           
            <div class="row mt-3">
              <div class="container mt-4">
                <nav aria-label="Page navigation">
                 
                    <div class="shadow-lg p-3 mb-5 bg-body-tertiary rounded"> <ul class="pagination">
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                          <span aria-hidden="true"><i class="fa-solid fa-angles-left fa-shake" style="color: #080808;"></i></span>
                        </a>
                      </li>
                      <li class="page-item"><a class="page-link" href="#">1</a></li>
                      <li class="page-item"><a class="page-link" href="#">2</a></li>
                      <li class="page-item"><a class="page-link" href="#">3</a></li>
                      <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                          <span aria-hidden="true"><i class="fa-solid fa-angles-right fa-shake" style="color: #0a0a0a;"></i></span>
                        </a>
                      </li>
                    </ul></div>
                   
                </nav>
              </div>
            </div>
            
          </div>
          
        </div>
      </article>
     
    </div>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js"
      integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js"
      integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
