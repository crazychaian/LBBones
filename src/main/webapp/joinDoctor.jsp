<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="form_container1">


		<form name="login_form" action="joinService" method="post">
			<div class="form_title_div">

				<p class="form_title_p1">회원가입</p>
			</div>
			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1-1">아이디</a>
				</div>
				<div>
					<input type="text" name="join_doc_id" placeholder="  i d"
						class="form_input1-1" />
					<button type="button" class="form_submit_button1-1"
						onclick="checkId()" style='cursor: pointer;'>중복확인</button>
					<p id="resultId"></p>

				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_username1" class="form_text_alert1"
						style="height: 0;"></div>
				</div>
			</div>

			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1">비밀번호</a>
				</div>
				<div>
					<input type="password" name="join_doc_pw"
						placeholder="  p a s s w o r d" class="form_input1" />
				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_password1" class="form_text_alert1"></div>
				</div>
			</div>


			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1">병원명</a>
				</div>
				<div>
					<input type="text" name="join_hos_name"
						placeholder="  n i c k n a m e" class="form_input1-1" />
				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_email1" class="form_text_alert1" style="height: 0;"></div>
				</div>
			</div>
			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1">이름</a>
				</div>
				<div>
					<input type="text" name="join_doc_name"
						placeholder="  n i c k n a m e" class="form_input1-1" />
				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_email1" class="form_text_alert1" style="height: 0;"></div>
				</div>
			</div>



			<div style="height: 10px;"></div>
			<div class="divinput_tag">
				<input id="joinBtn" type="submit" value="가 입 하 기"
					class="form_submit_button" style='cursor: pointer;'>



				<p id="resultjoin"></p>
			</div>
		</form>


	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<script type="text/javascript">
		function checkId() {
			// 1. 데이터 수집
			// $. $('input[name=email]') --> 2개, 배열
			// 배열[index]을 접근할 때는,
			// $(배열[index])로 다시 넣어줘야 한다.
			let inputs = $('input[name=join_doc_id]');
			let doc_id = $(inputs[0]).val();
			console.log(doc_id);

			// 2. ajax 통신
			$.ajax({
				url : 'idcheckService',
				type : 'post',
				data : {
					"doc_id" : doc_id
				},
				success : function(res) {
					console.log(res);
					// 결과를 html에 출력
					if (res == "true") {
						$('#resultId').html('사용가능한 닉네임입니다.').css('color',
								'green');
						// join 버튼의 disabled 속성을 제거
						$('#joinBtn').removeAttr('disabled');

					} else {
						$('#resultId').html('중복된 닉네임입니다.').css('color', 'red');
					}

				},
				error : function() {
					alert('error!');
				}

			});

		}
	</script>

</body>
</html>