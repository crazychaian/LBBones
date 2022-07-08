<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기존 차트에 내용 추가 업데이트</title>
<link rel="stylesheet" href="assets/css/updateChart.css" />

</head>
<body>

	<h1>~~~~ 환자 진료내용 추가 창 </h1>





		<!-- 목록 이름 -->
		<div class="info-listname">
			<ul class="info-listname-rp">
				<li><span>visit date</span></li>
				<li><span>X-ray 이미지</span></li>
				<li><span>랜드마크 정보</span></li>
				<li><span>진료 기록</span></li>

			</ul>
		</div>


<div> <span> 기존내용 </span> </div>

		<!-- 환자 클릭한 진료기록 기존 내용 보여짐  -->
		<div class="info-cont">
			<ul class="info-cont-rp">
				<li><span>2018-10-10</span></li>
				<li><img alt="img" src="images/3.png"> <img alt="img"
					src="images/3.png"></li>
				<li><textarea name="randmark-view" cols="30" rows="10" readonly>여기서는 수정 안되용~~~~~~~~</textarea></li>
				<li><textarea name="today-chart-view" cols="30" rows="10"
						readonly>여기서는 수정 안되용~~~~~~~~</textarea></li>


			</ul>
		</div>



	


<div> <span> 추가내용 </span> </div>
	<!-- 추가내용 적는부분 -->
<div class="wrap2">
	<form action="" name="person-info2 css3">
		<div class="">
			<ul class="cont-ulup">
				<li><span>수정하는날 오늘날짜 (날짜수정 못해)</span></li>
				 <li><input type="file" class="real-upload" accept="image/*" required multiple> </li>
				<li><textarea id="rm-mark" name="randmark" cols="30" rows="10">x축은 1321324 y축은 15468432121</textarea></li>
				<li><textarea id="today-chart" name="chart" cols="30" rows="10">무슨 처방내리고 무슨치료하고 어찌구리 저찌구리</textarea></li>

			</ul>
			<div class="btn-sub">
				<button type="submit" href="">내용 추가 저장</button>

			</div>
		</div>
	</form>


	</div>












</body>
</html>