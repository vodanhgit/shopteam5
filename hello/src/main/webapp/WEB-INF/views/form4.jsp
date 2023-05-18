<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/product4/save" method="post">
 Name:<input name="name">
 Price: <input name="price">
 <button>Save</button>
</form>
<ul>
 <li>${p.name}</li>
 <li>${p.price }</li>
</ul>
<ul>
 <li>${sp.name}</li>
 <li>${sp.price}</li>
 </ul>
<ul>
<c:forEach var="item" items="${ls_product}">
 <li>${item.name}</li>
 <li>${item.price}</li>
</c:forEach>
</ul>
</body>
</html>