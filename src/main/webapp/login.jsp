<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>

	<div>

		<form name="login_form" action="loginService" method="post">
			<div class="form_title_div">
				<p class="form_title_p">로그인</p>
			</div>
			<div>
				<div class="item_name_margin">
					<a class="form_item_name">아이디</a>
				</div>
				<div>
					<input type="text" name="doc_id" placeholder="  i d" class="form_input" />
				</div>
				<div class="form_text_alert_padding">
					<div id="alert_username" class="form_text_alert"></div>
				</div>
			</div>

			<div>
				<div class="item_name_margin">
					<a class="form_item_name">비밀번호</a>
				</div>
				<div>
					<input type="password" name="doc_pw" placeholder="  p a s s w o r d"
						class="form_input" />
				</div>
				<div class="form_text_alert_padding">
					<div id="alert_password" class="form_text_alert"></div>
				</div>
			</div>


			<div style="height: 10px;"></div>
			<div>
				<input type="submit" value="로 그 인" class="form_submit_button"
					style='cursor: pointer;'>
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
						$('#resultId').html('중복된 닉네임입니다.')
								.css('color', 'red');
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