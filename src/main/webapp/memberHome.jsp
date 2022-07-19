<%@page import="model.DoctorVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/memberHome.css" />
<link rel="stylesheet" href="assets/css/updateMemPop.css" />
<link rel="stylesheet" href="assets/css/chat2.css" />
<link rel="stylesheet" href="assets/css/sss01.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<!-- 마우스 -->
<link rel="stylesheet" href="assets/css/style.css">

<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	%>


	<div class="maintop">
		<!-- 상단 고정 header -->
		<section id="header">
			<div class="wrapper">

				<div class="logo">
					<img id="LBBimg" src="images/LBB01.png" alt="Logo">
				</div>
				<ul class="menuList2">
					<li class="s-btn"><label class="switch s-btn"> <input
							type="checkbox"> <span class="slider round"></span>
					</label></li>
				</ul>
				<nav class="main-nav">
					<ul class="menuList">
						<li class=""><a style="cursor: pointer" href="mainHome.jsp">Home</a></li>
						<li><a class="" href="memberHome.jsp">Tutorial</a></li>
						<li><a class="" href="">Price</a></li>
						<!-- 로그아웃되고 시작홈으로  -->
						<li><a class="" href="logoutService">Logout</a></li>
					</ul>
				</nav>

			</div>
		</section>

		<!-- // 상단 고정 header -->




		<!-- 메인 - 서비스 튜토리얼 -->


		<div id='btn'>

			<div id="container-btn">

				<%
				if (vo == null) {
				%>
				<%
				} else {
				%>

				<div class="button-main" onclick="location.href='cusListService?doc_id=<%=vo.getDoc_id()%>'">
					<div class="button-inside">
						<h1 class="btn-name">SERVICE RUNNING</h1>
					</div>
				</div>

				<div class="button-main" onclick="popOpen3()">
					<div class="button-inside">
						<h1 class="btn-name">ACCOUNT MANAGEMENT</h1>
					</div>
				</div>
				<%
				}
				%>

			</div>



		</div>
	</div>





	<!-- modal 영역 회원정보수정 팝-->
	<div class="modal-bg3" onclick="javascript:popClose3();"></div>
	<div class="modal-wrap3">
		<div class="main-login">
			<div id="tab-menu">
				<div id="tab-btn">
					<ul>
						<li class="" id="ro1"><a type="button" onclick="popOpen3()">Profile</a></li>
						<li class="" id="ro2"><a type="button" onclick="popOpen4()">Edit</a></li>
					</ul>
				</div>
				<div id="tab-cont">
					<!-- 로그인 -->
					<div class="btnrange" id="ro11">
						<h1 class="logo-login">Profile</h1>
						<form class="container">
							<input type="text" placeholder="회원이름 : <%=vo.getDoc_name()%>"
								id="username-mp" class="account" readonly> <input
								type="text" placeholder="병원이름 : <%=vo.getDoc_hospital()%>"
								id="hospiname-mp" class="account" readonly> <input
								type="text" placeholder="아이디 : <%=vo.getDoc_id()%>" id="id-mp"
								class="account" readonly> <input type="text"
								placeholder="비밀번호 : <%=vo.getDoc_pw()%>" id="pw-mp"
								class="account" readonly> <input type="text"
								placeholder="가입날짜 : <%=vo.getDoc_date()%>" id="indate-mp"
								class="account" readonly>

							<p id="alert" class="account"></p>
						</form>
					</div>


					<!-- 회원가입 -->
					<div class="btnrange" id="ro22">
						<h1 class="logo-login">Edit</h1>
						<form class="container">
							<input type="hidden" id="hosName" class="account ccolor"
								name="updatedocid" value="<%=vo.getDoc_id()%>"> <input
								type="text" placeholder="변경할 회원 이름" id="docName"
								class="account ccolor" name="updatedocname"> <input
								type="text" placeholder="변경할 병원 이름" id="hosName"
								class="account ccolor" name="updatedochospital"> <input
								type="text" placeholder="변경할 비밀번호" id="password"
								class="account ccolor" name="updatedocpw">



							<div class="btn-holder">
								<button type="button" class="btn btn-5 hover-border-11" id="login-btn"
									onclick="updateDoc()">
									<span>정보수정</span>
								</button>
							</div>
							<p id="alert" class="account"></p>
						</form>
					</div>

				</div>
			</div>





		</div>
	</div>









	<!-- 상담 연결 채팅 -->

	<div>
		<span class="btn-chat chatfont">CONNECT</span>
		<!-- <ion-icon class="btn-chat" name="chatbubble-ellipses-outline"></ion-icon> -->
	</div>


	<div class="modal"></div>
	<div class="modal_content" title="클릭하면 창이 닫힙니다.">



		<!-- 회원일때 보이는 상담연결창  -->
		<ul>
			<li class="c-zone"><a href="#"> <span class="title2 ppp">상담문의하기</span></a>
			</li>
		</ul>

	</div>





	<!-- partial:index.partial.html    마우스 커서 모양 -->
	<div id="cursor" class=""
		style="transform: translate3d(1466.5px, 234.4px, 0px);">
		<div class="cursor__circle"
			style="transform: rotate(0deg) scale(1, 1);"></div>
	</div>




	<!-- 슬라이드쇼 컨테이너 -->

	<div class="mainall">

		<!-- 페이지 sss01 -->
		<div class="center-al" id="tutorial">


			<h1 class="fontColor">TUTORIAL</h1>

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




		</div>

		<!-- 페이지 sss02 -->
		<div class="" id="price">

			<h1 class="fontColor">PRICE</h1>

			<div id='article'>
				<div class='img'>
					<img class='otani' alt="" src="images/LBB01.png">
				</div>


			</div>

			<div id='article'>
				<div class='img'>
					<img class='otani' alt="" src="images/LBB01.png">
				</div>


			</div>

			<div id='article'>
				<div class='img'>
					<img class='otani' alt="" src="images/LBB01.png">
				</div>


			</div>
		</div>




	</div>





	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
		/* 로그인 회원가입 팝업뜨는 js */

		function popOpen3() {
			$('.modal-wrap3').show();

			$("#tab-cont > div").hide().eq(0).show();
			$("#tab-btn > ul > li").eq(0).addClass("active");
			$("#tab-btn > ul > li").eq(1).removeClass("active");
		}

		function popOpen4() {
			$('.modal-wrap').show();

			$("#tab-cont > div").hide().eq(1).show();
			$("#tab-btn > ul > li").eq(1).addClass("active");
			$("#tab-btn > ul > li").eq(0).removeClass("active");
		}

		$(document).mouseup(function(e) {
			var modalwrap = $(".modal-wrap3");
			if (modalwrap.has(e.target).length === 0) {
				modalwrap.hide();
			}
		});
		/*// 로그인 회원가입 팝업뜨는 js */

		function updateDoc() {

			let updatedocid = $('input[name=updatedocid]');
			let doc_id = $(updatedocid[0]).val();
			let updatedocpw = $('input[name=updatedocpw]');
			let doc_pw = $(updatedocpw[0]).val();
			let updatedocname = $('input[name=updatedocname]');
			let doc_name = $(updatedocname[0]).val();
			let updatedochospital = $('input[name=updatedochospital]');
			let doc_hospital = $(updatedochospital[0]).val();
			console.log(doc_id);
			console.log(doc_pw);
			console.log(doc_name);
			console.log(doc_hospital);

			$.ajax({
				url : 'docUpdateService',
				type : 'post',
				dataType : 'json',
				data : {
					"doc_id" : doc_id,
					"doc_pw" : doc_pw,
					"doc_name" : doc_name,
					"doc_hospital" : doc_hospital
				},
				success : function(cnt) {
					if (cnt > 0) {
						$('.modal-wrap3').hide();
						alert("회원 정보 수정 성공하였습니다.")
					} else {
						$('.modal-wrap3').show();

						$("#tab-cont > div").hide().eq(1).show();
						$("#tab-btn > ul > li").eq(1).addClass("active");
						$("#tab-btn > ul > li").eq(0).removeClass("active");
						alert("회원 정보 수정 실패하였습니다.")
					}

				},
				error : function() {
					alert("에러 발생")
				}

			});
		}
		
		
		
		/*  채팅창 보이는 기능 */

		$(function() {

			$(".btn-chat").click(function() {
				$(".modal").fadeIn();
				$(".modal_content").fadeIn();
			});

			$(".modal").click(function() {
				$(".modal").fadeOut();
				$(".modal_content").fadeOut();
			});

		});
		
		function serviceStart(a) {
			location.href = "cusListService?doc_id="+a;
		}
	</script>

	<script src="assets/js/script.js"></script>


	<script type="text/javascript" src="assets/js/sss01.js"></script>



	<!-- 메인화면 넘어가는 js -->
	<!-- 	<script type="text/javascript" src="assets/js/mainSlide.js"></script> -->


	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule=""
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>
</html>