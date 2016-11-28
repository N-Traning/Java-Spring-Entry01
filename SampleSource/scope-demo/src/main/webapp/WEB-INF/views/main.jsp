<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main画面</title>
</head>
<body>

<h1>カウンタ画面</h1>

<p> 現在の Counter は..  <c:out value="${counter}" /> </p>

</body>
</html>