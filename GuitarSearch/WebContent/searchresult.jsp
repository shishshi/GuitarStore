<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>吉他</title>
</head>
<body>
 <style type="text/css">
        .tb
        {
         border-width:2px;
         border-collapse:collapse;
         border-color:#669999;
         border-style:solid;
        }
        td
        {
         border-width:2px;
         border-collapse:collapse;
         border-color:#669999;
         border-style:solid;
         text-align:center;
        }
    </style>
</head>
<body>
    <div>
    <table width="600" height="800" border="2" cellpadding="0" cellspacing="0" class="tb"align="center">

<center>搜索结果</center>
<tr>
	<td>厂商</td>
	<td>型号</td>
	<td>类型</td>
	<td>木质</td>
	<td>价格</td>
</tr>

<c:forEach items="${requestScope.list}" var="p">
	<tr>
	<td>${p.builder}</td>
	<td>${p.model}</td>	
	<td>${p.type}</td>
	<td>${p.wood}</td>
	<td>${p.price}</td>	
	</tr>

</c:forEach>




</table>
</div>
</body>
</html>