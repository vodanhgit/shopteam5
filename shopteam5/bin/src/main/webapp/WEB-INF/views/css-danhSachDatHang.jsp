<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

      <style>
/*css của tìm kiếm */
        .search-input {
            width: 180px;
            padding: 5px;
            font-size: 15.5px;
            border: 2px solid #b4babf;
            border-radius: 20px 0 0 20px;
            outline: none;
        }

        .search-button {
            padding: 5px 15px;
            font-size: 16px;
            border: none;
            border-radius: 0 20px 20px 0;
            background-color: #1c1e21;
            color: #fff;
            cursor: pointer;
        }

        .search-button:hover {
            background-color: #9ea3a8;
        }
        .accordion-item{
            background-color: #eff4f5;
        }

       
       
      
  /* css list product*/
        .product-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .product-card {
            max-width: 300px;
            border: 1px solid #ced4da;
            border-radius: 10px;
            padding: 20px;
        }

        .product-image {
            width: 100%;
            height: auto;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .product-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .product-price {
            font-size: 16px;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 10px;
        }

        .product-description {
            font-size: 14px;
            color: #6c757d;
            margin-bottom: 10px;
        }

        .product-list{
            margin-left: 70px;
        }
        .pagination{
            padding-left: 360px;
        }
        .page-link{
            color: #1c1e21;
        }
</style>