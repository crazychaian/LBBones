<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/addImgPop.css" />
<link rel="stylesheet" href="assets/css/newHistory-2.css" />



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
				width: 800px;
				height: 800px;
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
				width: 315px;
				height: 800px;
				border: black 5px solid;
				overflow:hidden
				position: relative;
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
		</style>
</head>


<body>


	<div>






		<div class="underview">





			<div class="imgdiv " id="height">

				<!-- 사진등록하면 추가되는 부분 -->
				<div class="plus-img">
					<div class="listimg">
						<span>2018-10-18</span> <img class="day-img" alt="오늘진료이미지등록"
							src="images/1.png">
					</div>
				</div>
				<!-- 사진등록하면 추가되는 부분 -->
				<div class="plus-img">
					<div class="listimg">
						<span>2018-11-18</span> <img class="day-img" alt="오늘진료이미지등록"
							src="images/1.png">
					</div>
				</div>
				<!-- 사진등록하면 추가되는 부분 -->
				<div class="plus-img">
					<div class="listimg">
						<span>2018-12-18</span> <img class="day-img" alt="오늘진료이미지등록"
							src="images/1.png">
					</div>
				</div>
			</div>







			<div class="mainImg">

				<div class="img-date">2018-10-18</div>
				<div class="miniframe1">
					<div class="miniframe2">
						<img src="./img/bono.png" id="minimap">
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
						<img src="./img/bono.png" id="image">
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

				<form>
					<input type="file" name="file" /> <input type="button"
						id="btnSend_img" value="이미지업로드" /> <input type="button"
						id="btnSend" value="랜드마크분석" /> <img src="./img/loding.gif"
						height="15" id="loading" style="display: none;" />
				</form>
				<button id="btn1">밝기 원래대로</button>
				<button id="btn2">대비 원래대로</button>
				<button id="btn3">크기 1배</button>
				<button id="btn4">크기 반배</button>
				<button id="btn5">크기 2배</button>
				<button id="btn6">랜드마크 토글</button>
				<input id='first' type='button' value='1번' onclick="first()" />
				<div class="Container">
					  <font size=2 id="value_view1">100</font>    <input
						style="width: 80%;" id="slider1" type="range" value="100" min="0"
						max="200"></input>
				</div>


				<div class="Container">
					  <font size=2 id="value_view2">100</font>    <input
						style="width: 80%;" id="slider2" type="range" value="100" min="0"
						max="200"></input>
				</div>



			</div>


			<div id="myDIV2">
				<div class="div-lm">
					<table>

						<tr>
							<td>허벅</td>
							<td><input type="text" class="class0 x" id="test1"></td>
							<td><input type="text" class="class0 y"></td>

							<td><input type="text" class="class1 x"></td>
							<td><input type="text" class="class1 y"></td>
						</tr>

						<tr>
							<td>무릎</td>
							<td><input type="text" class="class2 x"></td>
							<td><input type="text" class="class2 y"></td>

							<td><input type="text" class="class3 x"></td>
							<td><input type="text" class="class3 y"></td>
						</tr>

						<tr>
							<td>발목</td>
							<td><input type="text" class="class4 x"></td>
							<td><input type="text" class="class4 y"></td>

							<td><input type="text" class="class5 x"></td>
							<td><input type="text" class="class5 y"></td>
						</tr>
						<tr>
							<td>Top</td>
							<td><input type="text" class="class6 l"></td>
							<td><input type="text" class="class6 r"></td>
							<td><input type="text" class="class6 d"></td>
						</tr>
						<tr>
							<td>Bottom</td>
							<td><input type="text" class="class7 l"></td>
							<td><input type="text" class="class7 r"></td>
							<td><input type="text" class="class7 d"></td>
						</tr>
						<tr>
							<td>Total</td>
							<td><input type="text" class="class8 l"></td>
							<td><input type="text" class="class8 r"></td>
							<td><input type="text" class="class8 d"></td>
						</tr>


					</table>
					<textarea id="rm-write" name="chart" cols="30" rows="10">x-   y-  x-- yyy-----</textarea>
				</div>
				<div class="div-cm">
					<textarea id="result-write" name="chart" cols="30" rows="10">무슨 처방내리고 무슨치료하고 어찌구리 저찌구리</textarea>
				</div>
			</div>



		</div>

		<button type="submit" id="" class="btn-allsave">진료내용저장 및 제출</button>
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


			var input_x = document.querySelector(".class0.x")
			// console.log("value:",input_x.value)
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

			var test = document.querySelector(".class0.x").value
			// console.log("디버그",test)
			var src = $('#image').attr('src')
			var img = new Image();
			img.src = src;
			var calcScale = 800 / img.width  // (액자프레임 / 이미지크기)
			var calcminiScale = 800 / img.height  // (액자프레임 / 이미지크기)

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

			document.getElementById('btn3').addEventListener('click', function () {
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

			document.getElementById('btn5').addEventListener('click', function () {
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
			const input = document.querySelector("input[type='file']");

			btnSend.disabled = true;  // send 버튼 초기 비활성화

			
			// 이미지 업로드
			btnSend_img.addEventListener("click", function () {

				//			openLoading();
				document.getElementById('loading').style.display = "inline";
				// console.log(input.files[0]);

				let formData = new FormData();

				formData.append('file', input.files[0]);
				formData.append('name', 'file')

				fetch("uploadService", {
					method: "POST",
					body: formData
				}).then((response) => response.json())
					.then((data) => {
						// console.log('성공:', data);
						// console.log('성공:', data.name, data.height, data.width);
						btnSend.disabled = false;
						//				  closeLoading();
						document.getElementById('loading').style.display = "none";
						$('#image').attr('src', "./img/" + data.name);
						$('#minimap').attr('src', "./img/" + data.name);
						const line = $(".line");
						line.remove();
						LMtoggle = 0;
						// 기준너비 재설정

						calcScale = 800 / data.width  // (액자프레임 너비 / 이미지크기)
						calcminiScale = 800 / data.height
						console.log(calcScale, calcminiScale);
						document.querySelector('.frame2').style.transform = "scale(" + calcScale + ")";
						$('.frame1').css('overflow-x', 'hidden')										// 액자프레임 가로스크롤 숨기기
						document.querySelector('.frame1').style.width = data.width * calcScale + "px"; //액자프레임 1배크기기준으로
						document.querySelector('.miniframe2').style.transform = "scale(" + calcminiScale + ")";
						$('.miniframe1').css('overflow', 'hidden')										// 액자프레임 가로스크롤 숨기기
						document.querySelector('.miniframe1').style.width = data.width * calcminiScale + "px"; //액자프레임 1배크기기준으로




						allpoint.css('display', 'none');
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

				btnSend.disabled = true;

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
				l_femur_len = dist(l_top_x,l_top_y,l_mid_x,l_mid_y)
				r_femur_len = dist(r_top_x,r_top_y,r_mid_x,r_mid_y)
				l_tibia_len = dist(l_bot_x,l_bot_y,l_mid_x,l_mid_y)
				r_tibia_len = dist(r_bot_x,r_bot_y,r_mid_x,r_mid_y)
				l_total_len = dist(l_bot_x,l_bot_y,l_top_x,l_top_y)
				r_total_len = dist(r_bot_x,r_bot_y,r_top_x,r_top_y)
				for (var i = 0; i < data.length; i++) {
					var input_x = document.querySelector(".class" + i + ".x")
					input_x.value = data[i].x;
					// console.log(input_x.value)
					document.querySelector("#point" + i).style.left = parseInt(data[i].x) + "px";
					document.querySelector("#pointm" + i).style.left = parseInt(data[i].x) + "px";
					var input_y = document.querySelector(".class" + i + ".y")
					input_y.value = data[i].y;
					document.querySelector("#point" + i).style.top = parseInt(data[i].y) + "px";
					document.querySelector("#pointm" + i).style.top = parseInt(data[i].y) + "px";
				}
				setframe()


				//			console.log(dist(arr2[0],arr2[1],arr2[4],arr2[5]))
				// console.log($(".class0.x").val())
				$(".class6.l").val(l_femur_len)
				$(".class6.r").val(r_femur_len)
				$(".class7.l").val(l_tibia_len)
				$(".class7.r").val(r_tibia_len)
				$(".class8.l").val(l_total_len)
				$(".class8.r").val(r_total_len)

				$(".class6.d").val(Math.abs($(".class6.l").val() - $(".class6.r").val()))
				$(".class7.d").val(Math.abs($(".class7.l").val() - $(".class7.r").val()))
				$(".class8.d").val(Math.abs($(".class8.l").val() - $(".class8.r").val()))
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
				var c = Math.sqrt((x3 * x3) + (y3 * y3)) * 0.14
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




		</script>

</body>

</html>



























<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule=""
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>