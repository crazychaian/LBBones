<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/myPage.css" />

<title>Insert title here</title>
</head>
<body>

<!-- 마이페이지입니다~~  -->
	
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




	<!--마이페이지-->

<div class="allMain">



	<div class="boss-mp">

			<div class="upper-mp">
				<div style="display: inline-block">
					<button class='btn1-mp' onClick="location.href='serviceMain.jsp'">프로그램 시작</button>
				</div>

				<div class='letter-mp'>
					<h1>계정관리</h1>
				</div>
			</div>



<div class="under-mp">
			<div class="wrapper-mp">


				<div class="img-area">
					<div class="inner-area">
						<img alt="img" src="images/3.png">
					</div>
				</div>
				<div class="icon arrow">
					<i class="far fa-arrow-left"></i>
				</div>
				<div class="icon dots">
					<i class="far fa-ellipsis-v"></i>
				</div>
				<div class="Otani">Otani Shohei</div>
				<div class="about">Orthopedic surgeon</div>
				<div class="social-icons">
					<a class="edit"><img alt="img" src="images/3.png"></a> <a
						class="hospital"><img alt="img" src="images/3.png"></a>

				</div>
				<div class="buttons-mp">
					<p>email123@gmail.com</p>
					<p>010.1234.5678</p>
				</div>


			</div>
			<div class='wrapper2-mp'>
				<table class="info-mp">

					<tr>
						<td>병원이름 :</td>
						<td></td>
					</tr>
					<tr>
						<td>아이디 :</td>
						<td></td>
					</tr>
					<tr>
						<td>비밀번호 :</td>
						<td></td>
					</tr>
					<tr>
						<td>가입날짜 :</td>
						<td></td>
					</tr>
					<tr>
						<td>서비스 등록 날짜 :</td>
						<td></td>
					</tr>
					<tr>
						<td>서비스 이용 기간 :</td>
						<td></td>
					</tr>
					<tr>
						<td>다음 결제일 :</td>
						<td></td>
					</tr>
					<tr>
						<td>결제 방법 :</td>
						<td></td>
					</tr>









				</table>


			</div>


		</div>



	</div>

</div>

</body>
</html>