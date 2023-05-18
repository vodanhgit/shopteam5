<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="ok" method="post">
 <button>OK 1</button>
 <button formmethod="get">OK 2</button>
 <button formaction="ok?x=1">OK 3</button>
 </form>
Kết quả: <h2>${message}</h2>
</body>
</html>