<%@page import="model.CustomerVO"%>
<%@page import="java.util.List"%>
<%@page import="model.DoctorVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="assets/css/board.css" />
<title>Insert title here</title>
</head>
<body>

	<%
	DoctorVO vo = (DoctorVO) session.getAttribute("vo");
	List<CustomerVO> cusList = (List<CustomerVO>) session.getAttribute("cusList");
	%>



	<div id="board">
		<input type="hidden" name="doc_cnt" value="<%=vo.getDoc_cnt()%>"></input>
		<div class="cusSearch">
			<input class="search" name="search" type="text">
			<button class="cusSearchBtn" onclick="cusSearch()">검색</button>
			<button class="newCusJoinBtn" onclick="newCusJoin()">신규환자등록</button>
		</div>

		<table class="list">
			<thead>
				<tr>
					<th class="listTh">차트번호</th>
					<th class="listTh">이름</th>
					<th class="listTh">생년월일</th>
					<th class="listTh">성별</th>
					<th class="listTh">Xray등록일자</th>
					<th class="listTh"></th>
				</tr>
			</thead>

			<tbody class="cuslist">

				<%
				if (cusList != null) {
				%>
				<%
				for (CustomerVO cvo : cusList) {
				%>
				<tr>
					<td class="listTh"><%= cvo.getCus_cnt() %></td>
					<td class="listTh"><%= cvo.getCus_name() %></td>
					<td class="listTh"><%= cvo.getCus_birth() %></td>
					<td class="listTh"><%= cvo.getCus_mw() %></td>
					<td class="listTh"><a onclick="cusDateList()">보기</a></td>
					<td class="listTh"></td>
				</tr>
				<%
				}
				%>
				<%
				} else if (cusList == null) {
				%>
				<%
				}
				%>


			</tbody>

		</table>
	</div>






	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
//		$(document).ready(function() {		
//			$(".cuslist").hide()
//		});
		
		var onennewCusJoin
		function newCusJoin() {
			let inputDoc_cnt = $('input[name=doc_cnt]');
			let doc_cnt = $(inputDoc_cnt[0]).val();
			console.log(doc_cnt);
			onennewCusJoin = window.open("http://localhost:8081/LBBTEST/cusJoin.jsp", "환자 등록",
					"width=600, height=700, left=400, top=50");
			onennewCusJoin.document.getElementById("doc_cnt").value = doc_cnt;
				}
			
			

		function cusSearch() {
			// 1. 데이터 수집
			// $. $('input[name=email]') --> 2개, 배열
			// 배열[index]을 접근할 때는,
			// $(배열[index])로 다시 넣어줘야 한다.
			let inputSearch = $('input[name=search]');
			let search = $(inputSearch[0]).val();
			console.log(search);

			// 2. ajax 통신
			$.ajax({
				url : 'cusSearchService',
				type : 'post',
				dataType : 'json',
				data : {
					"search" : search
				},
				success : function(data) {
					$('.list tbody').html('');
					
					for (var i = 0; i < data.length; i++) {
						let doc_cnt = data[i].doc_cnt;
						let cus_cnt = data[i].cus_cnt;
						let cus_name = data[i].cus_name;
						let cus_birth = data[i].cus_birth;
						let cus_mw = data[i].cus_mw;
					
						tr=`
							<tr>
								<td><a href="Xray.jsp?cus_cnt=`+cus_cnt+`">`+cus_cnt+`</a></td>
								<td><a href="Xray.jsp?cus_cnt=`+cus_cnt+`">`+cus_name+`</a></td>
								<td>`+cus_birth+`</td>
								<td>`+cus_mw+`</td>
								<td name="cus_cnt" value=`+cus_cnt+`><a onclick=cusDataList()>보기</a></td>
								<td name="cus_cnt" value=`+cus_cnt+`><a onclick=cusUpdate()>수정</a><a onclick="cusDelService?cus_cnt=`+cus_cnt+`">삭제</a></td>
							</tr>
							`;
					
					$('.list tbody').append(tr);
					}
	

				},
				error : function() {
					$('.list tbody').html('');
				}

			});
		}
		
		
		
		function cusDateList() {
			
			window.open("http://localhost:8081/LBBTEST/xrayDateList.jsp", "a",
			"width=400, height=300, left=100, top=50");
			
			
			// 1. 데이터 수집
			// $. $('input[name=email]') --> 2개, 배열
			// 배열[index]을 접근할 때는,
			// $(배열[index])로 다시 넣어줘야 한다.
			let cus_cnt_val = $('td[name=cus_cnt]');
			let cus_cnt = $(cus_cnt_val[0]).val();
			console.log(cus_cnt);

			// 2. ajax 통신
			$.ajax({
				url : 'XrayDateListService',
				type : 'post',
				data : {
					"cus_cnt" : cus_cnt
				}

			});
		}
		
		
		function cusUpdate() {
			
			var openWin = window.open("http://localhost:8081/LBBTEST/cusUpdate.jsp", "a",
			"width=400, height=300, left=100, top=50");
	
			let cus_cnt_val = $('td[name=cus_cnt]');
			openWin.document.getElementByName("cus_cnt").value = $(cus_cnt_val[0]).val();
			
		}
		
		
		
		
		
	</script>
</body>
</html>