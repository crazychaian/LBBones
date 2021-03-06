<%@page import="model.DoctorVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2-Real.css" />
<link rel="stylesheet" href="assets/css/memberHome-Real.css" />

<link rel="stylesheet" href="assets/css/updateMemPop-Real.css" />


<link rel="stylesheet" href="assets/css/chat2-Real.css" />


<!-- <link rel="stylesheet" href="assets/css/sss01.css"> -->


<link rel="stylesheet" href="assets/css/memhome-btn-Real.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;600&display=swap" rel="stylesheet">





<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">


<!-- 마우스 -->
<link rel="stylesheet" href="assets/css/style-Real.css">


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	%>


	<div class="maintop">
		<!-- 상단 고정 header -->
		
		
<!-- 버튼 -->
     <form class="btn-four">
	<label ><input onclick="movepage('mainHome-Real.jsp');" class="iptxt" type="radio" name="band" value="fm" ><span class="inputext">INTRO</span></label>
	<label><input onclick="movepage('memberHome-Real.jsp');" class="iptxt" type="radio" name="band" value="am" checked><span class="inputext">TUTORIAL</span></label>
	<label><input onclick="movepage('#price');" class="iptxt" type="radio" name="band" value="am" ><span class="inputext">PRICE</span></label>
	<label ><input onclick="location.href='logoutService'" class="iptxt"  type="radio" name="band" value="lw"><span class="inputext"  >LOGOUT</span></label>
</form>

<!-- 
     <form class="btn-two">
	<label ><input  onClick="location.href='serviceMain.jsp'" class="iptxt" type="radio" name="band" value="fm" ><span class="inputext ">SERVICE<br>RUNNING</span></label>
	<label ><input  onclick="javascript:popOpen3();" class="iptxt"  type="radio" name="band" value="lw"><span class="inputext "  >ACCOUNT<br>MANAGEMENT</span></label>
</form>
		 -->
		
		<!-- div 이동  -->
<script type="text/javascript"> 
function movepage(page) 
{ 
window.document.location.href=page; 
return; 
} 
</script>
		
		
		
		<!-- <section id="header">
			<div class="wrapper">

				<div class="logo">
					<img id="LBBimg" src="images/LBB01.png" alt="Logo">
				</div>
				<ul class="menuList2">
					<li class="s-btn"><label class="switch s-btn">
							<input type="checkbox"> <span class="slider round"></span>
					</label></li>
				</ul>
				<nav class="main-nav">
					<ul class="menuList">
						<li class=""><a style="cursor: pointer" href="mainHome.jsp">Home</a></li>
						<li><a  href="memberHome.jsp" class="">Tutorial</a></li>
						<li><a class="" href="#price">Price</a></li>
						로그아웃되고 시작홈으로 
						<li><a class="" href="mainHome.jsp" onclick="">Logout</a></li>
					</ul>
				</nav>

			</div>
		</section>

		// 상단 고정 header -->




		<!-- 메인 - 서비스 튜토리얼 -->


	 	<div id='btn'>

			<div id="container-btn">

				<div class="button-main leftbt" onClick="location.href='cusListService?doc_id=<%=vo.getDoc_id()%>'">
					<div class="button-inside leftbt">
						<h1 class="btn-name lefth">SERVICE<br>RUNNING</h1>
					</div>
				</div>

				<div class="button-main rightbt" onclick="javascript:popOpen3();">
					<div class="button-inside rightbt">
						<h1 class="btn-name righth">ACCOUNT<br>MANAGEMENT</h1>
					</div>
				</div>

			</div>




		</div> 
	</div>

<!-- 화면 젤 위로 밑으로 -->
<div class="scroll-t-b">
<a href="#" class="top-s" style="color: #ffffff;; cursor: pointer;"><ion-icon name="arrow-up-circle-outline"></ion-icon></a>

<a id="bt-s" style="color:#ffffff;; cursor: pointer;"><ion-icon  name="arrow-down-circle-outline"></ion-icon></a>
</div>

<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
      $( document ).ready( function() {
        $( window ).scroll( function() {
          if ( $( this ).scrollTop() > 200 ) {
            $( '.top-s' ).fadeIn();
          } else {
            $( '.top-s' ).fadeOut();
          }
        } );
        $( '.top-s' ).click( function() {
          $( 'html, body' ).animate( { scrollTop : 0 }, 800 );
          return false;
        } );
      } );
    </script>

<!-- 스크롤 부드럽게 이동 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    
<script>	
$(document).ready(function(){
	$('#bt-s').click(function(){
		var offset = $('#movediv4').offset(); //선택한 태그의 위치를 반환
		                //animate()메서드를 이용해서 선택한 태그의 스크롤 위치를 지정해서 0.4초 동안 부드럽게 해당 위치로 이동함
		 	        $('html').animate({scrollTop : offset.top}, 800);
		});	});

</script>


	<!-- modal 영역 회원정보수정 팝-->
	<div class="modal-bg3" onclick="javascript:popClose3();"></div>
	<div class="modal-wrap3">
		<div class="main-login">
			<div id="tab-menu">
				<div id="tab-btn">
					<ul>
						<li class="" id="ro1"><a href="#">Profile</a></li>
						<li class="" id="ro2"><a href="#">Edit</a></li>
					</ul>
				</div>
				<div id="tab-cont">
					<!-- 로그인 -->
					<div class="btnrange" id="ro11">
						<h1 class="logo-login">Profile</h1>
						<form class="container">
							<input type="text" placeholder="회원이름 : <%=vo.getDoc_name() %>" id="username-mp" class="account" readonly>
							<input type="text" placeholder="병원이름 : <%=vo.getDoc_hospital() %>" id="hospiname-mp" class="account" readonly>
							<input type="text" placeholder="아이디 : <%=vo.getDoc_id() %>" id="id-mp" class="account" readonly>
							<input type="text" placeholder="비밀번호 : <%=vo.getDoc_pw() %>" id="pw-mp" class="account" readonly>
							<input type="text" placeholder="가입날짜 : <%=vo.getDoc_date() %>" id="indate-mp" class="account" readonly>

							<p id="alert" class="account"></p>
						</form>
					</div>


					<!-- 회원가입 -->
					<div class="btnrange" id="ro22">
						<h1 class="logo-login">Edit</h1>
						<form class="container">
						<input type="hidden" id="hosName" class="account ccolor" name="updatedocid" value="<%=vo.getDoc_id()%>"> 
						<input type="text" placeholder="변경할 회원 이름" id="docName" class="account ccolor" name="updatedocname">
						<input type="text" placeholder="변경할 병원 이름" id="hosName" class="account ccolor" name="updatedochospital">
						<input type="text" placeholder="변경할 비밀번호" id="password" class="account ccolor" name="updatedocpw">
							


							<div class="btn-holder">
								<button type="button" class="btn btn-5 hover-border-11" id="login-btn" onclick="updateDoc()">
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

	<!--<div>
		<span class="btn-chat chatfont">CONNECT</span>
		<ion-icon class="btn-chat" name="chatbubble-ellipses-outline"></ion-icon> 
	</div>


	<div class="modal"></div>
	<div class="modal_content" title="클릭하면 창이 닫힙니다.">



		<!-- 회원일때 보이는 상담연결창  -->
	<!--	<ul>
			<li class="c-zone"><a href="#"> <span class="title2 ppp">상담문의하기</span></a>
			</li>
		</ul>

	</div>-->





	<!-- partial:index.partial.html    마우스 커서 모양 -->
	<div id="cursor" class=""
		style="transform: translate3d(1466.5px, 234.4px, 0px);">
		<div class="cursor__circle"
			style="transform: rotate(0deg) scale(1, 1);"></div>
	</div>




<!-- 페이지 새로고침시 스크롤 고정 안되게 -->
<script type="text/javascript">
	window.onload = function(){
		setTimeout(function(){
			scrollTo(0,0);
		},100)
	}
</script>





	<!-- 슬라이드쇼 컨테이너 -->

	<div class="mainall">




		<!-- 페이지 sss01 -->
		<div class="center-al" id="tutorial">


			<h1 class="fontColor">TUTORIAL</h1>

			<div  id='article' style="    margin: 50px;">
				<div class='img'>
					<img class='tutorial001' alt=""
						src="images/page001.png">
				</div>


			</div>
			<div  id='article' style="    margin: 50px;">
				<div class='img'>
					<img class='tutorial002' alt=""
						src="images/page002.png">
				</div>


			</div>
			<div  id='article' style="    margin: 50px;">
				<div class='img'>
					<img class='tutorial003' alt=""
						src="images/page003.png">
				</div>


			</div>
			<div  id='article' style="    margin: 50px;">
				<div class='img'>
					<img class='tutorial004' alt=""
						src="images/page004.png">
				</div>


			</div>
			<div  id='article' style="    margin: 50px;">
				<div class='img'>
					<img class='tutorial005' alt=""
						src="images/lm.png">
				</div>


			</div>

			



		</div>




		<!-- 페이지 sss02 -->
		<div class="" id="price">

			<h1 class="fontColor">PRICE</h1>

			<div id='article' class="pri-page">
				<div class='img'>
				<br>
				     서비스 준비중입니다
				<br>
					<img class='otani' alt="" src="">
				</div>


			</div>

			<div id='article' class="pri-page">
				<div class='img'>
				<br>
				     서비스 준비중입니다
				<br>
					<img class='otani' alt="" src="">
				</div>


			</div>

			<div id='article' class="pri-page">
				<div class='img'>
				<br>
				     서비스 준비중입니다
				<br>
					<img class='otani' alt="" src="">
				</div>


			</div>
		</div>




	</div>

<section class="div4" id="movediv4">

		<div style="padding: 0px 150px 0px 0px;">
			<img alt="healthhub" src="images/hh_logo.png">
		</div>
		<div class="">

			<img alt="team" src="images/lbblogo.png" style="    width: 300px;" class="contfontB">
			<div>
				<br> 최재황   김용태   심가령   김현철   고정훈   김서진
			</div>

		</div>
		<div class="" style="padding: 0px 0px 0px 150px;">

			<img style="width: 200px;" alt="smhrd" src="images/smg_logo.png">

		</div>





	</section>




	<script type="text/javascript">
	

	

	/* 로그인 회원가입 팝업뜨는 js */
	function popOpen3() {

	    var modalPop = $('.modal-wrap3');
	    var modalBg = $('.modal-bg3'); 
	   
	    $(modalPop).show();
	    $(modalBg).show();
	    
	    
	    /* 로그인 회원가입 버튼 */	  
	    var tabBtn = $("#tab-btn > ul > li");     //각각의 버튼을 변수에 저장
	    var tabCont = $("#tab-cont > div");       //각각의 콘텐츠를 변수에 저장

	    //컨텐츠 내용을 숨겨주세요!
	    tabCont.hide().eq(0).show();
	    tabBtn.eq(0).addClass("active");
	    tabBtn.eq(1).removeClass("active");
	    
	    //
	    tabBtn.eq(1).click(
	    	
	      function(){
	    	  tabBtn.eq(0).removeClass("active");       //타겟의 클래스를 추가1
	    	  
	    	  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
	    	  var index = target.index();   //버튼의 순서를 변수에 저장
	  			
	    	  tabBtn.eq(1).addClass("active");       //타겟의 클래스를 추가1
	    	  tabCont.removeClass("active");       //타겟의 클래스를 추가
	    	  tabCont.css("display","none");
	    	  tabCont.eq(index).css("display","flex");
	    	  
	    	  
	    	  
	    });
	    //
	    tabBtn.eq(0).click(
	    		
	      function(){
	    	  
	    	  tabBtn.eq(1).removeClass("active");
	    	  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
	    	  var index = target.index();   //버튼의 순서를 변수에 저장
	  			
	    	  tabBtn.eq(0).addClass("active");       //타겟의 클래스를 추가1
	    	  tabCont.removeClass("active");       //타겟의 클래스를 추가
	    	  tabCont.css("display","none");
	    	  tabCont.eq(index).css("display","flex");
	    	  
	    	  
	    	  
	    });

	   

	}
	
	
	


	 function popClose3() {
	   var modalPop = $('.modal-wrap3');
	   var modalBg = $('.modal-bg3');

	   $(modalPop).hide();
	   $(modalBg).hide();

	}
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
						$('.modal-bg3').hide();
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
	
	 
	 
	 
	 
	 
	 
		</script>
 
	 
	 

















	<script type="text/javascript">
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

		/* 버튼 누르면 원하는 div로 이동 */
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