<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기존 차트에 내용 추가 업데이트</title>
<link rel="stylesheet" href="assets/css/updateChart-Real.css" />
<link rel="stylesheet" href="assets/css/imagesPop-Real.css" />



<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@300;600&display=swap" rel="stylesheet">





<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

	<div class="titletxt">ADD MEDICAL RECORDS</div>



	<div class="wrap">

		<!-- 목록 이름 -->
		<div class="info-listname">
			<ul class="info-listname-rp">
				<li><span>VISIT DATE</span></li>
					<li><span>X-ray</span></li>
					<li><span>RANDMARK INFO</span></li>
					<li><span>RECORD</span></li>

			</ul>
		</div>


		<div class="part-txt">
			<span> Existing content </span>
		</div>

		<!-- 환자 클릭한 진료기록 기존 내용 보여짐  -->
		<div class="info-cont">
			<ul class="info-cont-rp">
				<li><span >2018-10-10</span></li>
				
				<li id="imglistLi">
						
						
						
						<!-- 클릭할 이미지 리스트  -->
						<div class="imgList">
							<div class="imgC" style="cursor : zoom-in">
								<img src="images/1.png" alt="모달할 이미지">
								<p>이미지 1</p>
							</div>
							<!-- <div class="imgC" style="cursor : zoom-in">
								<img src="images/4.png" alt="모달할 이미지">
								<p>이미지 2</p>
							</div> -->

						</div>


					</li>
				
					
				<li><textarea class="part-h txtarea" name="randmark-view" cols="30" rows="10" readonly   disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
				<li><textarea   class="part-h txtarea" name="today-chart-view" cols="30" rows="10"
						readonly   disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>


			</ul>
		</div>






		<div class="part-txt">
			<span> Additional information - RECORD </span>
		</div>
		
		
		
		<!-- 추가내용 적는부분 -->
			
				<div class="info-cont" style=" background-color: #1d253c;">
					<ul class="cont-ulup info-cont-rp">
						<!-- <li><span >수정하는날 오늘날짜 (날짜수정 못해)</span></li>
						<li><input type="file" class="real-upload" accept="image/*"
							required multiple></li>
						<li><textarea class="part-h txtarea2" id="rm-mark" name="randmark" cols="30"
								rows="10">x축은 1321324 y축은 15468432121</textarea></li> -->
						<li><textarea class="part-h txtarea2" id="today-chart" name="chart" cols="30"
								rows="10">무슨 처방내리고 무슨치료하고 어찌구리 저찌구리</textarea></li>

					</ul>
				</div>
				
				<!-- 제출버튼 -->
					<div class="btn-sub">
						<button class="savec" type="submit" href="">SAVE CONTENT</button>

					</div>





	</div>


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