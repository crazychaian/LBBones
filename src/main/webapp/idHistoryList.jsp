<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/idHistoryList.css" />
<link rel="stylesheet" href="assets/css/addMemberPop.css" />
<link rel="stylesheet" href="assets/css/imagesPop.css" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
					<li><a href="#" href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="#" onclick="">Price</a></li>
					<li><a class="" href="mainHome.jsp" onclick="">Logout</a></li>
				</ul>
			</nav>

		</div>
	</section>

	<!-- // 상단 고정 header -->






	<!-- 기본 환자 리스트  -->

	<div class="allMain">


		<div class="serch-btn">
			<form class="container-sm">
				<span>환자검색</span> <input type="text" placeholder="caseID 또는 환자이름"
					id="" class="">

				<div class="btn-holder">
					<!-- 검색버튼 -->
					<button type="submit" class="" id="">
						<span>serch</span>
					</button>
					<!-- 신규환자등록버튼 -->
					<button type="button" class="" id=""
						onclick="javascript:popOpen();">
						<span>신규환자등록</span>
					</button>
					<!-- 진료등록버튼 -->
					<button type="button" class="" id=""
						onclick="window.open('newHistory.jsp','name','resizable=no width=1500 height=900');return false">
						<span>진료등록</span>
					</button>

					<span>김가나</span> <span>1999-07-03</span> <span>a0001</span>
				</div>

			</form>



		</div>


		<div class="wrap">

			<!-- 목록 이름 -->
			<div class="info-listname">
				<ul class="info-listname-rp">
					<li><span>visit date</span></li>
					<li><span>X-ray 이미지</span></li>
					<li><span>랜드마크 정보</span></li>
					<li><span>진료 기록</span></li>
					<li><span>수정 / 삭제</span></li>

				</ul>
			</div>

			<!-- 환자 진료기록 업데이트 추가될 부분 -->
			<div class="info-cont">
				<ul class="info-cont-rp">
					<li><span>2018-10-10</span></li>
					<li id="imglistLi">
						
						
						
						<!-- 클릭할 이미지 리스트  -->
						<div class="imgList">
							<div class="imgC" style="cursor : zoom-in">
								<img src="images/1.png" alt="모달할 이미지">
								<p>이미지 1</p>
							</div>
							<div class="imgC" style="cursor : zoom-in">
								<img src="images/4.png" alt="모달할 이미지">
								<p>이미지 2</p>
							</div>

						</div>


					</li>
					<li><textarea name="randmark-view" cols="30" rows="10"
							readonly>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li><textarea name="today-chart-view" cols="30" rows="10"
							readonly>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li><span>
							<button type="button" href=""
								onclick="window.open('updateChart.jsp','name','resizable=no width=1500 height=900');return false">진료
								내용 추가</button>

					</span></li>

				</ul>
			</div>


		</div>

	</div>






	<!-- modal   신규환자등록 영역 -->
	<div class="modal-bg" onclick="javascript:popClose();"></div>
	<div class="modal-wrap">
		<div class="add-member">

			<span class="form-title">신규 환자 등록</span>

			<form action="" name="person-info">
				<ul class="person-info-form">
					<li class="ttt">birthdate</li>
					<li><input type="date" name="startday" class="ip-bd nnn">
					</li>
					<li class="ttt">name</li>
					<li><input type="text" name="membername" class="m-name nnn"
						placeholder="환자 이름을 입력해주세요."></li>
					<li class="ttt">sexual selection</li>
					<li class="nnn"><input type="radio" name="gender" value="man">남
						<input type="radio" name="gender" value="woman">여</li>
					<li>
						<button type="submit" class="form-btn" id="">
							<span>등록</span>
						</button>
					</li>

				</ul>
			</form>



		</div>


	</div>
	<!-- //modal 영역 -->


	<!-- modal   이미지확대 영역 -->
	<!-- 팝업 될 곳 -->
	<div class="modal">
		<button>&times;</button>
		<div class="modalBox">
			<img src="" alt="">
			<p></p>
		</div>
	</div>
</body>
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

		
		
	
		
		
		
		
		const modal = document.querySelector(".modal");
		const img = document.querySelector(".imgimg");
		const modal_img = document.querySelector(".modal_content");
		const span = document.querySelector(".close");

		img.addEventListener('click', ()=>{
		  modalDisplay("block");
		  modal_img.src = img.src;
		});
		span.addEventListener('click', ()=>{
		  modalDisplay("none");
		});
		modal.addEventListener('click', ()=>{
		  modalDisplay("none");
		});
		function modalDisplay(text){
		  modal.style.display = text;
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
<!--js -->
<script type="text/javascript" src="assets/js/imgmodal.js"></script>


<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>
</html>