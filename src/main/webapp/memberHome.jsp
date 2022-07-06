<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/memberHome.css" />
<link rel="stylesheet" href="assets/css/chat.css" />


<title>Insert title here</title>
</head>
<body>


	<!-- 상단 고정 header -->
	<section id="header">
		<div class="wrapper">

			<div class="logo">
				<img id="LBBimg" src="images/LBB01.png" alt="Logo">
			</div>
			<ul class="menuList2">
				<li class="s-btn"><label class="switch s-btn"> <input type="checkbox"> <span class="slider round"></span>
				</label></li>
			</ul>
			<nav class="main-nav">
				<ul class="menuList">
					<li class=""><a style="cursor: pointer" href="mainHome.jsp">Home</a></li>
					<li><a href="#" href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="#"  onclick="">Price</a></li>
					<li><a class="" href="mainHome.jsp" onclick="">Logout</a></li>
				</ul>
			</nav>

		</div>
	</section>

	<!-- // 상단 고정 header -->




	<!-- 메인 - 서비스 튜토리얼 -->

	<h3 class="fontColor">"한국병원" 오늘도 화이팅!</h3>
	<div id='btn'>
		<div style="display: inline-block">

			<button type="button" class='btn1'  onClick="location.href='serviceMain.jsp'">프로그램 시작</button>
		</div>
		<div style="display: inline-block">
			<button type="button" class='btn2'  onClick="location.href='myPage.jsp'">계정관리</button>

		</div>
	</div>

	<hr  class="fontColor">

	<div class='letter'>

		<h1  class="fontColor">서비스 튜토리얼</h1>

	</div>

	<div id='article'>
		<div class='img'>
			<img class='otani' alt=""
				src="https://newsimg.hankookilbo.com/cms/articlerelease/2021/06/29/62813426-6496-4aee-b90b-55adbbfc25a0.jpg">
		</div>


	</div>

	<div id='article'>
		<div class='img'>
			<img class='otani' alt=""
				src="https://newsimg.hankookilbo.com/cms/articlerelease/2021/06/29/62813426-6496-4aee-b90b-55adbbfc25a0.jpg">
		</div>


	</div>

	<div id='article'>
		<div class='img'>
			<img class='otani' alt=""
				src="https://newsimg.hankookilbo.com/cms/articlerelease/2021/06/29/62813426-6496-4aee-b90b-55adbbfc25a0.jpg">
		</div>

		
	</div>

	<div id='article'>
		<div class='img'>
			<img class='otani' alt=""
				src="https://newsimg.hankookilbo.com/cms/articlerelease/2021/06/29/62813426-6496-4aee-b90b-55adbbfc25a0.jpg">
		</div>

	</div>








</body>
</html>