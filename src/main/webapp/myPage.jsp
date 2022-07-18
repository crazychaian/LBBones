<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header2.css" />
<link rel="stylesheet" href="assets/css/myPage.css" />

<title>Insert title here</title>
</head>
<body>

	<!-- 마이페이지입니다~~  -->

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




	<!--마이페이지-->

	<div class="allMain">



		<div class="boss-mp">

			<div class="upper-mp">
				<div style="display: inline-block">
					<form action="" method="post">
						<button type="submit" class='btn1-mp'>프로그램 시작</button>
					</form>



				</div>

				<div class='letter-mp'>
					<h1>계정관리</h1>
				</div>
			</div>



			<div class="under-mp">
				<div class="wrapper-mp">


					<div class="img-area">
						<div class="inner-area">
							<img alt="img" src="images/3.png">
						</div>
					</div>
					<div class="icon arrow">
						<i class="far fa-arrow-left"></i>
					</div>
					<div class="icon dots">
						<i class="far fa-ellipsis-v"></i>
					</div>
					<div class="Otani">Otani Shohei</div>
					<div class="about">Orthopedic surgeon</div>
					
					<div class="buttons-mp">
						<p>email123@gmail.com</p>
						<p>010.1234.5678</p>
					</div>


				</div>
				<div class='wrapper2-mp'>
					<table class="info-mp">
						<tr>
							<td>아이디 :</td>
							<td class="updatedocid">ㅇㅇㅇㅇㅇㅇㅇ</td>
							<td><input type="hidden" name="updatedocid" value=""></td>
						</tr>

						<tr>
							<td>비밀번호 :</td>
							<td>****</td>
						</tr>
						<tr>
							<td>변경할 비밀번호 :</td>
							<td><input type="password" placeholder="Password"
								id="password" class="account" name="updatedocpw"></td>
						</tr>

						<tr>
							<td>이름 :</td>
							<td>ㅇㅇㅇㅇ</td>
						</tr>
						<tr>
							<td>변경할 이름 :</td>
							<td><input type="text" placeholder="Nick Name" id="nickName"
								class="account" name="updatedocname"></td>
						</tr>

						<tr>
							<td>병원이름 :</td>
							<td>ㅇㅇㅇㅇㅇㅇㅇ</td>
						</tr>
						<tr>
							<td>변경할 병원이름 :</td>
							<td><input type="text" placeholder="Hospital Name"
								id="hosName" class="account" name="updatedochospital"></td>
						</tr>

						<tr>
							<td>가입날짜 :</td>
							<td>2022.07.13</td>
						</tr>
						<tr>
							<td><input type="button" onclick="updateDoc()" value="정보수정"></td>
						</tr>

					</table>



				</div>


			</div>



		</div>

	</div>








	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
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

			// 2. ajax 통신
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
						alert("회원 정보 수정 성공하였습니다.")
					} else {
						alert("회원 정보 수정 실패하였습니다.")
					}

				},
				error : function() {
					alert("에러 발생")
				}

			});
		}
	</script>




</body>
</html>