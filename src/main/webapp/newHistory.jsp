<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="assets/css/addImgPop.css" />
<link rel="stylesheet" href="assets/css/newHistory.css" />


<script type="text/javascript" src="assets/js/boxResizing.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>새로운 진료 등록 창~~~</title>
</head>
<body>

	<div class="div-top">
		<div>
			<span>환자이름 : 생년월일</span>
		</div>
		<div>
			<input id="loadButton" type="file" accept="image/*">
			<button type="button" class="" id="" onclick="">
				<span>RM찍기</span>
			</button>

			<button type="button" class="" id=""
				onclick="window.open('imgCompare.jsp','name','resizable=no width=1500 height=900');return false">
				<span>사진비교</span>
			</button>
		</div>
		<div></div>
	</div>


	<div class="div-main">
		<ul>


			<li>
			<a href="javascript:doDisplay();">> 내용보기</a>
			<br />
				<div id="myDIV">
					<h1>내용을 접거나 펴는 방법</h1>
					<p>display block 속성값은 내부 요소를 나타나게 하며 none 는 사라지게 합니다.</p>
				</div>
			</li>
			<li style="    width: 100%;">
				<div class="div-main-middle">
					<div id="cframe"
						style="width: 600px; height: 600px; overflow: hidden; border: 1px solid black; filter: contrast(100%);">
						<canvas id="canvas" width="600" height="600"
							style="filter: brightness(100%); transform: scale(1);"></canvas>
					</div>

					<button id="btn1">밝기 원래대로</button>
					<button id="btn2">대비 원래대로</button>
					<button id="btn3">크기 반배</button>
					<button id="btn4">크기 1배</button>
					<button id="btn5">크기 2배</button>
					<div class="Container">
						&nbsp; <font size="2" id="value_view1">100</font> &nbsp;&nbsp; <input
							style="width: 80%;" id="slider1" type="range" value="100" min="0"
							max="200">
					</div>


					<div class="Container">
						&nbsp; <font size="2" id="value_view2">100</font> &nbsp;&nbsp; <input
							style="width: 80%;" id="slider2" type="range" value="100" min="0"
							max="200">
					</div>
				</div>
			</li>
			<li style="margin-left: 30px;">
		<a href="javascript:doDisplay();">> 내용보기</a>
			<br />
				<div id="myDIV">
					<h1>내용을 접거나 펴는 방법</h1>
					<p>display block 속성값은 내부 요소를 나타나게 하며 none 는 사라지게 합니다.</p>
				</div>
			</li>




		</ul>












	</div>






	<!-- modal   사진등록  영역 -->
	<div class="modal-bg" onclick="javascript:popClose();"></div>
	<div class="modal-wrap">
		<div class="add-member">
			<form action="">
				<input type="file" class="real-upload" accept="image/*" required
					multiple>
				<button type="submit" class="" id="">
					<span>사진등록</span>
				</button>
			</form>
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
	</script>















<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript">

    var scale = 1;
    
    function ShowSliderValue(sVal){	
    	var obValueView = document.getElementById("slider_value_view");	
    	obValueView.innerHTML = sVal
    	}
        function ShowSliderValue(sVal){	
    	var obValueView = document.getElementById("slider_value_view");	
    	obValueView.innerHTML = sVal
    	}
    
    var RangeSlider = function(){
    	var range = $('#slider1');
        var range2 = $('#slider2');    	
    	 
    	range.on('input', function(){
            document.getElementById("value_view1").innerHTML = this.value; 
            document.getElementById('canvas').style.filter = "brightness("+this.value+"%)";
    		});
        range2.on('input', function(){
    		document.getElementById("value_view2").innerHTML = this.value; 
            document.getElementById('cframe').style.filter = "contrast("+this.value+"%)";
    		});
    	};
    RangeSlider();

    document.getElementById('btn1').addEventListener('click',function(){
            document.getElementById('canvas').style.filter = "brightness(100%)";
            document.getElementById('slider1').value = 100;
            document.getElementById("value_view1").innerHTML = 100;
        }
    )

    document.getElementById('btn2').addEventListener('click',function(){
            document.getElementById('cframe').style.filter = "contrast(100%)";
            document.getElementById('slider2').value = 100;
            document.getElementById("value_view2").innerHTML = 100;
        }
    )
    document.getElementById('btn3').addEventListener('click',function(){
        scale = scale/2;
        if(scale <= 1){
            scale = 1;
            document.getElementById('cframe').style.overflow = "hidden";
        }
            document.getElementById('canvas').style.transform = "scale("+scale+")";
        }
    )
    document.getElementById('btn4').addEventListener('click',function(){
        scale = 1;
            document.getElementById('canvas').style.transform = "scale("+scale+")";
            document.getElementById('cframe').style.overflow = "hidden";
        }
    )
    document.getElementById('btn5').addEventListener('click',function(){
        scale = scale*2;
        if(scale >= 8){
            scale = 8
        }
            document.getElementById('canvas').style.transform = "scale("+scale+")";
            document.getElementById('cframe').style.overflow = "scroll";
        }
    )

    		
 // canvas 객체 생성
    var canvas = $('#canvas')[0];
    var ctx = canvas.getContext('2d');

    function drawImageData(image) {
        image.height *= canvas.offsetWidth / image.width;
        image.width = canvas.offsetWidth;

        if(image.height > canvas.offsetHeight){
            image.width *= canvas.offsetHeight / image.height;
            image.height = canvas.offsetHeight;
        }

        ctx.drawImage(image, 0, 0, image.width, image.height);
        console.log(ctx.getImageData(0,0, canvas.width, canvas.height));
    }

    // click input button
    $('#loadButton').on('change', function (e) {
        var file = e.target.files[0];
        var fileReader = new FileReader();

        fileReader.onload = function (e) {
            var image = new Image();
            image.src = e.target.result;
            image.onload = function () {
                drawImageData(image);
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