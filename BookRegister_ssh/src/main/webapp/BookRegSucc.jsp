<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		.right h2{
			text-align: center;
			height: 40px;
			line-height: 40px;
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
				<h2>登记成功</h2>
			</div>
		</div>
	</div>
</body>
</html>