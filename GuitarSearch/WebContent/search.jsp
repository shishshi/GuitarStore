<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search</title>
</head>
<style>
            .center{
                position: fixed;
                top: 45%;
                right:15%;
                bottom:45%;
                left:15%;
                text-align: center;
                border: 2px solid  #669999;
            }
            .centerContent{
                position: absolute;
                top: 30%;
                bottom: 50%;
                left:15%
            }
        </style>
<body>
<form action="http://localhost:8080/GuitarSearch/search" method="get">
<div class="center">
<span class="centerContent">
请选择您想要的吉他类型：
<select name="type" style="width:150px;height:23px">
<option value ="古典吉他">古典吉他</option>
<option value ="民谣吉他">民谣吉他</option>
<option value ="电吉他">电吉他</option>
</select>
<input type="submit" value="搜索" style="background-color:#5EA2A2;width:50px;height:23px;color:white"/>
</span>
</div>
</form>
</body>
</html>