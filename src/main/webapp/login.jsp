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

	






</body>
</html>