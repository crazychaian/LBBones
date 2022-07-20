<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/newHistory.css" />



<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Insert title here</title>
</head>
<body>

	<div>
		<div class="div-top">
			<div>
				<span>환자이름 : 생년월일</span>
			</div>
			<div>

				<!-- <button type="button" class="" id=""
						onclick="javascript:popOpen();">
						
						<span>사진등록</span>
					</button> -->

				<button type="button" class="" id="" onclick="">
					<span>RM찍기</span>
				</button>


			</div>
			<div></div>
		</div>


		<div class="div-main">
			<ul>


				<li><a href="javascript:doDisplay();"> 내용보기</a> <br />
					<div id="myDIV">
						<!-- 사진등록하면 추가되는 부분 -->
						<div class="plus-img">
							<div>
							<span>2018-10-18</span>
								<img class="day-img" alt="오늘진료이미지등록" src="images/1.png">
							</div>
						</div>
						<!-- 사진등록하면 추가되는 부분 -->
						<div class="plus-img">
							<div>
							<span>2018-11-18</span>
								<img class="day-img" alt="오늘진료이미지등록" src="images/1.png">
							</div>
						</div>
						<!-- 사진등록하면 추가되는 부분 -->
						<div class="plus-img">
							<div>
							<span>2018-12-18</span>
								<img class="day-img" alt="오늘진료이미지등록" src="images/1.png">
							</div>
						</div>
					</div></li>


				<li style="width: 100%">
					<div class="div-main-middle">
						<div id="cframe">
							<canvas id="canvas"></canvas>
						</div>
						<input id="loadButton" type="file" accept="image/*">
						<button id="btn1">밝기 원래대로</button>
						<button id="btn2">대비 원래대로</button>
						<button id="btn3">크기 반배</button>
						<button id="btn4">크기 1배</button>
						<button id="btn5">크기 2배</button>
						<div class="Container">
							&nbsp; <font size="2" id="value_view1">100</font> &nbsp;&nbsp; <input
								style="width: 80%;" id="slider1" type="range" value="100"
								min="0" max="200">
						</div>


						<div class="Container">
							&nbsp; <font size="2" id="value_view2">100</font> &nbsp;&nbsp; <input
								style="width: 80%;" id="slider2" type="range" value="100"
								min="0" max="200">
						</div>



					</div>
				</li>





				<li><a href="javascript:doDisplay2();"> 내용보기</a> <br />
					<div id="myDIV2">
						<ul>
							<li>
								<div class="div-lm">
									<textarea id="rm-write" name="chart" cols="30" rows="10"
										readonly>왼쪽 Landmark 정보</textarea>
								</div>
							</li>
							<li>
								<div class="div-cm">
									<textarea id="result-write" name="chart" cols="30" rows="10"
										readonly>오른쪽 Landmark 정보</textarea>
								</div>
							</li>

						</ul>
					</div></li>

				<li style="width: 100%">
					<div class="div-main-middle8">
						<div id="cframe8">
							<canvas id="canvas8"></canvas>
						</div>
						<input id="loadButton8" type="file" accept="image/*">
						<button id="btn18">밝기 원래대로</button>
						<button id="btn28">대비 원래대로</button>
						<button id="btn38">크기 반배</button>
						<button id="btn48">크기 1배</button>
						<button id="btn58">크기 2배</button>
						<div class="Container8">
							&nbsp; <font size="2" id="value_view18">100</font> &nbsp;&nbsp; <input
								style="width: 80%;" id="slider18" type="range" value="100"
								min="0" max="200">
						</div>


						<div class="Container8">
							&nbsp; <font size="2" id="value_view28">100</font> &nbsp;&nbsp; <input
								style="width: 80%;" id="slider28" type="range" value="100"
								min="0" max="200">
						</div>



					</div>
				</li>






			</ul>





		</div>










	</div>






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
	</script>


	<script type="text/javascript">
		var bDisplay = true;
		function doDisplay() {
			var con = document.getElementById("myDIV");
			if (con.style.display == 'none') {
				con.style.display = 'block';
			} else {
				con.style.display = 'none';
			}
		}
		function doDisplay2() {
			var con = document.getElementById("myDIV2");
			if (con.style.display == 'none') {
				con.style.display = 'block';
			} else {
				con.style.display = 'none';
			}
		}
	</script>














	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
	
	<script type="text/javascript">
		/* 왼쪽 이미지 */
		var scale = 1;

		function ShowSliderValue(sVal) {
			var obValueView = document.getElementById("slider_value_view");
			obValueView.innerHTML = sVal
		}
		function ShowSliderValue(sVal) {
			var obValueView = document.getElementById("slider_value_view");
			obValueView.innerHTML = sVal
		}

		var RangeSlider = function() {
			var range = $('#slider1');
			var range2 = $('#slider2');

			range.on('input', function() {
				document.getElementById("value_view1").innerHTML = this.value;
				document.getElementById('canvas').style.filter = "brightness("
						+ this.value + "%)";
			});
			range2.on('input', function() {
				document.getElementById("value_view2").innerHTML = this.value;
				document.getElementById('cframe').style.filter = "contrast("
						+ this.value + "%)";
			});
		};
		RangeSlider();

		document
				.getElementById('btn1')
				.addEventListener(
						'click',
						function() {
							document.getElementById('canvas').style.filter = "brightness(100%)";
							document.getElementById('slider1').value = 100;
							document.getElementById("value_view1").innerHTML = 100;
						})

		document.getElementById('btn2').addEventListener('click', function() {
			document.getElementById('cframe').style.filter = "contrast(100%)";
			document.getElementById('slider2').value = 100;
			document.getElementById("value_view2").innerHTML = 100;
		})
		document
				.getElementById('btn3')
				.addEventListener(
						'click',
						function() {
							scale = scale / 2;
							if (scale <= 1) {
								scale = 1;
								document.getElementById('cframe').style.overflow = "hidden";
							}
							document.getElementById('canvas').style.transform = "scale("
									+ scale + ")";
						})
		document
				.getElementById('btn4')
				.addEventListener(
						'click',
						function() {
							scale = 1;
							document.getElementById('canvas').style.transform = "scale("
									+ scale + ")";
							document.getElementById('cframe').style.overflow = "hidden";
						})
		document
				.getElementById('btn5')
				.addEventListener(
						'click',
						function() {
							scale = scale * 2;
							if (scale >= 8) {
								scale = 8
							}
							document.getElementById('canvas').style.transform = "scale("
									+ scale + ")";
							document.getElementById('cframe').style.overflow = "scroll";
						})

		// canvas 객체 생성
		var canvas = $('#canvas')[0];
		var ctx = canvas.getContext('2d');

		function drawImageData(image) {
			ctx.clearRect(0, 0, canvas.width, canvas.height);
			ctx.beginPath();
			image.height *= canvas.offsetWidth / image.width;
			image.width = canvas.offsetWidth;

			if (image.height > canvas.offsetHeight) {
				image.width *= canvas.offsetHeight / image.height;
				image.height = canvas.offsetHeight;
			}

			ctx.drawImage(image, 0, 0, image.width, image.height);
			console.log(ctx.getImageData(0, 0, canvas.width, canvas.height));
		}

		// click input button
		$('#loadButton').on('change', function(e) {
			var file = e.target.files[0];
			var fileReader = new FileReader();

			fileReader.onload = function(e) {
				var image = new Image();
				image.src = e.target.result;
				image.onload = function() {
					drawImageData(image);
				}
			};

			fileReader.readAsDataURL(file);
		});
	</script>








	
	<script type="text/javascript">
		/* 오른쪽 이미지 */
		var scale8 = 1;

		function ShowSliderValue8(sVal) {
			var obValueView = document.getElementById("slider_value_view");
			obValueView.innerHTML = sVal
		}
		function ShowSliderValue8(sVal) {
			var obValueView = document.getElementById("slider_value_view");
			obValueView.innerHTML = sVal
		}

		var RangeSlider8 = function() {
			var range = $('#slider18');
			var range2 = $('#slider28');

			range.on('input', function() {
				document.getElementById("value_view18").innerHTML = this.value;
				document.getElementById('canvas8').style.filter = "brightness("
						+ this.value + "%)";
			});
			range2.on('input', function() {
				document.getElementById("value_view28").innerHTML = this.value;
				document.getElementById('cframe8').style.filter = "contrast("
						+ this.value + "%)";
			});
		};
		RangeSlider8();

		document
				.getElementById('btn18')
				.addEventListener(
						'click',
						function() {
							document.getElementById('canvas8').style.filter = "brightness(100%)";
							document.getElementById('slider18').value = 100;
							document.getElementById("value_view18").innerHTML = 100;
						})

		document.getElementById('btn28').addEventListener('click', function() {
			document.getElementById('cframe8').style.filter = "contrast(100%)";
			document.getElementById('slider28').value = 100;
			document.getElementById("value_view28").innerHTML = 100;
		})
		document
				.getElementById('btn38')
				.addEventListener(
						'click',
						function() {
							scale8 = scale8 / 2;
							if (scale8 <= 1) {
								scale8 = 1;
								document.getElementById('cframe8').style.overflow = "hidden";
							}
							document.getElementById('canvas8').style.transform = "scale("
									+ scale8 + ")";
						})
		document
				.getElementById('btn48')
				.addEventListener(
						'click',
						function() {
							scale8 = 1;
							document.getElementById('canvas8').style.transform = "scale("
									+ scale8 + ")";
							document.getElementById('cframe8').style.overflow = "hidden";
						})
		document
				.getElementById('btn58')
				.addEventListener(
						'click',
						function() {
							scale8 = scale8 * 2;
							if (scale8 >= 8) {
								scale8 = 8
							}
							document.getElementById('canvas8').style.transform = "scale("
									+ scale8 + ")";
							document.getElementById('cframe8').style.overflow = "scroll";
						})

		// canvas 객체 생성
		var canvas8 = $('#canvas8')[0];
		var ctx8 = canvas8.getContext('2d');

		function drawImageData8(image) {
			ctx8.clearRect(0, 0, canvas8.width, canvas8.height);
			ctx8.beginPath();
			image.height *= canvas8.offsetWidth / image.width;
			image.width = canvas8.offsetWidth;

			if (image.height > canvas8.offsetHeight) {
				image.width *= canvas8.offsetHeight / image.height;
				image.height = canvas8.offsetHeight;
			}

			ctx8.drawImage(image, 0, 0, image.width, image.height);
			console.log(ctx8.getImageData(0, 0, canvas8.width, canvas8.height));
		}

		// click input button
		$('#loadButton8').on('change', function(e) {
			var file = e.target.files[0];
			var fileReader = new FileReader();

			fileReader.onload = function(e) {
				var image = new Image();
				image.src = e.target.result;
				image.onload = function() {
					drawImageData8(image);
				}
			};

			fileReader.readAsDataURL(file);
		});
	</script>


















	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule=""
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>











</body>
</html>