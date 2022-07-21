<%@page import="model.DoctorVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link rel="stylesheet" href="assets/css/header.css" />
<link rel="stylesheet" href="assets/css/signInUp.css" />
<!-- <link rel="stylesheet" href="assets/css/mainSlide.css" />  -->
<link rel="stylesheet" href="assets/css/chat.css" />
<link rel="stylesheet" href="assets/css/testest.css" />






<!-- 마우스 -->
<link rel="stylesheet" href="assets/css/style.css">


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	%>



	<!-- 상단 고정 header -->
	<section id="header">
		<div class="wrapper">

			<div class="logo">
				<img id="LBBimg" src="images/LBB01.png" alt="Logo">
			</div>
			<ul class="menuList2">
				<!-- <li class="s-btn"><label class="switch s-btn"> <input
						type="checkbox"> <span class="slider round"></span>
				</label></li> -->
			</ul>
			<nav class="main-nav">
				<ul class="menuList">
					<!-- <li class="home"><a style="cursor: pointer"
						href="mainHome.jsp">Home</a></li> -->
					<%
					if (vo == null) {
					%>
					<!-- 비회원일때 -->
					<li><a type="button" class="btn-open signin" id="p01"
						onclick="popOpen1()">Sign in</a></li>
					<li><a class="signup" type="button" id="p02"
						onclick="popOpen2()">Sign up</a></li>
					<%
					} else {
					%>
					<!-- 회원일떄 -->
					<li><a href="memberHome.jsp" class="">Tutorial</a></li>
					<li><a class="" href="memberHome.jsp#price" onclick="">Price</a></li>
					<li><a class="" href="logoutService" onclick="">Logout</a></li>
					<%
					}
					%>
				</ul>
			</nav>

		</div>
	</section>



	<!-- 로그인 회원가입 버튼 누르면 보여지는 창 -->





	<!-- 전체 레이아웃 -->


	<!-- modal 영역 -->
	<div class="modal-bg" onclick="popClose()"></div>
	<div class="modal-wrap">
		<div class="main-login">
			<div id="tab-menu">
				<div id="tab-btn">
					<ul>
						<li class="" id="ro1"><a type="button" onclick="popOpen1()">s
								i g n i n</a></li>
						<li class="" id="ro2"><a type="button" onclick="popOpen2()">s
								i g n u p</a></li>
					</ul>
				</div>
				<div id="tab-cont">
					<!-- 로그인 -->
					<div class="btnrange" id="ro11">
						<h1 class="logo-login">Sign in</h1>
						<form class="container">
							<input type="text" placeholder="ID" id="id" class="account"
								name="id"> <input type="password" placeholder="Password"
								id="password" class="account" name="pw">

							<div class="btn-holder">
								<button type="button" class="btn btn-5 hover-border-11"
									id="login-btn" onclick="login()">
									<span>l o g i n</span>
								</button>
							</div>

							<p id="alert" class="account"></p>
						</form>
					</div>


					<!-- 회원가입 -->
					<div class="btnrange" id="ro22">
						<h1 class="logo-login">Sign up</h1>
						<form class="container">
							<input type="text" placeholder="ID" id="id" class="account"
								name="joindocid"> 
								
								<!-- 아이디 중복 체크 -->
							<p id="resultId"></p>
							<button type="button" onclick="idCheck()">중복 확인</button>
							
							<input type="password"
								placeholder="Password" id="password" class="account"
								name="joindocpw"> <input type="text"
								placeholder="Nick Name" id="nickName" class="account"
								name="joindocname"> <input type="text"
								placeholder="Hospital Name" id="hosName" class="account"
								name="joindochospital">


							<div class="btn-holder">
								<button type="button" class="btn btn-5 hover-border-11"
									id="login-btn" onclick="singUp()">
									<span>S i g n U p</span>
								</button>
							</div>
							<p id="alert" class="account"></p>
						</form>
					</div>

				</div>
			</div>





		</div>
	</div>



	<!-- 상담 연결 채팅 -->

	<!--<div>
	<span class="btn-chat chatfont">CONNECT</span>
		<ion-icon class="btn-chat" name="chatbubble-ellipses-outline"></ion-icon>
	</div>

	<div class="modal"></div>
	<div class="modal_content" title="클릭하면 창이 닫힙니다.">

		비회원일때 보이는 상담연결창
		<ul>
			<li class="c-zone"><a href='javascript:void(0);'
				onclick="popOpen()"> <span class="c-title">상담을 위해선 로그인이
						필요해요</span>
			</a></li>
		</ul>

		회원일때 보이는 상담연결창 
				<ul>
					<li class="c-zone"><a href="#"> <span class="title2 ppp">상담
								문의하기</span>
					</a></li>
				</ul>

	</div> -->



	<!-- partial:index.partial.html    마우스 커서 모양 -->
	<div id="cursor" class=""
		style="transform: translate3d(1466.5px, 234.4px, 0px);">
		<div class="cursor__circle"
			style="transform: rotate(0deg) scale(1, 1);"></div>
	</div>




	<!-- 슬라이드쇼 컨테이너 -->



	<!-- 
	<div class="btnbtn button-list">
		<div id="btn1" class="btn b1 button-left">
			<span>Hover me!</span>
		</div>
		<div id="btn1" class="btn b2 button-right">
			<span>Hover me!</span>
		</div>
	</div>

 -->











	<section class="hero" id="div1-id">

		<div class="hero__content">

			<div class="rolling_box toptxt">
				<ul id="rolling_box">
					<li class="card_sliding" id="first"><p></p></li>
					<li class="" id="second"><p></p></li>
					<li class="" id="third"><p></p></li>
				</ul>

			</div>

			<div class="rolling_box middletxt">
				<ul id="rolling_box2">
					<li class="card_sliding" id="first2"><p></p></li>
					<li class="" id="second2"><p></p></li>
					<li class="" id="third2"><p></p></li>
				</ul>

			</div>

			<div class="rolling_box bottomtxt">
				<ul id="rolling_box3">
					<li class="card_sliding" id="first3"><p></p></li>
					<li class="" id="second3"><p></p></li>
					<li class="" id="third3"><p></p></li>
				</ul>

			</div>


			<!-- 버튼 -->
			<form class="btn-two">
				<label><input onclick="movepage('#div2-id');" class="iptxt"
					type="radio" name="band" value="fm" checked><span
					class="inputext">PRODUCT<br>EXPLAIN
				</span></label> <label><input onclick="movepage('#div1-id');" class="iptxt"
					type="radio" name="band" value="am" checked><span></span></label> <label><input
					onclick="movepage('#div3-id');" class="iptxt" type="radio"
					name="band" value="lw"><span class="inputext">HOW IT<br>WORKS
				</span></label>
			</form>





		</div>
	</section>


	<section class="div2">

		<div class="div2__content" id="div2-id"></div>
	</section>



	<section class="div3">

		<div class="div3__content" id="div3-id"></div>
	</section>



	<!-- div 이동  -->
	<script type="text/javascript"> 
function movepage(page) 
{ 
window.document.location.href=page; 
return; 
} 
</script>









	<script>

        let rollingData = ['DEEP LEARNING - BASED',
                            '딥러닝 기반 X-ray 활용'
                           
                          ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

       

        let first = document.getElementById('first'),
            second = document.getElementById('second'),
            third = document.getElementById('third')
        let move = 2
        let dataCnt = 1
        let listCnt = 1

        //위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

        first.children[0].innerHTML = rollingData[0]

        setInterval(() => {
        	 let timer = 3000 // 롤링되는 주기 입니다 (1000 => 1초)
            if(move == 2){
                first.classList.remove('card_sliding')
                first.classList.add('card_sliding_after')

                second.classList.remove('card_sliding_after')
                second.classList.add('card_sliding')

                third.classList.remove('card_sliding_after')
                third.classList.remove('card_sliding')

                move = 0
            } else if (move == 1){
                first.classList.remove('card_sliding_after')
                first.classList.add('card_sliding')

                second.classList.remove('card_sliding_after')
                second.classList.remove('card_sliding')

                third.classList.remove('card_sliding')
                third.classList.add('card_sliding_after')

                move = 2
            } else if (move == 0) {
                first.classList.remove('card_sliding_after')
                first.classList.remove('card_sliding')

                second.classList.remove('card_sliding')
                second.classList.add('card_sliding_after')

                third.classList.remove('card_sliding_after')
                third.classList.add('card_sliding')

                move = 1
            }
            
            if(dataCnt < (rollingData.length - 1)) {
                document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                    dataCnt++
            } else if(dataCnt == rollingData.length - 1) {
                document.getElementById('rolling_box').children[listCnt].children[0].innerHTML = rollingData[dataCnt]
                dataCnt = 0
            }

            if(listCnt < 2) {
                listCnt++
            } else if (listCnt == 2) {
                listCnt = 0
            }

            console.log(listCnt)
        }, 5000);


    </script>


	<script>

        let rollingData2 = ['LEG LENGTH DISCREPANCY',
                            '의사를 위한'
                           
                          ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

        

        let first2 = document.getElementById('first2'),
            second2 = document.getElementById('second2'),
            third2 = document.getElementById('third2')
        let move2 = 2
        let dataCnt2 = 1
        let listCnt2 = 1

        //위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

        first2.children[0].innerHTML = rollingData2[0]

        setInterval(() => {
        	let timer2 = 4000 // 롤링되는 주기 입니다 (1000 => 1초)
            if(move2 == 2){
                first2.classList.remove('card_sliding')
                first2.classList.add('card_sliding_after')

                second2.classList.remove('card_sliding_after')
                second2.classList.add('card_sliding')

                third2.classList.remove('card_sliding_after')
                third2.classList.remove('card_sliding')

                move2 = 0
            } else if (move2 == 1){
                first2.classList.remove('card_sliding_after')
                first2.classList.add('card_sliding')

                second2.classList.remove('card_sliding_after')
                second2.classList.remove('card_sliding')

                third2.classList.remove('card_sliding')
                third2.classList.add('card_sliding_after')

                move2 = 2
            } else if (move2 == 0) {
                first2.classList.remove('card_sliding_after')
                first2.classList.remove('card_sliding')

                second2.classList.remove('card_sliding')
                second2.classList.add('card_sliding_after')

                third2.classList.remove('card_sliding_after')
                third2.classList.add('card_sliding')

                move2 = 1
            }
            
            if(dataCnt2 < (rollingData2.length - 1)) {
                document.getElementById('rolling_box2').children[listCnt2].children[0].innerHTML = rollingData2[dataCnt2]
                    dataCnt2++
            } else if(dataCnt2 == rollingData2.length - 1) {
                document.getElementById('rolling_box2').children[listCnt2].children[0].innerHTML = rollingData2[dataCnt2]
                dataCnt2 = 0
            }

            if(listCnt2 < 2) {
                listCnt2++
            } else if (listCnt2 == 2) {
                listCnt2 = 0
            }

            console.log(listCnt2)
        },  5000);


    </script>








	<script>

        let rollingData3 = ['DIAGNOSTIC ASSESSMENT SYSTEM',
                            '하지부동 진단 보조 서비스'
                           
                          ]    // 롤링할 데이터를 넣으면 됩니다 갯수 제한 없어요

        

        let first3 = document.getElementById('first3'),
            second3 = document.getElementById('second3'),
            third3 = document.getElementById('third3')
        let move3 = 2
        let dataCnt3 = 1
        let listCnt3 = 1

        //위 선언은 따로 완전히 수정하지 않는 한 조정할 필요는 없습니다.

        first3.children[0].innerHTML = rollingData3[0]

        setInterval(() => {
        	let timer3 = 5000 // 롤링되는 주기 입니다 (1000 => 1초)
            if(move3 == 2){
                first3.classList.remove('card_sliding')
                first3.classList.add('card_sliding_after')

                second3.classList.remove('card_sliding_after')
                second3.classList.add('card_sliding')

                third3.classList.remove('card_sliding_after')
                third3.classList.remove('card_sliding')

                move3 = 0
            } else if (move3 == 1){
                first3.classList.remove('card_sliding_after')
                first3.classList.add('card_sliding')

                second3.classList.remove('card_sliding_after')
                second3.classList.remove('card_sliding')

                third3.classList.remove('card_sliding')
                third3.classList.add('card_sliding_after')

                move3 = 2
            } else if (move3 == 0) {
                first3.classList.remove('card_sliding_after')
                first3.classList.remove('card_sliding')

                second3.classList.remove('card_sliding')
                second3.classList.add('card_sliding_after')

                third3.classList.remove('card_sliding_after')
                third3.classList.add('card_sliding')

                move3 = 1
            }
            
            if(dataCnt3 < (rollingData3.length - 1)) {
                document.getElementById('rolling_box3').children[listCnt3].children[0].innerHTML = rollingData3[dataCnt3]
                    dataCnt3++
            } else if(dataCnt3 == rollingData3.length - 1) {
                document.getElementById('rolling_box3').children[listCnt3].children[0].innerHTML = rollingData3[dataCnt3]
                dataCnt3 = 0
            }

            if(listCnt3 < 2) {
                listCnt3++
            } else if (listCnt3 == 2) {
                listCnt3 = 0
            }

            console.log(listCnt3)
        },  5000);


    </script>

















	<script type="x-shader/x-fragment" id="fragment">
    varying vec2 vUv;
    uniform float u_time;
    uniform float u_aspect;
    uniform float u_progress;


float hue2rgb(float f1, float f2, float hue) {
    if (hue < 0.0)
        hue += 1.0;
    else if (hue > 1.0)
        hue -= 1.0;
    float res;
    if ((6.0 * hue) < 1.0)
        res = f1 + (f2 - f1) * 6.0 * hue;
    else if ((2.0 * hue) < 1.0)
        res = f2;
    else if ((3.0 * hue) < 2.0)
        res = f1 + (f2 - f1) * ((2.0 / 3.0) - hue) * 6.0;
    else
        res = f1;
    return res;
}

vec3 hsl2rgb(vec3 hsl) {
    vec3 rgb;
    
    if (hsl.y == 0.0) {
        rgb = vec3(hsl.z); // Luminance
    } else {
        float f2;
        
        if (hsl.z < 0.5)
            f2 = hsl.z * (1.0 + hsl.y);
        else
            f2 = hsl.z + hsl.y - hsl.y * hsl.z;
            
        float f1 = 2.0 * hsl.z - f2;
        
        rgb.r = hue2rgb(f1, f2, hsl.x + (1.0/3.0));
        rgb.g = hue2rgb(f1, f2, hsl.x);
        rgb.b = hue2rgb(f1, f2, hsl.x - (1.0/3.0));
    }   
    return rgb;
}

vec3 hsl2rgb(float h, float s, float l) {
    return hsl2rgb(vec3(h, s, l));
}

vec3 random3(vec3 c) {
	float j = 4096.0*sin(dot(c,vec3(17.0, 59.4, 15.0)));
	vec3 r;
	r.z = fract(512.0*j);
	j *= .125;
	r.x = fract(512.0*j);
	j *= .125;
	r.y = fract(512.0*j);
	return r-0.5;
}

const float F3 =  0.3333333;
const float G3 =  0.1666667;

float simplex3d(vec3 p) {
	 vec3 s = floor(p + dot(p, vec3(F3)));
	 vec3 x = p - s + dot(s, vec3(G3));
	 
	 vec3 e = step(vec3(0.0), x - x.yzx);
	 vec3 i1 = e*(1.0 - e.zxy);
	 vec3 i2 = 1.0 - e.zxy*(1.0 - e);
	 	
	 vec3 x1 = x - i1 + G3;
	 vec3 x2 = x - i2 + 2.0*G3;
	 vec3 x3 = x - 1.0 + 3.0*G3;
	 
	 vec4 w, d;
	 
	 w.x = dot(x, x);
	 w.y = dot(x1, x1);
	 w.z = dot(x2, x2);
	 w.w = dot(x3, x3);
	 
	 w = max(0.6 - w, 0.0);
	 
	 d.x = dot(random3(s), x);
	 d.y = dot(random3(s + i1), x1);
	 d.z = dot(random3(s + i2), x2);
	 d.w = dot(random3(s + 1.0), x3);
	 
	 w *= w;
	 w *= w;
	 d *= w;
	 
	 return dot(d, vec4(52.0));
}

float hash(vec2 p) { return fract(1e4 * sin(17.0 * p.x + p.y * 0.1) * (0.1 + abs(sin(p.y * 13.0 + p.x)))); }

uniform float blur;
uniform float speed;

    
void main() {

    vec2 center = vUv - 0.5;
	float dist = length(center);
    float alpha = smoothstep(0.5, blur, dist);
    float n = simplex3d(vec3(vUv.xy, u_time * speed));

    vec3 color = hsl2rgb(
        0.5 + n * 0.3,
        0.6,
        0.7
    );

    float val = hash(vUv + u_time);
	gl_FragColor = vec4(color + vec3(val / 20.), alpha * u_progress);
}
</script>

	<script type="x-shader/x-vertex" id="vertex" src="assets/js/testest.js">
    varying vec2 vUv;
uniform float u_time;
uniform float u_noiseFreq;


    
    
vec3 mod289(vec3 x) {
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 mod289(vec4 x) {
  return x - floor(x * (1.0 / 289.0)) * 289.0;
}

vec4 permute(vec4 x) {
     return mod289(((x*34.0)+1.0)*x);
}

vec4 taylorInvSqrt(vec4 r)
{
  return 1.79284291400159 - 0.85373472095314 * r;
}


 float snoise(vec3 v) {
  const vec2  C = vec2(1.0/6.0, 1.0/3.0) ;
  const vec4  D = vec4(0.0, 0.5, 1.0, 2.0);
  
  // First corner
  vec3 i  = floor(v + dot(v, C.yyy) );
  vec3 x0 =   v - i + dot(i, C.xxx) ;
  
  // Other corners
  vec3 g = step(x0.yzx, x0.xyz);
  vec3 l = 1.0 - g;
  vec3 i1 = min( g.xyz, l.zxy );
  vec3 i2 = max( g.xyz, l.zxy );

  //   x0 = x0 - 0.0 + 0.0 * C.xxx;
  //   x1 = x0 - i1  + 1.0 * C.xxx;
  //   x2 = x0 - i2  + 2.0 * C.xxx;
  //   x3 = x0 - 1.0 + 3.0 * C.xxx;
  vec3 x1 = x0 - i1 + C.xxx;
  vec3 x2 = x0 - i2 + C.yyy; // 2.0*C.x = 1/3 = C.y
  vec3 x3 = x0 - D.yyy;      // -1.0+3.0*C.x = -0.5 = -D.y
  
  // Permutations
  i = mod289(i);
  vec4 p = permute( permute( permute(
             i.z + vec4(0.0, i1.z, i2.z, 1.0 ))
           + i.y + vec4(0.0, i1.y, i2.y, 1.0 ))
           + i.x + vec4(0.0, i1.x, i2.x, 1.0 ));
           
  // Gradients: 7x7 points over a square, mapped onto an octahedron.
  // The ring size 17*17 = 289 is close to a multiple of 49 (49*6 = 294)
  float n_ = 0.142857142857; // 1.0/7.0
  vec3  ns = n_ * D.wyz - D.xzx;

  vec4 j = p - 49.0 * floor(p * ns.z * ns.z);  //  mod(p,7*7)

  vec4 x_ = floor(j * ns.z);
  vec4 y_ = floor(j - 7.0 * x_ );    // mod(j,N)

  vec4 x = x_ *ns.x + ns.yyyy;
  vec4 y = y_ *ns.x + ns.yyyy;
  vec4 h = 1.0 - abs(x) - abs(y);

  vec4 b0 = vec4( x.xy, y.xy );
  vec4 b1 = vec4( x.zw, y.zw );

  //vec4 s0 = vec4(lessThan(b0,0.0))*2.0 - 1.0;
  //vec4 s1 = vec4(lessThan(b1,0.0))*2.0 - 1.0;
  vec4 s0 = floor(b0)*2.0 + 1.0;
  vec4 s1 = floor(b1)*2.0 + 1.0;
  vec4 sh = -step(h, vec4(0.0));

  vec4 a0 = b0.xzyw + s0.xzyw*sh.xxyy ;
  vec4 a1 = b1.xzyw + s1.xzyw*sh.zzww ;

  vec3 p0 = vec3(a0.xy,h.x);
  vec3 p1 = vec3(a0.zw,h.y);
  vec3 p2 = vec3(a1.xy,h.z);
  vec3 p3 = vec3(a1.zw,h.w);
  
  // Normalise gradients
  vec4 norm = taylorInvSqrt(vec4(dot(p0,p0), dot(p1,p1), dot(p2, p2), dot(p3,p3)));
  p0 *= norm.x;
  p1 *= norm.y;
  p2 *= norm.z;
  p3 *= norm.w;
  
  // Mix final noise value
  vec4 m = max(0.6 - vec4(dot(x0,x0), dot(x1,x1), dot(x2,x2), dot(x3,x3)), 0.0);
  m = m * m;
  return 42.0 * dot( m*m, vec4( dot(p0,x0), dot(p1,x1),
                                dot(p2,x2), dot(p3,x3) ) );
}

 void main() {
   vUv = uv;

   vec3 pos = position;
   float noiseFreq = 10.5;
   float noiseAmp = 1.5; 
   vec3 noisePos = vec3(pos.x + u_time, pos.y, pos.z);
   pos.z += snoise(noisePos) * u_noiseFreq;

   gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0 );
 }
</script>

	<script
		src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/three.js/r128/three.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/dat-gui/0.7.7/dat.gui.min.js"></script>
	<script src="https://unpkg.co/gsap@3/dist/gsap.min.js"></script>


	<canvas width="1535" height="800"
		style="display: block; width: 1535px; height: 800px;"></canvas>









	<script type="text/javascript">
	

	

	/* 로그인 회원가입 팝업뜨는 js */
	function popOpen1() {
		$('.modal-wrap').show();

		$("#tab-cont > div").hide().eq(0).show();
		$("#tab-btn > ul > li").eq(0).addClass("active");
		$("#tab-btn > ul > li").eq(1).removeClass("active");
		}

	function popOpen2() {
		$('.modal-wrap').show();

		$("#tab-cont > div").hide().eq(1).show();
		$("#tab-btn > ul > li").eq(1).addClass("active");
		$("#tab-btn > ul > li").eq(0).removeClass("active");
		}

	$(document).mouseup(function(e) {
		var modalwrap = $(".modal-wrap");
		if (modalwrap.has(e.target).length === 0) {
			modalwrap.hide();
		}
	});
	
	


	 function popClose() {
	   var modalPop = $('.modal-wrap');
	   var modalBg = $('.modal-bg');

	   $(modalPop).hide();
	   $(modalBg).hide();

	}
	 /*// 로그인 회원가입 팝업뜨는 js */ 
	
	 
	 
function idCheck() {
		let input_id = $('input[name=joindocid]');
		let doc_id = $(input_id[0]).val();

		// 2. ajax 통신
		$.ajax({
			url : 'idcheckService',
			type : 'post',
			data : {
				"doc_id" : doc_id
			},
			success : function(res) {

				if (res == "true") {
					$('#resultId').html('')
					$('#resultId').html('사용가능한 아이디입니다.').css('color',
							'green');
					// join 버튼의 disabled 속성을 제거
					$('#join-btn').removeAttr('disabled');
				} else {
					$('#resultId').html('')
					$('#resultId').html('중복된 아이디입니다.').css('color', 'red');
				}

			},
			error : function() {
				alert('에러발생');
			}

		});

	}

	function singUp() {

		let joindocid = $('input[name=joindocid]');
		let doc_id = $(joindocid[0]).val();
		let joindocpw = $('input[name=joindocpw]');
		let doc_pw = $(joindocpw[0]).val();
		let joindocname = $('input[name=joindocname]');
		let doc_name = $(joindocname[0]).val();
		let joindochospital = $('input[name=joindochospital]');
		let doc_hospital = $(joindochospital[0]).val();

		// 2. ajax 통신
		$.ajax({
			url : 'joinService',
			type : 'post',
			data : {
				"doc_id" : doc_id,
				"doc_pw" : doc_pw,
				"doc_name" : doc_name,
				"doc_hospital" : doc_hospital
			},
			success : function(cnt) {

				if (cnt > 0) {
					$('.modal-wrap').show();

					$("#tab-cont > div").hide().eq(0).show();
					$("#tab-btn > ul > li").eq(0).addClass("active");
					$("#tab-btn > ul > li").eq(1).removeClass("active");

					$('.loginResult').html('')
					$('.loginResult').html('회원가입에 성공하였습니다.').css('color',
							'red');
				} else {
					$('.modal-wrap').show();

					$("#tab-cont > div").hide().eq(1).show();
					$("#tab-btn > ul > li").eq(1).addClass("active");
					$("#tab-btn > ul > li").eq(0).removeClass("active");

					$('.joinResult').html('')
					$('.joinResult').html('회원가입에 실패하였습니다..').css('color',
							'red');
				}

			},
			error : function() {
				alert("에러 발생")
			}

		});
	}

	function login() {

		let docid = $('input[name=id]');
		let doc_id = $(docid[0]).val();
		let docpw = $('input[name=pw]');
		let doc_pw = $(docpw[0]).val();

		// 2. ajax 통신
		$.ajax({
			url : 'loginService',
			type : 'post',
			dataType : 'json',
			data : {
				"doc_id" : doc_id,
				"doc_pw" : doc_pw
			},
			success : function(data) {
				if (!data) {
					$('.modal-wrap').show();

					$("#tab-cont > div").hide().eq(0).show();
					$("#tab-btn > ul > li").eq(0).addClass("active");
					$("#tab-btn > ul > li").eq(1).removeClass("active");

					$('.loginResult').html('')
					$('.loginResult').html('로그인에 실패하였습니다..').css('color',
							'red');
				} else {
					let doc_id = data.doc_id;
					location.href = "docInfoService?doc_id="+doc_id;
				}

			},
			error : function() {
				alert("에러 발생")
			}

		});
	}

	  
	  
	  
	</script>






	<script src="assets/js/script.js"></script>
	
	<script type="text/javascript" src="assets/js/testest.js"></script>



	<!-- 메인화면 넘어가는 js -->
	<!-- 	<script type="text/javascript" src="assets/js/mainSlide.js"></script> -->


	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<script nomodule=""
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


</body>
</html>