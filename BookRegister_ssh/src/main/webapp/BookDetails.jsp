<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.book.dao.BookDAO" %>
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
		}
		.right span{
			display: inline-block;
			word-spacing: 10px;
		}
		.right .input{
			height: 30px;
			padding: 5px;
			
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
				<div class="input">
					<span>书名：</span>
					<span>${book.name }</span>
				</div>

				<div class="input">
					<span>类别：</span>
					<span>${book.category }</span>
				</div>
				
				<div class="input">
					<span>作者：</span>
					<span>${book.author }</span>
				</div>

				<div class="input">
					<span>折扣：</span>
					<span>${book.discount }</span>
				</div>

				<div class="input">
					<span>价格：</span>
					<span>${book.price }</span>
				</div>

				<div class="input">
					<span>数量：</span>
					<span>${book.amount }</span>
				</div>

				<div class="input">
					<span>简介：</span>
					<span>${book.introduction }</span>
				</div>

			</div>
		</div>
	</div>
	
</body>
</html>