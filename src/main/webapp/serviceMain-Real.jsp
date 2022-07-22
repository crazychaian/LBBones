<%@page import="model.CustomerVO"%>
<%@page import="java.util.List"%>
<%@page import="model.DoctorVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="assets/css/header2-Real.css" />
<link rel="stylesheet" href="assets/css/serviceMain-Real.css" />
<link rel="stylesheet" href="assets/css/addMemberPop-Real.css" />
<link rel="stylesheet" href="assets/css/updateMemberPop-Real.css" />
<link rel="stylesheet" href="assets/css/serMain-btn-Real.css">


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;600&display=swap"
	rel="stylesheet">






<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	List<CustomerVO> pList = (List<CustomerVO>) request.getAttribute("pList");
	%>


	<!-- 프로그램 시작 버튼 누르면 보이는 페이지 입니다~~ (기존 회원리스트들)  -->

	<!-- 상단 고정 header -->
	<!-- <section id="header">
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
	</section> -->

	<!-- // 상단 고정 header -->


	<div class="maintop">


		<!-- 버튼 -->
		<form class="btn-four">
			<label class="lh"><input
				onclick="movepage('mainHome-Real.jsp');" class="iptxt" type="radio"
				name="band" value="fm"><span class="inputext lh">INTRO</span></label>
			<label class="lh"><input
				onclick="movepage('memberHome-Real.jsp');" class="iptxt"
				type="radio" name="band" value="am"><span
				class="inputext lh ">TUTORIAL</span></label> <label class="lh"><input
				onclick="movepage('memberHome-Real.jsp#price');" class="iptxt"
				type="radio" name="band" value="am"><span
				class="inputext lh ">PRICE</span></label> <label class="lh"><input
				onclick="location.href='logoutService'" class="iptxt" type="radio"
				name="band" value="lw"><span class="inputext lh">LOGOUT</span></label>
		</form>

		<!-- 
     <form class="btn-two">
	<label ><input  onClick="location.href='serviceMain.jsp'" class="iptxt" type="radio" name="band" value="fm" ><span class="inputext ">SERVICE<br>RUNNING</span></label>
	<label ><input  onclick="javascript:popOpen3();" class="iptxt"  type="radio" name="band" value="lw"><span class="inputext "  >ACCOUNT<br>MANAGEMENT</span></label>
</form>
		 -->

		<!-- div 이동  -->
		<script type="text/javascript">
			function movepage(page) {
				window.document.location.href = page;
				return;
			}
		</script>

	</div>


	<!-- 기본 환자 리스트  -->


	<!-- 검색버튼 신규환자등록버튼 -->
	<div class="allMain">


		<div class="container-sm">


			<div id="container-btn">

				<input type="hidden" class="SearchId" name="SearchId"
					value="<%=vo.getDoc_id()%>"> <input type="text"
					placeholder="caseID 또는 환자이름을 검색하세요" id="serch-pati"
					class="serch-patient" name="pSearch">
				<!--  class="serch-patient "   에서 한칸 공간 줄임-->


				<div class="button-main ser-main" onclick="cusSearch()">
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
					<li><span>CASE ID</span></li>
					<li><span>NAME</span></li>
					<li><span>YYYY-MM-DD</span></li>
					<li><span>GENDER</span></li>
					<li><span>EDIT / DEL</span></li>

				</ul>
			</div>

			<!-- 각각의 환자 정보 추가될부분 -->
			<%
			if (pList == null) {
			%>
			<div class="info-cont"></div>
			<%
			} else {
			%>


			<!-- 환자정보 업데이트 추가될부분  예시,,-->
			<%
			for (CustomerVO cvo : pList) {
			%>
			<div class="info-cont">
				<ul class="info-cont-rp">
					<li><span><a
							href="xrayListService?p_seq=<%=cvo.getP_seq()%>"><%=cvo.getP_seq()%></a></span></li>
					<li><span><a
							href="xrayListService?p_seq=<%=cvo.getP_seq()%>"><%=cvo.getP_name()%></a></span></li>
					<li><span><%=cvo.getP_birth()%></span></li>
					<li><span><%=cvo.getP_gender()%></span></li>
					<li><span>
							<button type="button"
								onclick="javascript:popOpen2(<%=cvo.getP_seq()%>);">EDIT</button>
							/ <a href=""
							onclick="javascript:removeCheck(<%=cvo.getP_seq()%>);">DEL</a>
					</span></li>

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
						<li><input type="hidden" name="doc_id"
							value="<%=vo.getDoc_id()%>"></li>
						<li class="ttt">NAME</li>
						<li><input type="text" name="membername" class="m-name nnn"
							placeholder="환자 이름을 입력해주세요."></li>
						<li class="ttt">BIRTHDATE</li>
						<li><input type="date" name="birth" class="ip-bd nnn">
						</li>
						<li class="ttt">SEXUAL SELECTION</li>
						<li class="nnn"><input class="r-btn" type="radio"
							name="gender" value="Male"><span class="r-txt">Male</span><input
							class="r-btn" type="radio" name="gender" value="Female"><span
							class="r-txt">Female</span></li>
						<li>
							<button type="button" class="form-btn" id="" onclick="pJoin()">
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
						<li class="ttt2">CASE ID</li>
						<li class="ttt2"><span> </span></li>


						<li class="ttt2">BIRTHDATE</li>
						<li><input type="date" name="re_birth" class="ip-bd2 nnn2">
						</li>
						<li class="ttt2">NAME</li>
						<li><input type="text" name="re_membername"
							class="m-name2 nnn2" placeholder="환자 이름을 입력해주세요."></li>
						<li class="ttt2">SEXUAL SELECTION</li>
						<li class="nnn2"><input class="rad-btn" type="radio"
							name="re_gender" value="Male"><span class="r-txt2">Male</span>
							<input class="rad-btn" type="radio" name="re_gender"
							value="Female"><span class="r-txt2">Female</span></li>
						<li class="update-btn">
							<!-- 		<button type="submit" class="form-btn2" id=""
								onclick="javascript:removeCheck();">
								<span class="rad-btn-txt">DEL</span>
							</button> -->
							<button type="button" class="form-btn2" id=""
								onclick="cusUpdate()">
								<span class="rad-btn-txt">SAVE</span>
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

		function popOpen2(a) {

			var modalPop = $('.modal-wrap2');
			var modalBg = $('.modal-bg2');

			$(modalPop).show();
			$(modalBg).show();
			
			$('#updateP_seq').html("");
			$('#updateP_seq').html(`<span name="re_caseid">`+a+`</span>`);
			
			$('.update-btn').html(`<button type="button" class="form-btn2" id=""
					onclick="cusUpdate(`+a+`)"><span>정보 수정</span>
					</button>`);

		}


		
		
		/* 삭제버튼 눌렀을때 정말 삭제하시겠습니까? */
		function removeCheck(a) {
	
		let p_seq = a;
	
		console.log(p_seq);

		var result = confirm("정말 삭제하시겠습니까??");
		 if(result == true){    //확인

					$.ajax({
						url : 'cusDelService',
						type : 'post',
						dataType : 'json',
						data : {
							"p_seq" : p_seq
						},
						success : function(cnt) {
							if(cnt > 0){
								alert("회원 삭제에 성공하였습니다.");
							} else {
								alert("회원 삭제에 실패하였습니다.");
							}
							document.location.reload(true)
							
							/* $(".wrap").load("serviceMain.jsp .wrap") */
						},
						error : function() {
							alert("에러발생");
						}

					});
				

		 }else{   //취소

		     return false;

		 }

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
			success : function(data) {
				$('div.info-cont').html("");
				
				for (var i = 0; i < data.length; i++) {
					let doc_id = data[i].doc_id;
					let p_seq = data[i].p_seq;
					let p_name = data[i].p_name;
					let p_birth = data[i].p_birth;
					let p_gender = data[i].p_gender;

					ul=
						`<ul class="info-cont-rp">
						<li><a href="xrayListService?p_seq=`+p_seq+`">`+p_seq+`</a></li>
						<li><a href="xrayListService?p_seq=`+p_seq+`">`+p_name+`</a></li>
						<li><span>`+p_birth+`</span></li>
						<li><span>`+p_gender+`</span></li>
						<li><span> <button type="button" onclick="popOpen2(`+p_seq+`)">수정</button> / <button type="button" onclick="removeCheck(`+p_seq+`)">삭제</button>
						</span></li></ul>
						`;
						
						
				
				$('div.info-cont').append(ul);
				
				
				}

			},
			error : function() {
				alert("에러발생");
			}

		});
	}
	
	function cusUpdate(a) {
		let p_seq = a;
		let re_birth = $('input[name=re_birth]');
		let p_birth = $(re_birth[0]).val();
		let re_membername = $('input[name=re_membername]');
		let p_name = $(re_membername[0]).val();
		let re_gender = $('input[name=re_gender]:checked');
		let p_gender = $(re_gender[0]).val();
		
		$.ajax({
			url : 'cusUpdateService',
			type : 'post',
			dataType : 'json',
			data : {
				"p_seq" : p_seq,
				"p_birth" : p_birth,
				"p_name" : p_name,
				"p_gender" : p_gender
			},
			success : function(cnt) {
				if (cnt > 0){
				var modalPop = $('.modal-wrap2');
				var modalBg = $('.modal-bg2');

				$(modalPop).hide();
				$(modalBg).hide();
				
				alert("회원 정보 수정에 성공하였습니다.");
				
				document.location.reload(true)
				} else {
					alert("회원 정보 수정에 실패하였습니다.");
				}

			},
			error : function() {
				alert("에러발생");
			}

		});
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
		
		
		
		
		
		
		
		
	</script>

	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule=""
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

















</body>
</html>