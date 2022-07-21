<%@page import="model.XrayVO"%>
<%@page import="java.util.List"%>
<%@page import="model.CustomerVO"%>
<%@page import="model.DoctorVO"%>
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
<link rel="stylesheet" href="assets/css/memhome-btn-3.css">


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	CustomerVO pvo = (CustomerVO) session.getAttribute("pvo");
	List<XrayVO> xrayList = (List<XrayVO>) request.getAttribute("xrayList");
	%>


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
		<label><input onclick="movepage('mainHome.jsp');"
			class="iptxt" type="radio" name="band" value="fm"><span
			class="inputext">INTRO</span></label> <label><input
			onclick="movepage('memberHome.jsp');" class="iptxt" type="radio"
			name="band" value="am" checked><span class="inputext">TUTORIAL</span></label>
		<label><input onclick="movepage('memberHome.jsp#price');"
			class="iptxt" type="radio" name="band" value="am"><span
			class="inputext">PRICE</span></label> <label><input
			onclick="location.href='logoutService'" class="iptxt" type="radio"
			name="band" value="lw"><span class="inputext">LOGOUT</span></label>
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

				<input type="hidden" class="SearchId" name="SearchId"
					value="<%=vo.getDoc_id()%>"> <input type="text"
					placeholder="caseID 또는 환자이름을 검색하세요" id="serch-pati"
					class="serch-patient" name="pSearch">

				<div class="button-main ser-main" onclick="cusSearch()">
					<div class="button-inside ser-inside">
						<h1 class="btn-name">SERCH</h1>
					</div>
				</div>

				<div class="button-main new-main" onclick="popOpen()">
					<div class="button-inside new-inside">
						<h1 class="btn-name">NEW PATIENT REGISTRATION</h1>
					</div>
				</div>

				<div class="button-main record-main"
					onclick="window.open('newHistory-2.jsp','newhistroy-2','resizable=no width=1500 height=950');return false">
					<div class="button-inside record-inside">
						<h1 class="btn-name">ADD MEDICAL RECORDS</h1>
					</div>
				</div>



			</div>
			<!-- 클릭하고 들어온 환자 정보  //  환자코드 / 생년월일 / 이름 /  -->
			<div class="clickMem-div">
				<span class="clickMem"><%=pvo.getP_seq()%></span> <span
					class="clickMem"><%=pvo.getP_name()%></span> <span
					class="clickMem"><%=pvo.getP_gender()%></span> <span
					class="clickMem"><%=pvo.getP_date()%></span>
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
					<li><span>수정 / 삭제</span></li>

				</ul>
			</div>


			<%
			if (xrayList == null) {
			%>
			<!-- 환자 진료기록 업데이트 추가될 부분 -->
			<div class="info-cont">

				<%
				} else {
				%>
			</div>




			<!-- 환자 진료기록 업데이트 추가될 부분 -->
			<div class="info-cont">

				<%
				for (XrayVO xvo : xrayList) {
				%>
				<ul class="info-cont-rp">
					<li><span><%=xvo.getXray_date()%></span></li>
					<li id="imglistLi">
						<!-- 클릭할 이미지 리스트  -->
						<div class="imgList">
							<div class="imgC" style="cursor: zoom-in">
								<img src="images/<%=xvo.getXray_img()%>" alt="모달할 이미지">
								<p>이미지 1</p>
							</div>
							<div class="imgC" style="cursor: zoom-in">
								<img src="images/<%=xvo.getXray_img()%>" alt="모달할 이미지">
								<p>이미지 2</p>
							</div>

						</div>


					</li>
					<li><textarea class="txtarea" name="randmark-view" cols="30"
							rows="10" readonly disabled>대퇴골의 길이 : <br>
							경골의 길이 : <br>
							다리 전체의 길이 : </textarea></li>
					<li><textarea class="txtarea" name="today-chart-view"
							cols="30" rows="10" readonly disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li>
						<div class="btn btn__secondary" type="button" href=""
							onclick="window.open('updateChart.jsp','name','resizable=no width=1500 height=1100');return false">
							<span>진료 내용 추가</span>
						</div>

					</li>

				</ul>

				<%
				}
				%>
			</div>

			<%
			}
			%>











		</div>

	</div>




	<!-- modal   신규환자등록 영역 -->
	<div class="modal-bg" onclick="popClose()"></div>

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
						<li class="nnn"><input class="r-btn" type="radio"
							name="gender" value="man"><span class="r-txt">남</span><input
							class="r-btn" type="radio" name="gender" value="woman"><span
							class="r-txt">여</span></li>
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
		
		
		
		
		function cusSearch() {
			let inputSearchId = $('input[name=SearchId]');
			let SearchId = $(inputSearchId[0]).val();
			let inputpSearch = $('input[name=pSearch]');
			let search = $(inputpSearch[0]).val();

			// 2. ajax 통신
			$.ajax({
				url : 'cusSearchService',
				type : 'post',
				dataType : 'json',
				data : {
					"search" : search
				},
				success : function() {

				},
				error : function() {
					alert("에러발생");
				}

			});
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