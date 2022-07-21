<%@page import="model.XrayLandmarkVO"%>
<%@page import="model.LandmarkVO"%>
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
					<li class="home"><a style="cursor: pointer"
						href="mainHome.jsp">Home</a></li>
					<li><a href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="memberHome.jsp#price" onclick="">Price</a></li>
					<li><a class="" href="logoutService" onclick="">Logout</a></li>
				</ul>
			</nav>

		</div>
	</section>

	<!-- // 상단 고정 header -->






	<!-- 기본 환자 리스트  -->

	<div class="allMain">



<div class="container-sm">


			<div id="container-btn">
			<form action="cusSearchService2" method="post">
				<input type="hidden" class="SearchId" name="SearchId"
					value="<%=vo.getDoc_id()%>">
				<input type="text"
					placeholder="caseID 또는 환자이름을 검색하세요" id="serch-pati"
					class="serch-patient" name="pSearch">

				<button class="button-main ser-main" type="submit">
					<div class="button-inside ser-inside">
						<h1 class="btn-name">SERCH</h1>
					</div>
				</button>
				</form>

				<div class="button-main new-main" onclick="popOpen()">
					<div class="button-inside new-inside">
						<h1 class="btn-name">NEW PATIENT REGISTRATION</h1>
					</div>
				</div>
				
				<div class="button-main record-main" 
				onclick="window.open('newHistory-3.jsp','newhistroy','resizable=no width=1500 height=900');return false">
					<div class="button-inside record-inside">
						<h1 class="btn-name">ADD MEDICAL RECORDS</h1>
					</div>
				</div>
				
				
				
			</div>
			<!-- 클릭하고 들어온 환자 정보  //  환자코드 / 생년월일 / 이름 /  -->
				<div class="clickMem-div">
				<span class="clickMem"><%= pvo.getP_seq() %></span>  <span class="clickMem"><%=pvo.getP_name() %></span>  <span class="clickMem"><%= pvo.getP_gender() %></span>  <span class="clickMem"><%= pvo.getP_birth() %></span> 
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

			<!-- 환자 진료기록 업데이트 추가될 부분 -->
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

				<%
				for (XrayLandmarkVO xlvo : xrayList) {
				%>
			<div class="info-cont">
				<input type="hidden" name="xrayseq" value="<%=xlvo.getXray_seq() %>"></input>
				<ul class="info-cont-rp">
					<li><span><%=xlvo.getXray_date()%></span></li>
					<li id="imglistLi">
						<!-- 클릭할 이미지 리스트  -->
						<div class="imgList">
							<div class="imgC" style="cursor: zoom-in">
								<img src="img/<%=xlvo.getXray_img()%>" alt="모달할 이미지"
								style="width: 100px; height: 150px;">
								
							</div>
						</div>


					</li>
					<li><textarea class="txtarea" name="randmark-view" cols="30"
							rows="10" readonly disabled>대퇴골의 길이 : 
							경골의 길이 : 
							다리 전체의 길이 : 
							</textarea></li>
					<li><textarea class="txtarea" name="today-chart-view"
							cols="30" rows="10" readonly disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
					<li>
						<div class="btn btn__secondary" type="button" href=""
							onclick="window.open('updateChart.jsp','name','resizable=no width=1500 height=1100');return false">
							<span>진료 내용 추가</span>
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


		
		
		function pJoin() {
			let inputdoc_id = $('input[name=doc_id]');
			let doc_id = $(inputdoc_id[0]).val();
			let inputbirth = $('input[name=birth]');
			let p_birth = $(inputbirth[0]).val();
			let inputmembername = $('input[name=membername]');
			let p_name = $(inputmembername[0]).val();
			let inputgender = $('input[name=gender]:checked');
			let p_gender = $(inputgender[0]).val();
			
			$.ajax({
				url : 'cusJoinService',
				type : 'post',
				dataType : 'json',
				data : {
					"doc_id" : doc_id,
					"p_name" : p_name,
					"p_birth" : p_birth,
					"p_gender" : p_gender
				},
				success : function(cnt) {
					if (cnt > 0) {
						var modalPop = $('.modal-wrap');
						var modalBg = $('.modal-bg');

						$(modalPop).hide();
						$(modalBg).hide();
						
						alert("환자 등록 성공하였습니다.")
						
						document.location.reload(true)
					} else {
						alert("환자 등록실패하였습니다.")
					}

				},
				error : function() {
					alert("에러발생");
				}

			});
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
		
		
		
/* 		
		$(".info-cont-rp").onload=function(){
			let a = 0;
			let inpiXraySeq = $('input[name=XraySeq]');
			let XraySeq = $(inpiXraySeq[0]).val();
			
			$.ajax({
				url : 'landmarkViewService',
				type : 'post',
				dataType : 'json',
				data : {
					"XraySeq" :XraySeq
				},
				success : function(data) {
					$('div.lmC').eq(a).html("");
		
						let landmark_seq = data.landmark_seq;
						let xray_seq = data.xray_seq;
						let l_top_x = data.l_top_x;
						let l_top_y = data.l_top_y;
						let l_mid_x = data.l_mid_x;
						let l_mid_y = data.l_mid_y;
						let l_bot_x = data.l_bot_x;
						let l_bot_y = data.l_bot_y;
						let r_top_x = data.r_top_x;
						let r_top_y = data.r_top_y;
						let r_mid_x = data.r_mid_x;
						let r_mid_y = data.r_mid_y;
						let r_bot_x = data.r_bot_x;
						let r_bot_y = data.r_bot_y;
						let l_femur_len = data.l_femur_len;
						let l_tibia_len = data.l_tibia_len;
						let l_total_len = data.l_total_len;
						let r_femur_len = data.r_femur_len;
						let r_tibia_len = data.r_tibia_len;
						let r_total_len = data.r_total_len;
						let lr_femur_gap = data.lr_femur_gap;
						let lr_tibia_gap = data.lr_tibia_gap;
						let lr_total_gap= data.lr_total_gap;
						let landmark_date = data.landmark_date;
						
						
						<img src="images/4.png" alt="모달할 이미지">
						<p>이미지 2</p>

						ul=
							`<img src="landmark/4.png" alt="모달할 이미지">
						
								<p>이미지 2</p>
							`;
							
							
					
					$('div.lmC').append(ul);
					
					

				},
				error : function() {
					alert("에러 발생")
				}

			});
			
			a++;
		} */
			
			
			
			
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</script>
<!--js -->
<script type="text/javascript" src="assets/js/imgmodal.js"></script>


<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>
</html>