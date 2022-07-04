<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header.css" />
<link rel="stylesheet" href="assets/css/loginJoin.css" />
<link rel="stylesheet" href="assets/css/mainSlide.css" />



<!-- 메인화면 넘어가는 js -->	
<script type="text/javascript" src="assets/js/mainSlide.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>
</head>
<body>


<!-- 상단 고정 header -->
	 <section id="header">
        <div class="wrapper">
            
            <div class="logo"><img id="LBBimg" src="images/LBB01.png" alt="Logo"></div>
	           		<ul class="menuList2">
						<li class="s-btn">
				            <label class="switch s-btn">
								<input type="checkbox">
								<span class="slider round"></span>
							</label>
						</li>
					    <li class="home"><a   style="cursor: pointer"  onClick="window.location.href=window.location.href">Home</a></li>
	            	</ul>
                <nav class="main-nav">
				   <ul class="menuList">
					    <li><a class="signin" href="#0">Sign in</a></li>
					    <li><a class="signup" href="#0">Sign up</a></li>
				  </ul>
				</nav>
           
        </div>
    </section>



<!-- 로그인 회원가입 버튼 누르면 보여지는 창 -->
<div class="user-modal">
    <div class="user-modal-container">
      <ul class="switcher">
        <li><a href="#0">Sign in</a></li>
        <li><a href="#0">New account</a></li>
      </ul>

      <div id="login">
        <form class="form">
          <p class="fieldset">
            <label class="image-replace email" for="signin-email">Id</label>
            <input class="full-width has-padding has-border" id="signin-email" type="email" placeholder="E-mail">
            <span class="error-message">An account with this email address does not exist!</span>
          </p>

          <p class="fieldset">
            <label class="image-replace password" for="signin-password">Password</label>
            <input class="full-width has-padding has-border" id="signin-password" type="password"  placeholder="Password">
            <a href="#0" class="hide-password">Show</a>
            <span class="error-message">Wrong password! Try again.</span>
          </p>

          <p class="fieldset">
            <input type="checkbox" id="remember-me" checked>
            <label for="remember-me">Remember me</label>
          </p>

          <p class="fieldset">
            <input class="full-width" type="submit" value="Login">
          </p>
        </form>
        
        <p class="form-bottom-message"><a href="#"> Not a member yet? </a></p>
        <!-- <a href="#0" class="close-form">Close</a> -->
      </div>

      <div id="signup">
        <form class="form">
          <p class="fieldset">
            <label class="image-replace username" for="signup-username">Username</label>
            <input class="full-width has-padding has-border" id="signup-username" type="text" placeholder="Username">
            <span class="error-message">Your username can only contain numeric and alphabetic symbols!</span>
          </p>

          <p class="fieldset">
            <label class="image-replace email" for="signup-email">HOSPname</label>
            <input class="full-width has-padding has-border" id="signup-email" type="email" placeholder="HOSP name">
            <span class="error-message">Enter a valid email address!</span>
          </p>

          <p class="fieldset">
            <label class="image-replace password" for="signup-password">Password</label>
            <input class="full-width has-padding has-border" id="signup-password" type="password"  placeholder="Password">
            <a href="#0" class="hide-password">Show</a>
            <span class="error-message">Your password has to be at least 6 characters long!</span>
          </p>

          <p class="fieldset">
            <input type="checkbox" id="accept-terms">
            <label for="accept-terms">I agree to the <a class="accept-terms" href="#0">Terms</a></label>
          </p>

          <p class="fieldset">
            <input class="full-width has-padding" type="submit" value="Create account">
          </p>
        </form>

        <!-- <a href="#0" class="cd-close-form">Close</a> -->
      </div>

      <div id="reset-password">
        <p class="form-message">Lost your password? Please enter your email address.</br> You will receive a link to create a new password.</p>

        <form class="form">
          <p class="fieldset">
            <label class="image-replace email" for="reset-email">E-mail</label>
            <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
            <span class="error-message">An account with this email does not exist!</span>
          </p>

          <p class="fieldset">
            <input class="full-width has-padding" type="submit" value="Reset password">
          </p>
        </form>

        <p class="form-bottom-message"><a href="#0">Back to log-in</a></p>
      </div>
      <a href="#0" class="close-form">Close</a>
    </div>
  </div>




<!-- 페이지 슬라이드 버튼 -->

	<!-- <section id="s-pointer">
		<ul style="cursor: pointer">
			<li id="l-btn" class="prev" type='button' value='toggleDivL' onclick='toggleDivR()'><ion-icon name="chevron-back-outline"></ion-icon><span class="prev color">How it works</span></li>
			<li id="r-btn"  class="next" type='button' value='toggleDivR' onclick='toggleDivR()'><span class="next color">Assessment</span><ion-icon name="chevron-forward-outline"></ion-icon></li>
		</ul>
	
	</section> -->


		
<!-- 메인 내용 바뀌는 곳 -->

		<!-- 슬라이드쇼 컨테이너 -->
	<div class="slideshow-container">
	
		  <!-- 숫자와 캡션이 있는 이미지 -->
		<div class="mainBox">
			  <div class="mySlides fade">
			    <!-- <div class="numbertext">1 / 3</div> -->
			    <div class="page1">
					<div> <img alt="img" src="images/back.png"></div>
				</div>
			  </div>
		</div>
		<div class="mainBox">
			  <div class="mySlides fade">
			    <!-- <div class="numbertext">2 / 3</div> -->
			   <div class="page1">
					<div> <img alt="img" src="images/1.png"></div>
				</div>
			  </div>
		</div>
		<div class="mainBox">
			  <div class="mySlides fade">
			    <!-- <div class="numbertext">3 / 3</div> -->
			    <div class="page1">
					<div> <img alt="img" src="images/4.png"></div>
				</div>
			  </div>
		</div>

		  
		  
	</div>
		
		  <!-- 다음, 이전 이미지 버튼 -->
		  <a class="prev" onclick="plusSlides(-1)">&#10094; <span class="color">How it works</span></a>
		  <a class="next" onclick="plusSlides(1)"><span class="color">How it works</span>&#10095;</a>
	
<br>
	<!-- 현재 이미지를 알려주는 하단의 점 -->
	<div style="text-align:center">
	  <span class="dot" onclick="currentSlide(1)"></span> 
	  <span class="dot" onclick="currentSlide(2)"></span> 
	  <span class="dot" onclick="currentSlide(3)"></span> 
	</div>

<!-- 
			상담 연결 ㅊ
			<div>
					<input type="checkbox" id="mpicon">
					<label for="mpicon" id="mpicon-id">
					큐브 모양을 위한 span 세개씩 세줄 
						<span></span> 
						<span></span> 
						<span></span>
						<span></span> 
						<span></span> 
						<span></span> 
						<span></span> 
						<span></span>
						<span></span>
						
					</label>

				<div class="mpbar" id="mpbarID">
						<div class="dropdown-mpbar">
						
					
									비회원일때 보이는 마이페이지
									
									<ul>
										<li class="list2 active2 cls1">
											<a href="logsign.jsp">
												<span class="icon2"><ion-icon name="log-in-outline"></ion-icon></span>
												<span class="title2 ppp">상담을 위해선 로그인이 필요해요</span> 
											</a>
										</li>
									</ul>
										
										
										
										
										<ul>
										
									회원일때 보이는 상담연결창	
										
										<li class="list2 active2 cls1">
											<a href="logsign.jsp">
												<span class="icon2"><ion-icon name="log-in-outline"></ion-icon></span>
												<span class="title2 ppp">상담 문의하기</span> 
											</a>
										</li>
									</ul>	
									
									
						</div>
					</div>


		
			</div>
 -->


	
	<!-- 로그인 회원가입 팝업뜨는 js -->
	<script type="text/javascript" src="assets/js/js01.js"></script>
	<script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	
	

</body>
</html>