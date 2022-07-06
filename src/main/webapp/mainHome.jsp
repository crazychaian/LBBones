<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header.css" />
<link rel="stylesheet" href="assets/css/signInUp.css" />
<link rel="stylesheet" href="assets/css/mainSlide.css" />
<link rel="stylesheet" href="assets/css/chat.css" />




<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
					<li class="home"><a style="cursor: pointer" href="mainHome.jsp">Home</a></li>
					
					<!-- 비회원일때 -->
					<li><a href="#" class="btn-open signin" id="p01" onclick="javascript:popOpen();">Sign in</a></li>
					<li><a class="signup" href="#" id="p02" onclick="javascript:popOpen2();">Sign up</a></li>
					
						<!-- 회원일떄 -->
				<!--	<li><a href="#" class="">Tutorial</a></li>
						<li><a class="" href="#"  onclick="">Price</a></li>
						<li><a class="" href="#" onclick="">Logout</a></li>			 -->
						
				</ul>
			</nav>

		</div>
	</section>



	<!-- 로그인 회원가입 버튼 누르면 보여지는 창 -->

	<!-- 전체 레이아웃 -->


	<!-- modal 영역 -->
	<div class="modal-bg" onclick="javascript:popClose();"></div>
	<div class="modal-wrap">
		<div class="main-login">
			<div id="tab-menu">
				<div id="tab-btn">
					<ul>
						<li class="" id="ro1"><a href="#">s i g n i n</a></li>
						<li class="" id="ro2"><a href="#">s i g n u p</a></li>
					</ul>
				</div>
				<div id="tab-cont">
					<!-- 로그인 -->
					<div class="btnrange" id="ro11">
						<h1 class="logo-login">Sign in</h1>
						<form class="container">
							<input type="text" placeholder="ID" id="id" class="account">
							<input type="password" placeholder="Password" id="password" class="account">

							<div class="btn-holder">
								<button type="submit" class="btn btn-5 hover-border-11" id="login-btn">
									<span>l o g i n</span>
								</button>
							</div>

							<p id="alert" class="account"></p>
						</form>
					</div>


					<!-- 회원가입 -->
					<div class="btnrange" id="ro22">
						<h1 class="logo-login">Sign up</h1>
						<form class="container">
							<input type="text" placeholder="ID" id="id" class="account">
							<input type="password" placeholder="Password" id="password" class="account"> <input type="text" placeholder="Nick Name" id="nickName" class="account"> <input type="text" placeholder="Hospital Name" id="hosName" class="account">


							<div class="btn-holder">
								<button class="btn btn-5 hover-border-11" id="login-btn">
									<span>S i g n U p</span>
								</button>
							</div>
							<p id="alert" class="account"></p>
						</form>
					</div>

				</div>
			</div>





		</div>
	</div>
	<!-- //modal 영역 -->








	<!-- 메인 내용 바뀌는 곳 -->



	<!-- 슬라이드쇼 컨테이너 -->
	<div class="outer">
		<div class="inner-list" style="width: 6336px; margin-left: 0px;">
			<div class="inner" style="width: 2112px;">
				<div class="page1 ">
					<div class="ma1">
						<img alt="img" src="images/back.png">
					</div>
				</div>
			</div>
			<div class="inner" style="width: 2112px;">
				<div class="page1 ">
					<div class="ma2">
						<img alt="img" src="images/3.png">
					</div>
				</div>
			</div>
			<div class="inner" style="width: 2112px;">
				<div class="page1 ">
					<div class="ma3">
						<img alt="img" src="images/1.png">
					</div>
				</div>
			</div>
		</div>
	</div>



<div class="btnbtn button-list">
	<div id="btn1" class="btn b1 button-left">
	  <span>Hover me!</span> 
	</div>
	<div id="btn1" class="btn b2 button-right">
	  <span>Hover me!</span> 
	</div>
</div>


	<br>
	<!-- 현재 이미지를 알려주는 하단의 점 -->
	<div style="text-align: center">
		<span class="dot" onclick="currentSlide(1)"></span> <span class="dot" onclick="currentSlide(2)"></span> <span class="dot" onclick="currentSlide(3)"></span>
	</div>


	<!-- 상담 연결 채팅 -->
	<div class="chatbox">
		<input type="checkbox" id="chaticon"> <label for="chaticon" id="chatIcon"> <span><ion-icon name="chatbubble-ellipses-outline" role="img" class="md hydrated" aria-label="chatbubble ellipses outline"></ion-icon></span>
		</label>

		<div class="chatbar" id="chatID">
			<div class="click-chatbar">

				<!-- 비회원일때 보이는 마이페이지 -->

				<ul>
					<li class="c-zone"><a href="#0"> <span class="c-title">상담을
								위해선 로그인이 필요해요</span>
					</a></li>
				</ul>

				<!-- 회원일때 보이는 상담연결창 -->
				<ul>
					<li class="c-zone"><a href="#"> <span class="title2 ppp">상담
								문의하기</span>
					</a></li>
				</ul>


			</div>
		</div>



	</div>






	<script type="text/javascript">

	/* 로그인 회원가입 팝업뜨는 js */
	function popOpen() {

	    var modalPop = $('.modal-wrap');
	    var modalBg = $('.modal-bg'); 
	   
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
	/* 로그인 회원가입 팝업뜨는 js */
	function popOpen2() {

	    var modalPop = $('.modal-wrap');
	    var modalBg = $('.modal-bg'); 
	   
	    $(modalPop).show();
	    $(modalBg).show();
	    var tabBtn = $("#tab-btn > ul > li");     //각각의 버튼을 변수에 저장
	    var tabCont = $("#tab-cont > div");       //각각의 콘텐츠를 변수에 저장
	    
	    
	    /* 로그인 회원가입 버튼 */	  

	    //컨텐츠 내용을 숨겨주세요!
	    tabCont.hide().eq(1).show();
	    tabBtn.eq(1).addClass("active");
	    tabBtn.eq(0).removeClass("active");
	   
	    
	    
	    //
	    tabBtn.eq(0).click(
	      function(){
	    	  tabBtn.eq(1).removeClass("active");       //타겟의 클래스를 추가1
	    	  
	    	  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
	    	  var index = target.index();   //버튼의 순서를 변수에 저장
	  			
	    	  tabBtn.eq(0).addClass("active");       //타겟의 클래스를 추가1
	    	  tabCont.removeClass("active");       //타겟의 클래스를 추가
	    	  tabCont.css("display","none");
	    	  tabCont.eq(index).css("display","flex");
	    	  
	    	  
	    	  
	    });
	    //
	    tabBtn.eq(1).click(
	    		
	      function(){
	    	  
	    	  tabBtn.eq(0).removeClass("active");
	    	  var target = $(this);         //버튼의 타겟(순서)을 변수에 저장
	    	  var index = target.index();   //버튼의 순서를 변수에 저장
	  			
	    	  tabBtn.eq(1).addClass("active");       //타겟의 클래스를 추가1
	    	  tabCont.removeClass("active");       //타겟의 클래스를 추가
	    	  tabCont.css("display","none");
	    	  tabCont.eq(index).css("display","flex");
	    	  
	    	  
	    	  
	    });

	   

	}
	
	


	 function popClose() {
	   var modalPop = $('.modal-wrap');
	   var modalBg = $('.modal-bg');

	   $(modalPop).hide();
	   $(modalBg).hide();

	}
	 /*// 로그인 회원가입 팝업뜨는 js */ 
	
	 
	 
	



	  
	  
	 
	 
	 
	 
	 
	 /* 로그인 성공 실패 alert창 */
	 const id = document.getElementById('id')
	 const password = document.getElementById('password')
	 const login = document.getElementById('login-btn')
	 let errStack = 0;

	 login.addEventListener('click', () => {
	     if (id.value == 'acid') {
	         if (password.value == '0000') {
	             alert('로그인 되었습니다!')
	         }
	         else {
	             alert('아이디와 비밀번호를 다시 한 번 확인해주세요!')
	             errStack ++;
	         }
	     }
	     else {
	         alert('존재하지 않는 계정입니다.')
	     }

	     if (errStack >= 5) {
	         alert('비밀번호를 5회 이상 틀리셨습니다. 비밀번호 찾기를 권장드립니다.')
	     }
	 })
	  /*  //로그인 성공 실패 alert창 */
	 
	  
	  
	  
	  

	  
	  
	  
	</script>
	
	<!-- 메인화면 넘어가는 js -->	
	<script type="text/javascript" src="assets/js/mainSlide.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule="" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>



</body>
</html>