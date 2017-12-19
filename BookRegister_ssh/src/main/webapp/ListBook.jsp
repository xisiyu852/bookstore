<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>标题</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<style>
		*{ margin: 0; padding: 0; list-style: none;}
		.outer{
			width: 1000px;
			height: 600px;
			margin: 20px auto;
			border: 2px black solid;
			font-size: 20px;
			overflow: hidden;
		}
		h1{
			height: 100px;
			line-height: 100px;
			text-align: center;
			border-bottom: 2px black solid;
		}
		.content{
			overflow: hidden;
			border-top: 2x black solid;
		}
		.left{
			float: left;
			padding-top: 20px;
			width: 20%;
			height: 700px;
			border-right: 2px black solid;
		}
		.left a{
			display: block;
			height: 40px;
			line-height: 40px;
			text-align: center;
		}
		.right{
			float: left;
			padding-top: 20px;
			padding-left: 50px;
			width: 70%;
			height: 400px;
			overflow: auto;
		}
		.right table{
			border: 1px black solid;
			border-collapse:collapse;
			width: 600px;
		}
		.right table td,th{
			width: 110px;
			height: 40px;
			text-align: center;
			border: 1px black solid;
		}
	</style>
</head>
<body>
	
	<div class="outer">
		<h1>书籍库存登记系统（V1.0）</h1>
		<div class="content">
			<div class="left">
				<a href="Index.html">首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</a>
				<a href="BookRegister.jsp">入库登记</a>
				<a href="getBooksAction">库存列表</a>
			</div>
				
			<div class="right">
				<table>
					<tr>
						<th>编号</th>
						<th>书名</th>
						<th>作者</th>
						<th>价格</th>
						<th>数量</th>
						<th>详情</th>
					</tr>
					<c:set value="${books }" var="lists"></c:set>
					<c:forEach items="${lists }" var="book" varStatus="num">
						<tr>
						<td>${book.bid }</td>
						<td>${book.name }</td>
						<td>${book.author }</td>
						<td>${book.price }</td>
						<td>${book.amount }</td>
						<td><a href="${pageContext.request.contextPath }/getBookAction?bid=${num.count }">详情</a></td>
					</tr>
					</c:forEach>
					
					
				</table>
			</div>
		</div>
	</div>
</body>
</html>