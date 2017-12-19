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
		}
		.right .error{
			font-size: 16px;
			color: red;
		}
		.right span{
			display: inline-block;
			word-spacing: 10px;
		}
		.right .input{
			height: 30px;
			padding: 5px;
		}
		.right input{
			display: inline-block;
			height: 20px;
			line-height: 20px;
		}
		.right .part1,#textarea{
			width: 400px;
		}
		.right .part2{
			width: 100px;
		}
		#btn1,#btn2{
			text-align: center;
			margin-left: 80px;
			width: 100px;
			height: 35px;
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
				<div class="error">
					<c:if test="${not empty errors }">
						<c:forEach items="${errors }" var="err">
							${err }<br>
						</c:forEach>
					</c:if>
				</div>
				<form method="post" action="${pageContext.request.contextPath }/addBookAction">
					
					<div class="input">
						<span>书名：</span>
						<input type="text" name="name" class="part1" value="${param.name }" required>
					</div>
	
					<div class="input">
						<c:set var="categorys" value="科学,教育,文学,生活,其他"></c:set>
						<span>类别：</span>
						<c:forEach items="${categorys }" var="cate">
							<input type="checkbox" name="category" value="${cate }" 
								<c:forEach items="${paramValues.category }" var="cat">
									<c:if test= "${cat == cate }">
										checked
									</c:if>
								</c:forEach>>
							<span>${cate }</span>
						</c:forEach>
					</div>
					<div class="input">
						<span>作者：</span>
						<input type="text" name="author" class="part1" value="${param.author }" required>
					</div>
	
					<div class="input">
						<c:set var="discounts" value="全价,九折,八折,七折,六折"></c:set>
						<span>折扣：</span>
						<c:forEach items="${discounts }" var="disc">
							<input type="radio" name="discount" value="${disc }" 
								<c:if test="${param.discount == disc}">
									checked
								</c:if>
							required>
							<span>${disc }</span>
						</c:forEach>
					</div>
	
					<div class="input">
						<span>价格：</span>
						<input type="number" name="price"  class="part2" value="${param.price }" required>
					</div>
	
					<div class="input">
						<span>数量：</span>
						<input type="number" name="amount"  class="part2" value="${param.amount }" required>
					</div>
	
					<div class="input">
						<span>简介：</span>
						<textarea name="introduction" id="textarea" value="${param.introduction }" placeHolder="请在此书写简介（字数在 1-100 之间）"></textarea>
					</div>
	
					<div class="input">
						<input type="submit" name="" value="登记" id="btn1">
						<input type="reset" name="" value="取消" id="btn2">
					</div>
				</form>
			</div>	
		</div>
	</div>
	
</body>
</html>