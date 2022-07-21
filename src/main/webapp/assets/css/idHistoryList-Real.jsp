<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2-Real.css" />
<link rel="stylesheet" href="assets/css/idHistoryList-Real.css" />
<link rel="stylesheet" href="assets/css/addMemberPop-Real.css" />
<link rel="stylesheet" href="assets/css/imagesPop-Real.css" />
<link rel="stylesheet" href="assets/css/serMain-btn-Real.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;600&display=swap" rel="stylesheet">





<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>




	<!-- 프로그램 시작 버튼 누르면 보이는 페이지 입니다~~ (기존 회원리스트들)  -->

	<!-- 상단 고정 header -->
<!-- 	<section id="header">
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
					<li><a href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="memberHome.jsp#price" onclick="">Price</a></li>
					<li><a class="" href="mainHome.jsp" onclick="">Logout</a></li>
				</ul>
			</nav>

		</div>
	</section> -->
	
		
		
<!-- 버튼 -->
     <form class="btn-four">
	<label ><input onclick="movepage('mainHome.jsp');" class="iptxt" type="radio" name="band" value="fm" ><span class="inputext">INTRO</span></label>
	<label><input onclick="movepage('memberHome-2.jsp');" class="iptxt" type="radio" name="band" value="am" ><span class="inputext">TUTORIAL</span></label>
	<label><input onclick="movepage('#price');" class="iptxt" type="radio" name="band" value="am" ><span class="inputext">PRICE</span></label>
	<label ><input onclick="movepage('mainHome.jsp');" class="iptxt"  type="radio" name="band" value="lw"><span class="inputext"  >LOGOUT</span></label>
</form>
	
	
<script type="text/javascript"> 
function movepage(page) 
{ 
window.document.location.href=page; 
return; 
} 
</script>
		
	

	<!-- // 상단 고정 header -->






	<!-- 기본 환자 리스트  -->

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
				
				<div class="button-main record-main" 
				onclick="window.open('newHistory-Real.jsp','newhistroy-Real','resizable=no width=1800 height=1000');return false">
					<div class="button-inside record-inside">
						<h1 class="btn-name">ADD MEDICAL RECORDS</h1>
					</div>
				</div>
				
				
				
			</div>
			<!-- 클릭하고 들어온 환자 정보  //  환자코드 / 생년월일 / 이름 /  -->
				<div class="clickMem-div">
				<span class="clickMem">a0001</span>  <span class="clickMem">1999-07-03</span>  <span class="clickMem">김가나</span> 
				</div>


		</div>



		


		<div class="wrap">

			<!-- 목록 이름 -->
			<div class="info-listname">
				<ul class="info-listname-rp">
					<li><span>VISIT DATE</span></li>
					<li><span>X-ray</span></li>
					<li><span>RANDMARK INFO</span></li>
					<li><span>RECORD</span></li>
					<li><span>EDIT</span></li>

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
					<li><textarea  class="txtarea" name="randmark-view" cols="30" rows="10"
							readonly  disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li><textarea class="txtarea" name="today-chart-view" cols="30" rows="10"
							readonly  disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li>
							<div class="btn btn__secondary" type="button" href=""onclick="window.open('updateChart-Real.jsp','name','resizable=no width=1500 height=1100');return false">
							<span>EDIT</span></div>

					</li>

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
					<li><textarea class="txtarea" name="randmark-view" cols="30" rows="10"
							readonly  disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li><textarea class="txtarea" name="today-chart-view" cols="30" rows="10"
							readonly  disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li>
							<div class="btn btn__secondary" type="button" href=""onclick="window.open('updateChart.jsp','name','resizable=no width=1500 height=1100');return false">
							<span>EDIT</span></div>

					</li>

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
							<li class="ttt">BIRTHDATE</li>
							<li><input type="date" name="startday" class="ip-bd nnn">
							</li>
							<li class="ttt">NAME</li>
							<li><input type="text" name="membername" class="m-name nnn"
								placeholder="환자 이름을 입력해주세요."></li>
							<li class="ttt">SEXUAL SELECTION</li>
							<li class="nnn"><input class="r-btn" type="radio" name="gender"
								value="man"><span class="r-txt">male</span><input class="r-btn" type="radio" name="gender"
								value="woman"><span  class="r-txt">female</span></li>
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
<script type="text/javascript" src="assets/js/imgmodal-Real.js"></script>


<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>
</html>