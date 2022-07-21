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
<title>기존 차트에 내용 추가 업데이트</title>
<link rel="stylesheet" href="assets/css/updateChart.css" />
<link rel="stylesheet" href="assets/css/imagesPop.css" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	CustomerVO pvo = (CustomerVO) session.getAttribute("pvo");
	List<XrayVO> xrayList = (List<XrayVO>) session.getAttribute("xrayList");
	%>


	<h1>~~~~ 환자 진료내용 추가 창</h1>



	<div class="wrap">

		<!-- 목록 이름 -->
		<div class="info-listname">
			<ul class="info-listname-rp">
				<li><span>visit date</span></li>
				<li><span>X-ray 이미지</span></li>
				<li><span>랜드마크 정보</span></li>
				<li><span>진료 기록</span></li>

			</ul>
		</div>


		<div class="part-txt">
			<span> 기존내용 </span>
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
							</div>
						</div>


					</li>
				
					
				<li><textarea class="part-h txtarea" name="randmark-view" cols="30" rows="10" readonly   disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>
				<li><textarea   class="part-h txtarea" name="today-chart-view" cols="30" rows="10"
						readonly   disabled>여기서는 수정 안되용~~~~~~~~</textarea></li>


			</ul>
		</div>






		<div class="part-txt">
		
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
<script type="text/javascript" src="assets/js/imgmodal.js"></script>



<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>





</body>
</html>