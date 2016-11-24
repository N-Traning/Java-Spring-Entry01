<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="css/bookmgr.css" />
<title>書籍一覧画面</title>
</head>
<body>

<h1>書籍一覧画面</h1>

<table>
<tr><th>id</th><th>isbn</th><th>name</th><th>price</th></tr>

<c:forEach items="${books}" var="book" varStatus="status">
	<tr>
		<td><c:out value="${book.id}"/></td>
		<td><c:out value="${book.isbn}"/></td>
		<td><c:out value="${book.name}"/></td>
		<td><c:out value="${book.price}"/></td>
	</tr>
</c:forEach>
</table>

<hr />
<a href="main">書籍管理メイン画面</a>

</body>
</html>