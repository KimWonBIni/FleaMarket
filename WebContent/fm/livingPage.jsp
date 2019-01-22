<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 리빙 조회 된 페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fashion & beauty</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
 <link rel="stylesheet" href="../fm/style.css" type="text/css">
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script type="text/javascript" src="../fm/script.js"></script>	
 <style>
 	.mainImage{
 		position:relative;
 		width: 100%;
 		height: 100%; 
 	}
 	.block{
 		position: absolute;
 		background-color: black;
 		opacity: 0.3;
 		top: 0px;
 		left: 0px;
 		z-index: 3;
 		width: 100%;
 		height: 100%;
 	}
 	.faImage{
 		width: 100%;
 		height: 100%;
 		position: absolute;
 		top: 0px;
 		left: 0px;
 		z-index: 2;
 	}
 	.fb_text{
 		position: absolute;
 		top: 35%;
 		left:32%;
 		color: white;
 		z-index: 4;
 		font-size: 60pt;
 	}
 	.fb_smallText{
 		position: absolute;
 		top: 60%;
 		left:36%;
 		color: white;
 		z-index: 4;
 		font-size: 13pt;
 	}
 	
 	.goodsList{
 		width: 100%;
 		padding-left: 143px;
 		padding-top: 20px;
 	}
 	.goodsDiv{
 		width: 320.5px;
 		height: 450px;
 		float: left;
 		margin-right: 45.5px;
 		margin-bottom: 57.8px;
 		border: 1px solid #CBCACA;
 		display: inline-block;
 	}
 	.goodsDiv:hover{
 		border: 2px solid #7F7F7F;
 	}
 	.goodsListBox{
 		width: 75%;
 		margin: 0 auto;
 	}
 	.goodsDiv .imageBox{
 		height: 70%;
 		overflow: hidden;
 	}
 	.goodsDiv img{
 		height: 100%;
 		width: auto;
 		display: block;
 		margin: 0 auto;

 	}
 	.goodsListBox:after {
 		 content:""; 
 		 clear:both; 
 		 display:block; 
 	}
 	.pricingContent ul{
    list-style: none;
    padding: 0;
    margin-bottom: 0;
	}
	.pricingContent ul li{
	    border-bottom:1px solid #ededed;
	    color: #9999A5;
	    padding: 10px 0 ;
	}
	.pricingContent ul li:first-child {
	    border-top:1px solid #ededed;
	}
 </style>
</head>
<body>
	<%@include file="../fm/menu.jsp"%>
	<div class="mainImage">
		<p class="fb_text">living</p>
		<p class="fb_smallText">
			살아가면서 한번은 스쳐지나가는 물건들<br>
			가장 가까이 있던 추억마저 파는 플리마켓 living 카테고리
		</p>
		<div class="block"></div>
		<img alt="리빙메인" src="../images/living.png" class="faImage">
	</div>
	<div class="goodsList">
		<div class="goodsListBox">
			<c:forEach items="${lists }" var="list">
				<div class="goodsDiv" onclick="location.href='goodsView.do?num=${list.num}'">
					<div class="imageBox">
						<img alt="상품사진" src="../upload/${list.mainpic}">
					</div>
					<div class="pricingContent">
	                    <ul>
	                        <li><b>제목 :</b> ${list.title }</li>
	                        <li><b>PRICE :</b> ${list.price }</li>
	                        <li><b>판매자 :</b> ${list.userid }</li>
	                    </ul>
                    </div>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@include file="../fm/footer.jsp"%>
</body>
</html>