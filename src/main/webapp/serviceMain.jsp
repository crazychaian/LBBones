<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/serviceMain.css" />
<link rel="stylesheet" href="assets/css/addMemberPop.css" />
<link rel="stylesheet" href="assets/css/updateMemberPop.css" />


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- 프로그램 시작 버튼 누르면 보이는 페이지 입니다~~ (기존 회원리스트들)  -->

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
					<li><a  href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="memberHome.jsp#price" onclick="">Price</a></li>
					<li><a class="" href="mainHome.jsp" onclick="">Logout</a></li>
				</ul>
			</nav>

		</div>
	</section>

	<!-- // 상단 고정 header -->






	<!-- 기본 환자 리스트  -->
	
	
<!-- 검색버튼 신규환자등록버튼 -->
	<div class="allMain">


		<div class="container-sm">


			<div id="container-btn">

				<input type="text" placeholder="caseID 또는 환자이름을 검색하세요"
					id="serch-pati" class="serch-patient ">

				<div class="button-main ser-main" type="submit">
					<div class="button-inside ser-inside">
						<h1 class="btn-name">SERCH</h1>
					</div>
				</div>

				<div class="button-main new-main" onclick="javascript:popOpen();">
					<div class="button-inside new-inside">
						<h1 class="btn-name">NEW PATIENT REGISTRATION</h1>
					</div>
				</div>

			</div>



		</div>




<!-- 환자리스트 -->
		<div class="wrap">

			<!-- 목록 이름  -->
			<div class="info-listname">
				<ul class="info-listname-rp">
					<li><span>Case ID</span></li>
					<li><span>yyyy-mm-dd</span></li>
					<li><span>Name</span></li>
					<li><span>Gender</span></li>
					<li><span>수정 / 삭제</span></li>

				</ul>
			</div>

			<!-- 각각의 환자 정보 추가될부분 -->
			<div class="info-cont">
				<ul class="info-cont-rp">
					<li><span>a00001</span></li>
					<li><span>1999-07-03</span></li>
					<li><span>김가나</span></li>
					<li><span>w</span></li>
					<li><span>
							<button type="button" href="" onclick="javascript:popOpen2();">수정</button>
							/ <a href="" onclick="javascript:removeCheck();">삭제</a>
					</span></li>

				</ul>
			</div>


			<!-- 환자정보 업데이트 추가될부분  예시,,-->
			<div class="info-cont">
				<ul class="info-cont-rp">
					<li><span>a00001</span></li>
					<li><span>1999-07-03</span></li>
					<li><span>김가나</span></li>
					<li><span>w</span></li>
					<li><span>
							<button type="button" href="" onclick="javascript:popOpen2();">수정</button>
							/ <a href="" onclick="javascript:removeCheck();">삭제</a>
					</span></li>

				</ul>
			</div>



		</div>







	</div>




	<!-- modal   신규환자등록 영역 -->
	<div class="modal-bg" onclick="javascript:popClose();"></div>

	<div class="modal-wrap">



		
			<div class="button-inside-pop ">
				<h1 class="btn-name-pop form-title">NEW PATIENT REGISTRATION</h1>
				<div class="add-member">


					<form action="" name="person-info">
						<ul class="person-info-form">
							<li class="ttt">birthdate</li>
							<li><input type="date" name="startday" class="ip-bd nnn">
							</li>
							<li class="ttt">name</li>
							<li><input type="text" name="membername" class="m-name nnn"
								placeholder="환자 이름을 입력해주세요."></li>
							<li class="ttt">sexual selection</li>
							<li class="nnn"><input class="r-btn" type="radio" name="gender"
								value="man"><span class="r-txt">남</span><input class="r-btn" type="radio" name="gender"
								value="woman"><span  class="r-txt">여</span></li>
							<li>
								<button type="submit" class="form-btn" id="">
									<span class="sub-btn-txt">SUBMIT</span>
								</button>
							</li>

						</ul>
					</form>
				</div>
			</div>














	</div>
	<!-- //modal 영역 -->









	<!-- modal 환자정보수정 영역 -->
	<div class="modal-bg2" onclick="javascript:popClose2();"></div>
	<div class="modal-wrap2">
	
	<div class="button-inside-pop ">
				<h1 class="btn-name-pop form-title">EDIT PATIENT INFO</h1>
				<div class="add-member">


					<form action="" name="person-info2">
				<ul class="person-info-form2">

					<!-- case id -->
					<li class="ttt2">Case ID</li>
					<li class="ttt2"><span> a00001 </span></li>


					<li class="ttt2">birthdate</li>
					<li><input type="date" name="startday" class="ip-bd2 nnn2">
					</li>
					<li class="ttt2">name</li>
					<li><input type="text" name="membername" class="m-name2 nnn2"
						placeholder="환자 이름을 입력해주세요."></li>
					<li class="ttt2">sexual selection</li>
					<li class="nnn2">
						<input class="rad-btn" type="radio" name="gender" value="man"><span>남</span>
						<input class="rad-btn" type="radio" name="gender" value="woman"><span>여</span></li>
					<li class="update-btn">
						<button type="submit" class="form-btn2" id=""
							onclick="javascript:removeCheck();">
							<span class="rad-btn-txt">삭제</span>
						</button>
						<button type="submit" class="form-btn2" id="">
							<span class="rad-btn-txt">등록</span>
						</button>
					</li>

				</ul>
			</form>
			
			
			
			
				</div>
			</div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	


	</div>
	<!-- //modal 영역 -->




















	<script type="text/javascript">
		function popOpen() {

			var modalPop = $('.modal-wrap');
			var modalBg = $('.modal-bg');

			$(modalPop).show();
			$(modalBg).show();

		}

		function popClose() {
			var modalPop = $('.modal-wrap');
			var modalBg = $('.modal-bg');

			$(modalPop).hide();
			$(modalBg).hide();

		}

		function popClose2() {
			var modalPop = $('.modal-wrap2');
			var modalBg = $('.modal-bg2');

			$(modalPop).hide();
			$(modalBg).hide();

		}

		function popOpen2() {

			var modalPop = $('.modal-wrap2');
			var modalBg = $('.modal-bg2');

			$(modalPop).show();
			$(modalBg).show();

		}

		/* 삭제버튼 눌렀을때 정말 삭제하시겠습니까? */
		function removeCheck() {

			if (confirm("정말 삭제하시겠습니까??") == true) { //확인

				document.removefrm.submit();

			} else { //취소

				return false;

			}

		}
	</script>

	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule=""
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

















</body>
</html>