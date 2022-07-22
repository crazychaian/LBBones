<%@page import="model.XrayLandmarkVO"%>
<%@page import="java.util.List"%>
<%@page import="model.CustomerVO"%>
<%@page import="model.DoctorVO"%>
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
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;600&display=swap"
	rel="stylesheet">





<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	CustomerVO pvo = (CustomerVO) session.getAttribute("pvo");
	List<XrayLandmarkVO> xrayList = (List<XrayLandmarkVO>) session.getAttribute("xrayList");
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
		<label class="lh"><input
			onclick="movepage('mainHome-Real.jsp');" class="iptxt" type="radio"
			name="band" value="fm"><span class="inputext lh">INTRO</span></label>
		<label class="lh"><input
			onclick="movepage('memberHome-Real.jsp');" class="iptxt" type="radio"
			name="band" value="am"><span class="inputext lh ">TUTORIAL</span></label>
		<label class="lh"><input
			onclick="movepage('memberHome-Real.jsp#price');" class="iptxt"
			type="radio" name="band" value="am"><span
			class="inputext lh ">PRICE</span></label> <label class="lh"><input
			onclick="location.href='logoutService'" class="iptxt" type="radio"
			name="band" value="lw"><span class="inputext lh">LOGOUT</span></label>
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

				<form action="cusSearchService2" method="post">
					<input type="hidden" class="SearchId" name="SearchId"
						value="<%=vo.getDoc_id()%>"> <input type="text"
						placeholder="caseID 또는 환자이름을 검색하세요" id="serch-pati"
						class="serch-patient" name="pSearch">



					<!-- <input type="text" placeholder="caseID 또는 환자이름을 검색하세요"
					id="serch-pati" class="serch-patient ">

				<div class="button-main ser-main" type="submit">
					<div class="button-inside ser-inside">
						<h1 class="btn-name">SERCH</h1>
					</div>
				</div> -->

					<button class="button-main ser-main" type="submit">
						<div class="button-inside ser-inside">
							<h1 class="btn-name">SEARCH</h1>
						</div>
					</button>
				</form>

				<!-- 				<div class="button-main new-main" onclick="javascript:popOpen();">
					<div class="button-inside new-inside">
						<h1 class="btn-name">NEW PATIENT REGISTRATION</h1>
					</div>
				</div> -->

				<div class="button-main record-main"
					onclick="window.open('newHistory-2-Real.jsp','newhistroy-Real','resizable=no width=1800 height=1000');return false">
					<div class="button-inside record-inside">
						<h1 class="btn-name">ADD MEDICAL RECORDS</h1>
					</div>
				</div>



			</div>
			<!-- 클릭하고 들어온 환자 정보  //  환자코드 / 생년월일 / 이름 /  -->
			<div class="clickMem-div">
				<span class="clickMem"><%=pvo.getP_seq()%></span> <span
					class="clickMem"><%=pvo.getP_name()%></span> <span class="clickMem"><%=pvo.getP_gender()%></span>
				<span class="clickMem"><%=pvo.getP_birth()%></span>
			</div>


		</div>






		<div class="wrap">

			<!-- 목록 이름 -->
			<div class="info-listname">
				<ul class="info-listname-rp">
					<li><span>VISIT DATE</span></li>
					<li><span>X-ray</span></li>
					<li><span>LANDMARK INFO</span></li>
					<li><span>RECORD</span></li>
					<li><span>EDIT</span></li>

				</ul>
			</div>

			<%
			if (xrayList == null) {
			%>

			<!-- 환자 진료기록 업데이트 추가될 부분 -->
			<div class="info-cont"></div>

			<%
			} else {
			%>
			<%
			for (XrayLandmarkVO xlvo : xrayList) {
			%>



			<!-- 환자 진료기록 업데이트 추가될 부분 -->
			<div class="info-cont">
				<input type="hidden" name="xrayseq" value="<%=xlvo.getXray_seq()%>"></input>
				<ul class="info-cont-rp">
					<li><span><%=xlvo.getXray_date()%></span></li>
					<li id="imglistLi">
						<!-- 클릭할 이미지 리스트  -->
						<div class="imgList">
							<div class="imgC" style="cursor: zoom-in">
								<img src="img/<%=xlvo.getXray_img()%>" alt="모달할 이미지"
									style="width: 100px; height: 150px;">
								<p>이미지 1</p>
							</div>


						</div>


					</li>
					<li><textarea class="txtarea" name="randmark-view" cols="30"
							rows="10" readonly disabled>왼쪽 대퇴골의 길이 : <%=xlvo.getL_femur_len()%> mm
							왼쪽 경골의 길이 : <%=xlvo.getL_tibia_len()%> mm
							왼쪽 다리 전체의 길이 : <%=xlvo.getL_total_len()%> mm
							오른쪽 대퇴골의 길이 : <%=xlvo.getR_femur_len()%> mm
							오른쪽 경골의 길이 : <%=xlvo.getR_tibia_len()%> mm
							오른쪽 다리 전체의 길이 : <%=xlvo.getR_total_len()%> mm
							대퇴골의 길이 차이 : <%=xlvo.getLr_femur_gap()%> mm
							경골의 길이 차이 : <%=xlvo.getLr_tibia_gap()%> mm
							다리 전체의 길이 차이 : <%=xlvo.getLr_total_gap()%> mm
							</textarea></li>
					<li><textarea class="txtarea" name="today-chart-view"
							cols="30" rows="10" readonly disabled><%=xlvo.getCmt_content()%></textarea></li>
					<li>
						<div class="btn btn__secondary" 
							onclick="window.open('updateChart-Real.jsp?xray_seq=<%=xlvo.getXray_seq()%>','name','resizable=no width=1500 height=1100');return false">
							<span>EDIT</span>
						</div>

					</li>

				</ul>
			</div>

			<%
			}
			%>

			<%
			}
			%>











		</div>

	</div>

	<!-- 


	modal   신규환자등록 영역
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
						<li class="nnn"><input class="r-btn" type="radio"
							name="gender" value="man"><span class="r-txt">male</span><input
							class="r-btn" type="radio" name="gender" value="woman"><span
							class="r-txt">female</span></li>
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
	//modal 영역



 -->




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