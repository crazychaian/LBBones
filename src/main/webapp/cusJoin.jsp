<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String doc_cnt = request.getParameter("doc_cnt");
	%>

	<div class="form_container1">


		<form name="login_form" action="cusJoinService" method="post">
			<div class="form_title_div">

				<p class="form_title_p1">환자 등록</p>
			</div>
			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1-1">환자이름</a>
				</div>
				<div>
					<input type="hidden" name="join_doc_cnt" value="join_doc_cnt"
						class="form_input1-1" /> <input type="text" name="join_cus_name"
						placeholder=" name " class="form_input1-1" />

				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_username1" class="form_text_alert1"
						style="height: 0;"></div>
				</div>
			</div>

			<div>
				<div class="item_name_margin1">
					<a class="form_item_name1">생년월일</a>
				</div>
				<div>
					<input type="text" name="join_cus_birth" placeholder=" YYMMDD "
						class="form_input1-1" />
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
					<select>
						<option value="man">남</option>
						<option value="woman">여</option>
					</select>
				</div>
				<div class="form_text_alert_padding1">
					<div id="alert_email1" class="form_text_alert1" style="height: 0;"></div>
				</div>
			</div>

			<div style="height: 10px;"></div>
			<div class="divinput_tag">
				<input id="joinBtn" type="submit" value="환 자 등 록"
					class="form_submit_button" style='cursor: pointer;'>



				<p id="resultjoin"></p>
			</div>
		</form>


	</div>

</body>
</html>