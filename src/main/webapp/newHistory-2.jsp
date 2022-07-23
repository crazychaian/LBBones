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
<link rel="stylesheet" href="assets/css/addImgPop.css" />
<link rel="stylesheet" href="assets/css/newHistory-2-Real.css" />



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>새로운 진료 등록 창~~~</title>
<style>
#image {
	position: absolute;
}

#minimap {
	position: absolute;
}

.lineContainer {
	position: absolute;
}

.lineContainermini {
	position: absolute;
}

.line {
	position: absolute;
	height: 10px;
	transform-origin: top left;
	background-color: yellow;
}

.frame1 {
	background-color: black;
	width: 810px;
	height: 925px;
	border: black 5px solid;
	overflow-y: auto;
	overflow-x: auto;
	position: relative;
}

.frame2 {
	position: relative;
	transform-origin: 0% 0%;
	transform: scale(1);
}

.miniframe1 {
	background-color: black;
	width: 325px;
	height: 925px;
	border: black 5px solid;
	overflow: hidden position: relative;
}

.miniframe2 {
	position: relative;
	transform-origin: 0% 0%;
	transform: scale(1);
}

.point {
	width: 80px;
	height: 80px;
	position: absolute;
	z-index: 5;
	display: none;
}

/* #point0 {
			left: 921px;
			top: 1346px;
		}

		#point1 {
			left: 2301px;
			top: 1339px;
		}

		#point2 {
			left: 1150px;
			top: 4939px;
		}

		#point3 {
			left: 1836px;
			top: 4934px;
		}

		#point4 {
			left: 1202px;
			top: 7771px;
		}

		#point5 {
			left: 1759px;
			top: 7772px;
		} */
.pointsvg {
	left: -40px;
	top: -40px;
}

/* .fimg {
	width: 327px;
	height: 891px;
}

.fimgbig {
	width: 809px;
	height: 916px;
} */
</style>
</head>


<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	CustomerVO pvo = (CustomerVO) session.getAttribute("pvo");
	List<XrayLandmarkVO> xrayList = (List<XrayLandmarkVO>) session.getAttribute("xrayList");
	%>









	<div class="underview">


		<div id="inputhidden">
			<input type="hidden" name="p_seq" value="<%=pvo.getP_seq()%>"></input>
			<input type="hidden" name="doc_id" value="<%=vo.getDoc_id()%>"></input>
		</div>
		
		<div id="inputhidden2">
		</div>




		<div class="imgdiv " id="height">


			<%
			if (xrayList == null) {
			%>
			<div class="plus-img"></div>

			<%
			} else {
			%>
			<%
			for (XrayLandmarkVO xvo : xrayList) {
			%>
			<div class="plus-img">
				<div class="listimg">
					<span><%=xvo.getXray_date()%></span> <img class="day-img"
						alt="오늘진료이미지등록" src="img/<%=xvo.getXray_img()%>">
				</div>
			</div>

			<%
			}
			%>
			<%
			}
			%>
		</div>







		<div class="mainImg">

			<div class="miniframe1">
				<div class="miniframe2">
					<img src="" id="minimap" class="fimg">
					<div class="lineContainermini"></div>
					<div class="point" id="pointm0">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="red" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="pointm1">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="red" stroke="white" stroke-width="5" />
					</svg>
					</div>

					<div class="point" id="pointm2">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="pointm3">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="pointm4">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="lightgreen" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="pointm5">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="lightgreen" stroke="white" stroke-width="5" />
					</svg>
					</div>
				</div>
			</div>

		</div>








		<div class="div-main-middle">
			<div class="frame1">
				<div class="frame2">
					<img src="" id="image" class="fimgbig">
					<div class="lineContainer"></div>
					<div class="point" id="point0">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="red" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="point1">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="red" stroke="white" stroke-width="5" />
					</svg>
					</div>

					<div class="point" id="point2">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="point3">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="point4">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="lightgreen" stroke="white" stroke-width="5" />
					</svg>
					</div>
					<div class="point" id="point5">
						<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
						<circle r="20" fill="lightgreen" stroke="white" stroke-width="5" />
					</svg>
					</div>
				</div>
			</div>

		</div>



		<div class="boxes">
			<div class="line01">


				<div class="filebox">
					<!-- 	<input class="upload-name" value="첨부파일" placeholder="X-ray 이미지"
						readonly disabled> <label for="file"></label>  -->
					<input type="file" id="file" name="file"
						style="border-radius: 92px; background: gray; width: 254px;">
					<button class="metal linear disdis"
						style="width: 184px; margin-left: 5px;" type="button"
						id="btnSend_img" value="">X-ray upload</button>


				</div>

				<!-- 	<script type="text/javascript">

						$("#file").on('change',function(){
							  var fileName = $("#file").val();
							  $(".upload-nam	e").val(fileName);
							});
					</script> -->


				<!-- <input type="file" name="file" /> -->

				<div class="topbtn">

					<button class="metal linear disdis" style="width: 257px;"
						type="button" disabled id="btnSend" value="랜드마크분석">Landmark
						Analysis</button>
					<img src="./img/loding.gif" height="15" id="loading"
						style="z-index: 20; left: -33px; position: relative; display:none;" />


					<!-- <div class="llreset"> -->
					<button style="width: 80px; left: -6px;" id="btn1"
						class="metal linear">
						<ion-icon name="sunny-outline"></ion-icon>
						<ion-icon name="refresh-outline"></ion-icon>
					</button>
					<button style="width: 80px;" id="btn2" class="metal linear">
						<ion-icon name="contrast-outline"></ion-icon>
						<ion-icon name="refresh-outline"></ion-icon>
					</button>
					<!-- </div> -->



				</div>

			</div>

			<div class="line02">





				<div class="Container">
					<ion-icon name="sunny-outline"></ion-icon>
					  <font size=2 id="value_view1">100</font>    <input
						style="width: 80%;" id="slider1" type="range" value="100" min="0"
						max="200"></input>
				</div>


				<div class="Container">
					<ion-icon name="contrast-outline"></ion-icon>
					  <font size=2 id="value_view2">100</font>    <input
						style="width: 80%;" id="slider2" type="range" value="100" min="0"
						max="200"></input>
				</div>



				<div class="bababtn">

					<button id="btn3" class="metal linear" style="width: 75px;">X1</button>
					<button id="btn4" class="metal linear" style="width: 75px;">/2</button>
					<button id="btn5" class="metal linear" style="width: 75px;">X2</button>
					<button id="btn6" class="metal linear " style="width: 214px;">Landmark
						- ON - OFF</button>

				</div>

				<div class="numbtn">

					<input style="width: 45px;" class="metal linear" id='first'
						type='button' value='1' onclick="first()" /> <input
						style="width: 45px;" class="metal linear" id='second'
						type='button' value='2' onclick="second()" /> <input
						style="width: 45px;" class="metal linear" id='third' type='button'
						value='3' onclick="third()" /> <input style="width: 45px;"
						class="metal linear" id='fourth' type='button' value='4'
						onclick="fourth()" /> <input style="width: 45px;"
						class="metal linear" id='fifth' type='button' value='5'
						onclick="fifth()" /> <input style="width: 45px;"
						class="metal linear" id='sixth' type='button' value='6'
						onclick="sixth()" /> <input style="width: 170px;"
						class="metal linear" id='finish' type='button'
						value='Landmark fix' onclick="finishevent()" />
				</div>




			</div>


			<div id="myDIV2">

				<!-- <div>Randmark Coordinate Information</div> -->


				<div class="dididi">
					<div>femur head L / R</div>
					<input readonly="" disabled="" type="text"
						class="class0 xy  ipsize" id="test1" name="class0xy"> <input
						readonly="" disabled="" type="text" class="class1 xy ipsize"
						name="class1xy">

				</div>
				<div class="dididi">
					<div>femur medial condyle L / R</div>
					<input readonly="" disabled="" type="text" class="class2 xy ipsize"
						name="class2xy"> <input readonly="" disabled=""
						type="text" class="class3 xy ipsize" name="class3xy">
				</div>
				<div class="dididi">
					<div>ankle talus L / R</div>
					<input readonly="" disabled="" type="text" class="class4 xy ipsize"
						name="class4xy"> <input readonly="" disabled=""
						type="text" class="class5 xy ipsize" name="class5xy">
				</div>
				<div class="dididi">
					<div>femur L / R / GAP</div>
					<input readonly="" disabled="" type="text" class="class6 l ipsize"
						name="class6fel"> <input readonly="" disabled=""
						type="text" class="class6 r ipsize" name="class6fer"> <input
						readonly="" disabled="" type="text" class="class6 d ipsize"
						name="class6feg" style="background-color: #ffffff;">
				</div>
				<div class="dididi">
					<div>tibia L / R / GAP</div>
					<input readonly="" disabled="" type="text" class="class7 l ipsize"
						name="class7til"> <input readonly="" disabled=""
						type="text" class="class7 r ipsize" name="class7tir"> <input
						readonly="" disabled="" type="text" class="class7 d ipsize"
						name="class7tig" style="background-color: #ffffff;">
				</div>

				<div class="dididi">
					<div>Total L / R / GAP</div>
					<input readonly="" disabled="" type="text" class="class8 l ipsize"
						name="class8ttl"> <input readonly="" disabled=""
						type="text" class="class8 r ipsize" name="class8ttr"> <input
						readonly="" disabled="" type="text" class="class8 d ipsize"
						name="class8ttg" style="background-color: #ffffff;">
				</div>



				<!-- <textarea id="rm-write" name="chart" cols="30" rows="10">x-   y-  x-- yyy-----</textarea> -->
			</div>






			<div class="div-cm">
				<input id="result-write" type="textarea" cols="30"
					rows="12" name="cmt_content"></input>
			</div>






			<button type="button" id="btn_upload" class="btn-allsave metal linear" disabled
				style="width: 60%; left: 20%; display: flex; align-items: center; height: 56px; top: 4px; justify-content: center;"
				onclick="lmjoin()">진료내용저장 및 제출</button>


		</div>







	</div>







	<!-- modal   사진등록  영역-->
	<div class="modal-bg" onclick="javascript:popClose();"></div>
	<div class="modal-wrap">
		<div class="add-member">
			<form action="">
				<input id="loadButton" type="file" accept="image/*">
				<button type="submit" class="" id="">
					<span>사진등록</span>
				</button>
			</form>
		</div>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript">
	

			// 초기변수셋

			var l_top_x
			var l_top_y
			var r_top_x
			var r_top_y
			var l_mid_x
			var l_mid_y
			var r_mid_x
			var r_mid_y
			var l_bot_x
			var l_bot_y
			var r_bot_x
			var r_bot_y
			var l_femur_len
			var l_tibia_len
			var l_total_len
			var r_femur_len
			var r_tibia_len
			var r_total_len
			var lr_femur_gap   
			var lr_tibia_gap   
			var lr_total_gap






			// json 입력 테스트
			// var xmlhttp = new XMLHttpRequest();
			// var url = "5b91d839e4b099a4cfa2fbb7.json";
			// xmlhttp.onreadystatechange = function () {
			// 	if (this.readyState == 4 && this.status == 200) {
			// 		jsonprc(xmlhttp.responseText);
			// 	}
			// };
			// xmlhttp.open("GET", url, true);
			// xmlhttp.send();

			var calcScale = 1
			var calcminiScale = 1



			const allpoint = $(".point");

			const aNode = document.querySelector("#point0");
			const bNode = document.querySelector("#point1");

			const cNode = document.querySelector("#point2");
			const dNode = document.querySelector("#point3");

			const eNode = document.querySelector("#point4");
			const fNode = document.querySelector("#point5");

			const maNode = document.querySelector("#pointm0");
			const mbNode = document.querySelector("#pointm1");

			const mcNode = document.querySelector("#pointm2");
			const mdNode = document.querySelector("#pointm3");

			const meNode = document.querySelector("#pointm4");
			const mfNode = document.querySelector("#pointm5");
			
			const mframe2 = document.querySelector(".miniframe2");

			const frame2 = document.querySelector(".frame2");


			// 초기화시 모든 점 비활성화

			allpoint.css('display', 'none');

			// 좌표 재설정

			var src = $('#image').attr('src')
			var img = new Image();
			img.src = src;
			var calcScale = 810 / img.width  // (액자프레임 / 이미지크기)
			var calcminiScale = 925 / img.height  // (액자프레임 / 이미지크기)

			console.log("이미지", img.height, img.width)
			console.log("프레임스케일", calcScale, calcminiScale)






			// 선 전체 다시그리기

			function drawline() {
				const line = $(".line");
				line.remove();
				lineDraw(aNode, cNode, frame2);
				lineDraw(bNode, dNode, frame2);
				lineDraw(cNode, eNode, frame2);
				lineDraw(dNode, fNode, frame2);
				lineDraw(aNode, eNode, frame2);
				lineDraw(bNode, fNode, frame2);

				lineDrawmini(maNode, mcNode, mframe2);
				lineDrawmini(mbNode, mdNode, mframe2);
				lineDrawmini(mcNode, meNode, mframe2);
				lineDrawmini(mdNode, mfNode, mframe2);
				lineDrawmini(maNode, meNode, mframe2);
				lineDrawmini(mbNode, mfNode, mframe2);
			}

			// 선 개별 그리기 함수

			function lineDraw(a, b, c) {
				const aRect = a.getBoundingClientRect();
				const bRect = b.getBoundingClientRect();
				const cRect = c.getBoundingClientRect();

				aRect.x = aRect.x - cRect.x
				aRect.y = aRect.y - cRect.y
				bRect.x = bRect.x - cRect.x
				bRect.y = bRect.y - cRect.y

				// console.log(aRect,bRect)
				// console.log(aRect.x,aRect.y,bRect.x,aRect.y)

				if (aRect.x > bRect.x) {
					bRect.x = aRect.x + bRect.x;
					aRect.x = bRect.x - aRect.x;
					bRect.x = bRect.x - aRect.x;

					bRect.y = aRect.y + bRect.y;
					aRect.y = bRect.y - aRect.y;
					bRect.y = bRect.y - aRect.y;
				}

				let distance = Math.sqrt(
					Math.pow(bRect.x - aRect.x, 2) + Math.pow(bRect.y - aRect.y, 2)
				);
				let calc = Math.atan((bRect.y - aRect.y) / (bRect.x - aRect.x));
				let degree = (calc * 180) / Math.PI;

				let line = document.createElement("div");
				// console.log(distance, aRect.y, aRect.x, degree)
				line.className = "line";
				const styleProperties = {
					width: distance + "px",
					top: aRect.y + "px",
					left: aRect.x + "px"
				};
				for (let property in styleProperties) {
					line.style[property] = styleProperties[property];
				}
				document.querySelector(".lineContainer").appendChild(line);

				$(".line:last-child").css("transform", "rotate(" + degree + "deg)")
			}
			
			function lineDrawmini(a, b, c) {
				const aRect = a.getBoundingClientRect();
				const bRect = b.getBoundingClientRect();
				const cRect = c.getBoundingClientRect();

				aRect.x = aRect.x - cRect.x
				aRect.y = aRect.y - cRect.y
				bRect.x = bRect.x - cRect.x
				bRect.y = bRect.y - cRect.y

				// console.log(aRect,bRect)
				// console.log(aRect.x,aRect.y,bRect.x,aRect.y)

				if (aRect.x > bRect.x) {
					bRect.x = aRect.x + bRect.x;
					aRect.x = bRect.x - aRect.x;
					bRect.x = bRect.x - aRect.x;

					bRect.y = aRect.y + bRect.y;
					aRect.y = bRect.y - aRect.y;
					bRect.y = bRect.y - aRect.y;
				}

				let distance = Math.sqrt(
					Math.pow(bRect.x - aRect.x, 2) + Math.pow(bRect.y - aRect.y, 2)
				);
				let calc = Math.atan((bRect.y - aRect.y) / (bRect.x - aRect.x));
				let degree = (calc * 180) / Math.PI;

				let line = document.createElement("div");
				// console.log(distance, aRect.y, aRect.x, degree)
				line.className = "line";
				const styleProperties = {
					width: distance + "px",
					top: aRect.y + "px",
					left: aRect.x + "px"
				};
				for (let property in styleProperties) {
					line.style[property] = styleProperties[property];
				}
				document.querySelector(".lineContainermini").appendChild(line);

				$(".line:last-child").css("transform", "rotate(" + degree + "deg)")
			}


			// 밝기, 명암 슬라이드바 처리

			function ShowSliderValue(sVal) {
				var obValueView = document.getElementById("slider_value_view");
				obValueView.innerHTML = sVal
			}
			function ShowSliderValue(sVal) {
				var obValueView = document.getElementById("slider_value_view");
				obValueView.innerHTML = sVal
			}

			var range = $('#slider1');
			var range2 = $('#slider2');
			var RangeSlider = function () {

				range.on('input', function () {
					document.querySelector("#value_view1").innerHTML = this.value;
					// console.log(range.val(),range2.val())
					document.querySelector('#image').style.filter = "brightness(" + range.val() + "%) contrast(" + range2.val() + "%)";
					document.querySelector('#minimap').style.filter = "brightness(" + range.val() + "%) contrast(" + range2.val() + "%)";
				});
				range2.on('input', function () {
					document.querySelector("#value_view2").innerHTML = this.value;
					// console.log(range.val(),range2.val()) 
					document.querySelector('#image').style.filter = "brightness(" + range.val() + "%) contrast(" + range2.val() + "%)";
					document.querySelector('#minimap').style.filter = "brightness(" + range.val() + "%) contrast(" + range2.val() + "%)";
				});
			};
			RangeSlider();

			// 이미지 배율 조정
			var scale = 1;
			document.querySelector('#btn1').addEventListener('click', function () {
				document.querySelector('#image').style.filter = "brightness(" + 100 + "%) contrast(" + range2.val() + "%)";
				document.querySelector('#minimap').style.filter = "brightness(" + 100 + "%) contrast(" + range2.val() + "%)";
				document.querySelector('#slider1').value = 100;
				document.querySelector("#value_view1").innerHTML = 100;
			}
			)

			document.querySelector('#btn2').addEventListener('click', function () {
				document.querySelector('#image').style.filter = "brightness(" + range.val() + "%) contrast(" + 100 + "%)";
				document.querySelector('#minimap').style.filter = "brightness(" + range.val() + "%) contrast(" + 100 + "%)";
				document.querySelector('#slider2').value = 100;
				document.querySelector("#value_view2").innerHTML = 100;
			}
			)

			document.querySelector('#btn3').addEventListener('click', function () {
				// console.log("클릭됨")
				scale = 1;
				document.querySelector('.frame2').style.transform = "scale(" + scale * calcScale + ")";
				$('.frame1').css('overflow-x', 'hidden')										// 액자프레임 가로스크롤 숨기기
				//document.querySelector('.frame1').style.width = img.width * calcScale * scale + "px"
			}
			)

			document.querySelector('#btn4').addEventListener('click', function () {
				scale = scale / 2;
				if (scale <= 1) {
					scale = 1;
					$('.frame1').css('overflow-x', 'hidden')										// 액자프레임 가로스크롤 숨기기
				}
				document.querySelector('.frame2').style.transform = "scale(" + scale * calcScale + ")";
				//document.querySelector('.frame1').style.width = img.width * calcScale * scale + "px"
			}
			)

			document.querySelector('#btn5').addEventListener('click', function () {
				// console.log("클릭됨")
				scale = scale * 2;
				if (scale >= 8) {
					scale = 8
				}
				document.querySelector('.frame2').style.transform = "scale(" + scale * calcScale + ")";
				//document.querySelector('.frame1').style.width = img.width * calcScale * scale + "px"; //액자프레임 크기변경
				$('.frame1').css('overflow-x', 'auto')										// 액자프레임 가로스크롤 표시
			}
			)

			var LMtoggle = 0;
			document.getElementById('btn6').addEventListener('click', function () {
				const line = $(".line");
				if (LMtoggle == 0) {
					LMtoggle = 1;
					// console.log("LM토글 켜짐")
					allpoint.css('display', 'block');
					line.css('display', 'block');
				}
				else if (LMtoggle == 1) {
					LMtoggle = 0;
					// console.log("LM토글 꺼짐")
					allpoint.css('display', 'none');
					line.css('display', 'none');

				}
			}
			)


			// 파일전송
			const btnSend = document.getElementById("btnSend");
			const btnSend_img = document.getElementById("btnSend_img");
			const btn_upload = document.getElementById("btn_upload");
			const input = document.querySelector("input[type='file']");

			btnSend.disabled = true;  // send 버튼 초기 비활성화

			btnSend_img.addEventListener("click", function () {

				document.getElementById('loading').style.display = "inline";

				let formData = new FormData();
				
				let inputp_seq = $('input[name=p_seq]');
				let p_seq = $(inputp_seq[0]).val();

				formData.append('file', input.files[0]);
				formData.append('name', 'file')
				formData.append('p_seq', p_seq)
				

				fetch("uploadService", {
					method: "POST",
					body: formData
				}).then((response) => response.json())
					.then((data) => {
						btnSend_img.disabled = true;
						btnSend.disabled = false;
						btn_upload.disabled = true;
						
						document.getElementById('loading').style.display = "none";
						$('#image').attr('src', "./img/" + data.name);
						$('#minimap').attr('src', "./img/" + data.name);
						const line = $(".line");
						line.remove();
						LMtoggle = 0;

						calcScale = 810 / data.width  // (액자프레임 너비 / 이미지크기)
						calcminiScale = 925 / data.height
						console.log(calcScale, calcminiScale);
						document.querySelector('.frame2').style.transform = "scale(" + calcScale + ")";
						$('.frame1').css('overflow-x', 'hidden')										// 액자프레임 가로스크롤 숨기기
						document.querySelector('.frame1').style.width = data.width * calcScale + "px"; //액자프레임 1배크기기준으로
						document.querySelector('.miniframe2').style.transform = "scale(" + calcminiScale + ")";
						$('.miniframe1').css('overflow', 'hidden')										// 액자프레임 가로스크롤 숨기기
						document.querySelector('.miniframe1').style.height = data.height * calcminiScale + "px"; //액자프레임 1배크기기준으로




						allpoint.css('display', 'none');
						
						$('div#inputhidden2').html("");
						XraySeqinput = `<input type="hidden" name="xray_seq" value="`+data.thisXray_seq+`"></input>`
						$('div#inputhidden2').append(XraySeqinput);
				
					}
					)
					.catch((error) => {
						console.error('실패:', error)
						btnSend.disabled = true;
						//				  closeLoading();
						document.getElementById('loading').style.display = "none";
					}
					);
			});

			//	파일분석 전송
				
			btnSend.addEventListener("click", function () {

				btnSend_img.disabled = true;
				btnSend.disabled = true;
				btn_upload.disabled = false;

				//        	openLoading();
				document.getElementById('loading').style.display = "inline";
				// console.log(input.files[0]);

				let formData = new FormData();

				formData.append('file', input.files[0]);
				formData.append('name', 'file')

				fetch("http://220.93.169.1:4121/uploader", {
					method: "POST",
					body: formData
				}).then((response) => response.json())
					.then((data) => {
						// console.log('성공:', data);
						btnSend.disabled = false;
						//        		  closeLoading();
						document.getElementById('loading').style.display = "none";
						// console.log(data[0].x)
						dataprc(data)
					}
					)
					.catch((error) => {
						console.error('실패:', error)
						btnSend.disabled = false;
						//        		  closeLoading();
						document.getElementById('loading').style.display = "none";
					}
					);
			});


			// db에서 수신한 데이터 처리

			function dataprc(data) {
				
				// 기본변수처리
				l_top_x = data[0].x
				l_top_y = data[0].y
				r_top_x = data[1].x
				r_top_y = data[1].y
				l_mid_x = data[2].x
				l_mid_y = data[2].y
				r_mid_x = data[3].x
				r_mid_y = data[3].y
				l_bot_x = data[4].x
				l_bot_y = data[4].y
				r_bot_x = data[5].x
				r_bot_y = data[5].y
				l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
				r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
				l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
				r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
				l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
				r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
				
				lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
				lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
				lr_total_gap = Math.abs(l_total_len - r_total_len)
				
				for (var i = 0; i < data.length; i++) {
					var input_xy = document.querySelector(".class" + i + ".xy")
					input_xy.value = data[i].x + "," +data[i].y;
					// console.log(input_x.value)
					document.querySelector("#point" + i).style.left = parseInt(data[i].x) + "px";
					document.querySelector("#point" + i).style.top = parseInt(data[i].y) + "px";
					document.querySelector("#pointm" + i).style.left = parseInt(data[i].x) + "px";
					document.querySelector("#pointm" + i).style.top = parseInt(data[i].y) + "px";
				}
				setframe()


				//			console.log(dist(arr2[0],arr2[1],arr2[4],arr2[5]))
				// console.log($(".class0.x").val())
						$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
						$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
						$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
						$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
						$(".class8.l").val(l_total_len.toFixed(2) + " mm")
						$(".class8.r").val(r_total_len.toFixed(2) + " mm")

						$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
						$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
						$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
			}


			// function jsonprc(resp) {
			// 	var arr = JSON.parse(resp);
			// 	var arr2 = []
			// 	for (var i = 0; i < arr.length; i++) {
			// 		var input_x = document.querySelector(".class" + i + ".x")
			// 		input_x.value = arr[i].x;
			// 		console.log(input_x.value)
			// 		document.querySelector("#point" + i).style.left = parseInt(arr[i].x) + "px";
			// 		var input_y = document.querySelector(".class" + i + ".y")
			// 		input_y.value = arr[i].y;
			// 		document.querySelector("#point" + i).style.top = parseInt(arr[i].y) + "px";
			// 		arr2.push(arr[i].x, arr[i].y)
			// 	}
			// 	setframe()

			// 	console.log(dist(arr2[0], arr2[1], arr2[4], arr2[5]))
			// 	console.log($(".class0.x").val())
			// 	$(".class6.l").val(dist(arr2[0], arr2[1], arr2[4], arr2[5]))
			// 	$(".class6.r").val(dist(arr2[2], arr2[3], arr2[6], arr2[7]))
			// 	$(".class7.l").val(dist(arr2[4], arr2[5], arr2[8], arr2[9]))
			// 	$(".class7.r").val(dist(arr2[6], arr2[7], arr2[10], arr2[11]))
			// 	$(".class8.l").val(dist(arr2[0], arr2[1], arr2[8], arr2[9]))
			// 	$(".class8.r").val(dist(arr2[2], arr2[3], arr2[10], arr2[11]))

			// 	$(".class6.d").val(Math.abs($(".class6.l").val() - $(".class6.r").val()))
			// 	$(".class7.d").val(Math.abs($(".class7.l").val() - $(".class7.r").val()))
			// 	$(".class8.d").val(Math.abs($(".class8.l").val() - $(".class8.r").val()))

			// 	stand = $(".class8.l").val()
			// 	if ($(".class8.l").val() < $(".class8.r").val()) {
			// 		stand = $(".class8.r").val()
			// 	}

			// 	$(".class8.p").val(($(".class8.d").val() / stand * 100))
			// 	$(".class7.p").val(($(".class7.d").val() / stand * 100))
			// 	$(".class6.p").val(($(".class6.d").val() / stand * 100))
			// }

			// 길이계산
			function dist(x1, y1, x2, y2) {
				var x3 = Math.abs(x1 - x2)
				var y3 = Math.abs(y1 - y2)
				var c = Math.sqrt((x3 * x3) + (y3 * y3))
				return c
			}

			function setframe() {
				document.querySelector('.frame2').style.transform = "scale(" + 1.0 + ")"; // 원본사이즈 설정
				document.querySelector('.miniframe2').style.transform = "scale(" + 1.0 + ")"; // 원본사이즈 설정
				allpoint.css('display', 'block');
				drawline();
				LMtoggle = 1;
				document.querySelector('.frame2').style.transform = "scale(" + calcScale + ")";
				document.querySelector('.miniframe2').style.transform = "scale(" + calcminiScale + ")";
				$('.frame1').css('overflow-x', 'hidden')										// 액자프레임 가로스크롤 숨기기
				// document.querySelector('.frame1').style.width = img.width * calcScale + "px"; //액자프레임 1배크기기준으로
			}
			
			
			
			///////////////////////////////////////////////////////////////////////////////
			
			
			const firstevent = (e) => {
				
					$('.lineContainermini').html('');
					$('.lineContainer').html('');
					$('#point0').html('');
					$('#pointm0').html('');
					
					point0 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
						style="position: relative;">
						<circle r="20" fill="red" stroke="white" stroke-width="5" />
					</svg>`
					
					$('#point0').append(point0)
					$('#pointm0').append(point0)
					
					
			
					var input0_xy = document.querySelector(".class0.xy") // 객체인식 x 값 
						document.querySelector("#point0").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
						document.querySelector("#point0").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
						
						document.querySelector("#pointm0").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
						document.querySelector("#pointm0").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
						
						input0_xy.value = e.offsetX +","+e.offsetY;
						
						setframe()
						
						l_top_x = e.offsetX
						l_top_y = e.offsetY
					
						l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
						r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
						l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
						r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
						l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
						r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
						
						lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
						lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
						lr_total_gap = Math.abs(l_total_len - r_total_len)
						
						$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
						$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
						$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
						$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
						$(".class8.l").val(l_total_len.toFixed(2) + " mm")
						$(".class8.r").val(r_total_len.toFixed(2) + " mm")

						$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
						$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
						$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
						
					};
					
					const secondevent = (e) => {
						
						$('.lineContainermini').html('');
						$('.lineContainer').html('');
						$('#point1').html('');
						$('#pointm1').html('');
						
						point1 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
							<circle r="20" fill="red" stroke="white" stroke-width="5" />
						</svg>`
						
						$('#point1').append(point1)
						$('#pointm1').append(point1)
						
						
				
						var input1_xy = document.querySelector(".class1.xy") // 객체인식 x 값 
							document.querySelector("#point1").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#point1").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							document.querySelector("#pointm1").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#pointm1").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							input1_xy.value = e.offsetX +","+e.offsetY;
							
							setframe()
							
							r_top_x = e.offsetX
							r_top_y = e.offsetY
		
							l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
							r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
							l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
							r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
							l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
							r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
							
							lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
							lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
							lr_total_gap = Math.abs(l_total_len - r_total_len)
							
							$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
							$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
							$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
							$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
							$(".class8.l").val(l_total_len.toFixed(2) + " mm")
							$(".class8.r").val(r_total_len.toFixed(2) + " mm")

							$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
							$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
							$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
							
					}
					
					const thirdevent = (e) => {
						
						$('.lineContainermini').html('');
						$('.lineContainer').html('');
						$('#point2').html('');
						$('#pointm2').html('');
						
						point2 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
							<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
						</svg>`
						
						$('#point2').append(point2)
						$('#pointm2').append(point2)
						
				
						var input2_xy = document.querySelector(".class2.xy") // 객체인식 x 값 
							document.querySelector("#point2").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#point2").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							document.querySelector("#pointm2").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#pointm2").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							input2_xy.value = e.offsetX +","+e.offsetY;
							
							setframe()
							
							l_mid_x = e.offsetX
							l_mid_y = e.offsetY
							
							l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
							r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
							l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
							r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
							l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
							r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
							
							lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
							lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
							lr_total_gap = Math.abs(l_total_len - r_total_len)
							
							$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
							$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
							$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
							$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
							$(".class8.l").val(l_total_len.toFixed(2) + " mm")
							$(".class8.r").val(r_total_len.toFixed(2) + " mm")

							$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
							$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
							$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
					}
					
					const fourthevent = (e) => {
						
						$('.lineContainermini').html('');
						$('.lineContainer').html('');
						$('#point3').html('');
						$('#pointm3').html('');
						
						point3 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
							<circle r="20" fill="yellow" stroke="white" stroke-width="5" />
						</svg>`
						
						$('#point3').append(point3)
						$('#pointm3').append(point3)
						
				
						var input3_xy = document.querySelector(".class3.xy") // 객체인식 x 값 
							document.querySelector("#point3").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#point3").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							document.querySelector("#pointm3").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#pointm3").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							input3_xy.value = e.offsetX +","+e.offsetY;
							
							setframe()
							
							r_mid_x = e.offsetX
							r_mid_y = e.offsetY
							
							l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
							r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
							l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
							r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
							l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
							r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
							
							lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
							lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
							lr_total_gap = Math.abs(l_total_len - r_total_len)
							
							$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
							$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
							$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
							$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
							$(".class8.l").val(l_total_len.toFixed(2) + " mm")
							$(".class8.r").val(r_total_len.toFixed(2) + " mm")

							$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
							$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
							$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
							
					}
					
					const fifthevent = (e) => {
						
						$('.lineContainermini').html('');
						$('.lineContainer').html('');
						$('#point4').html('');
						$('#pointm4').html('');
						
						point4 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
							<circle r="20" fill="green" stroke="white" stroke-width="5" />
						</svg>`
						
						$('#point4').append(point4)
						$('#pointm4').append(point4)
						
				
						var input4_xy = document.querySelector(".class4.xy") // 객체인식 x 값 
							document.querySelector("#point4").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#point4").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							document.querySelector("#pointm4").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#pointm4").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							input4_xy.value = e.offsetX +","+e.offsetY;
							
							setframe()
							
							l_bot_x = e.offsetX
							l_bot_y = e.offsetY
							
							l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
							r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
							l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
							r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
							l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
							r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
							
							lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
							lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
							lr_total_gap = Math.abs(l_total_len - r_total_len)
							
							$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
							$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
							$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
							$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
							$(".class8.l").val(l_total_len.toFixed(2) + " mm")
							$(".class8.r").val(r_total_len.toFixed(2) + " mm")

							$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
							$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
							$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
							
					}
					
					const sixthevent = (e) => {
						
						$('.lineContainermini').html('');
						$('.lineContainer').html('');
						$('#point5').html('');
						$('#pointm5').html('');
						
						point5 = `<svg class="pointsvg" viewBox="-25 -25 50 50"
							style="position: relative;">
							<circle r="20" fill="green" stroke="white" stroke-width="5" />
						</svg>`
						
						$('#point5').append(point5)
						$('#pointm5').append(point5)
						
				
						var input5_xy = document.querySelector(".class5.xy") // 객체인식 x 값 
							document.querySelector("#point5").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#point5").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							document.querySelector("#pointm5").style.left = parseInt(e.offsetX)+"px"; // x 값의 위치
							document.querySelector("#pointm5").style.top = parseInt(e.offsetY)+"px"; // y 값의 위치
							
							input5_xy.value = e.offsetX +","+e.offsetY;
							
							setframe()
							
							r_bot_x = e.offsetX
							r_bot_y = e.offsetY
							
							l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)*0.14
							r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)*0.14
							l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)*0.14
							r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)*0.14
							l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)*0.14
							r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)*0.14
							
							lr_femur_gap = Math.abs(l_femur_len - r_femur_len)
							lr_tibia_gap = Math.abs(l_tibia_len - r_tibia_len)
							lr_total_gap = Math.abs(l_total_len - r_total_len)
							
							$(".class6.l").val(l_femur_len.toFixed(2) + " mm")
							$(".class6.r").val(r_femur_len.toFixed(2) + " mm")
							$(".class7.l").val(l_tibia_len.toFixed(2) + " mm")
							$(".class7.r").val(r_tibia_len.toFixed(2) + " mm")
							$(".class8.l").val(l_total_len.toFixed(2) + " mm")
							$(".class8.r").val(r_total_len.toFixed(2) + " mm")

							$(".class6.d").val(lr_femur_gap.toFixed(2)  + " mm")
							$(".class7.d").val(lr_tibia_gap.toFixed(2)  + " mm")
							$(".class8.d").val(lr_total_gap.toFixed(2)  + " mm")
							
					}
			
			
			
			////////////////////////////////////////////////////////////////////////////////
			function first(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point0').html('');
				$('#pointm0').html('');
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',fifthevent);
				image.removeEventListener('click',sixthevent);
				
				image.addEventListener('click', firstevent);
						
			}
			
			function second(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point1').html('');
				$('#pointm1').html('');
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',fifthevent);
				image.removeEventListener('click',sixthevent);

				image.addEventListener('click', secondevent);
						
				
			}
			
			function third(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point2').html('');
				$('#pointm2').html('');
				
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',fifthevent);
				image.removeEventListener('click',sixthevent);

				image.addEventListener('click', thirdevent);
				
				
			}
			
			function fourth(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point3').html('');
				$('#pointm3').html('');
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fifthevent);
				image.removeEventListener('click',sixthevent);
				
				image.addEventListener('click', fourthevent);
				
			}
			
			function fifth(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point4').html('');
				$('#pointm4').html('');
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',sixthevent);
				
				image.addEventListener('click', fifthevent);
				
			}
			
			function sixth(){
				
				const minimap = document.getElementById('minimap');
				const image = document.getElementById('image');
				
				$('.lineContainermini').html('');
				$('.lineContainer').html('');
				$('#point5').html('');
				$('#pointm5').html('');
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',fifthevent);
				
				image.addEventListener('click', sixthevent);
				
			}
			
			function finishevent() {
				image.removeEventListener('click',firstevent);
				image.removeEventListener('click',secondevent);
				image.removeEventListener('click',thirdevent);
				image.removeEventListener('click',fourthevent);
				image.removeEventListener('click',fifthevent);
				image.removeEventListener('click',sixthevent);
			}
			
			
			/////////////////////////////////////////////////////
			// var strArray = string.split(',');
			// strAtrry[0]
			// strAtrry[1]

function lmjoin() {
				
	const btnSend = document.getElementById("btnSend");
	const btnSend_img = document.getElementById("btnSend_img");
	const btn_upload = document.getElementById("btn_upload");
	const input = document.querySelector("input[type='file']");
	
	btnSend_img.disabled = false;
	btnSend.disabled = true;
	btn_upload.disabled = true;
	
				
		let class0xy = $('input[name=class0xy]');
		let ltopxy = $(class0xy[0]).val();
		let ltopxyArray = ltopxy.split(',');
		let l_top_x = ltopxyArray[0]
		let l_top_y = ltopxyArray[1]
		
		let class1xy = $('input[name=class1xy]');
		let rtopxy = $(class1xy[0]).val();
		let rtopxyArray = rtopxy.split(',');
		let r_top_x = rtopxyArray[0]
		let r_top_y = rtopxyArray[1]
		
		let class2xy = $('input[name=class2xy]');
		let lmidxy = $(class2xy[0]).val();
		let lmidxyArray = lmidxy.split(',');
		let l_mid_x = lmidxyArray[0]
		let l_mid_y = lmidxyArray[1]
		
		let class3xy = $('input[name=class3xy]');
		let rmidxy = $(class3xy[0]).val();
		let rmidxyArray = rmidxy.split(',');
		let r_mid_x = rmidxyArray[0]
		let r_mid_y = rmidxyArray[1]
		
		let class4xy = $('input[name=class4xy]');
		let lbotxy = $(class4xy[0]).val();
		let lbotxyArray = lbotxy.split(',');
		let l_bot_x = lbotxyArray[0]
		let l_bot_y = lbotxyArray[1]
		
		let class5xy = $('input[name=class5xy]');
		let rbotxy = $(class5xy[0]).val();
		let rbotxyArray = rbotxy.split(',');
		let r_bot_x = rbotxyArray[0]
		let r_bot_y = rbotxyArray[1]
		
		let class6fel = $('input[name=class6fel]');
		let lfemurlen = $(class6fel[0]).val();
		let l_femur_len = lfemurlen.replace(' mm','');
		
		let class6fer = $('input[name=class6fer]');
		let rfemurlen = $(class6fer[0]).val();
		let r_femur_len = rfemurlen.replace(' mm','');
		
		let class6feg = $('input[name=class6feg]');
		let lrfemurgap = $(class6feg[0]).val();
		let lr_femur_gap = lrfemurgap.replace(' mm','');
		
		let class7til = $('input[name=class7til]');
		let ltibialen = $(class7til[0]).val();
		let l_tibia_len = ltibialen.replace(' mm','');
		
		let class7tir = $('input[name=class7tir]');
		let rtibialen = $(class7tir[0]).val();
		let r_tibia_len = rtibialen.replace(' mm','');
		
		let class7tig = $('input[name=class7tig]');
		let lrtibiagap = $(class7tig[0]).val();
		let lr_tibia_gap = lrtibiagap.replace(' mm','');
		
		let class8ttl = $('input[name=class8ttl]');
		let ltotallen = $(class8ttl[0]).val();
		let l_total_len = ltotallen.replace(' mm','');
		
		let class8ttr = $('input[name=class8ttr]');
		let rtotallen = $(class8ttr[0]).val();
		let r_total_len = rtotallen.replace(' mm','');
		
		let class8ttg = $('input[name=class8ttg]');
		let lrtotalgap = $(class8ttg[0]).val();
		let lr_total_gap = lrtotalgap.replace(' mm','');
		
		let inputxray_seq = $('input[name=xray_seq]');
		let xray_seq = $(inputxray_seq[0]).val();
		
		let inputdoc_id = $('input[name=doc_id]');
		let doc_id = $(inputdoc_id[0]).val();
		
		let textareacontent = $('input[name=cmt_content]');
		let cmt_content = $(textareacontent[0]).val();
		console.log(cmt_content);
		
		$.ajax({
			url : 'landmarkService',
			type : 'post',
			dataType : 'json',
			data : {
				"xray_seq" : xray_seq,
				"l_top_x" : l_top_x,
				"l_top_y" : l_top_y,
				"l_mid_x" : l_mid_x,
				"l_mid_y" : l_mid_y,
				"l_bot_x" : l_bot_x,
				"l_bot_y" : l_bot_y,
				"r_top_x" : r_top_x,
				"r_top_y" : r_top_y,
				"r_mid_x" : r_mid_x,
				"r_mid_y" : r_mid_y,
				"r_bot_x" : r_bot_x,
				"r_bot_y" : r_bot_y,
				"l_femur_len" : l_femur_len,
				"l_tibia_len" : l_tibia_len,
				"l_total_len" : l_total_len,
				"r_femur_len" : r_femur_len,
				"r_tibia_len" : r_tibia_len,
				"r_total_len" : r_total_len,
				"lr_femur_gap" : lr_femur_gap,
				"lr_tibia_gap" : lr_tibia_gap,
				"lr_total_gap" : lr_total_gap,
				"doc_id" : doc_id,
				"cmt_content" : cmt_content
				
			},
			success : function(res) {
				if(res==true){
					alert("성공");
				} else {
					alert("실패");
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



























<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>