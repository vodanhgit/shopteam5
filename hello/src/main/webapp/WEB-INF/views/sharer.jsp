<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
<tr>
<th>Name</th>
<th>Value</th>
</tr>

<tr>
<th>String</th>
<th>${string}</th>
</tr>

<tr>
<th>message</th>
<th>${message}</th>
</tr>

<tr>
<th>now</th>
<th>${now}</th>
</tr>

<tr>
<th>date</th>
<th>${date}</th>
</tr>

<tr>
<th>account</th>
<th>${account.getUsername()} - ${account.getPassword()}</th>
</tr>

<tr>
<th>user</th>
<th>${user.getUsername()} - ${user.getPassword()}</th>
</tr>
</table>
</body>
</html>