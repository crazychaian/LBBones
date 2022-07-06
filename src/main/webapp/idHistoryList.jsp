<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/idHistoryList.css"/>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<div class = "wrap">
 <div class="buttons">
 <table class ="find">
  <tr>
   <td class="borno" align ="center" valign="bottom">
    <select name="keyField">
     <option value="subject">케이스ID</option>
     <option value="writer">환자이름</option>
     </select>
     </td>
     
   <td class="borno">
    <input type="text" size="16" name="keyWord"> 
   </td>
   
   <td class="borno">
    <input id="search" type="submit" value="찾기">
   </td>  
   <td class="borno">
    <input class="btnNew" type="submit" value="신규환자등록">
   </td>  
  </tr>
 </table>
 </div>
 
 
 
 <div class="information">
 	 <table class = "info">
      <thead>
        <tr>
          <th>날짜</th><th>X-ray 이미지</th><th>랜드마크 정보 & 기록</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>2022-01-20</td><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU">
          </td><td>진료내역, 랜드마크좌표 등~~</td>
        </tr>
        <tr>
          <td>2022-01-21</td><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU"></td><td>진료내역, 랜드마크좌표 등~~</td>
        </tr>
        <tr>
          <td>2022-01-22</td><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU"></td><td>진료내역, 랜드마크좌표 등~~</td>
        </tr>
        <tr>
          <td>2022-01-23</td><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU"></td><td>진료내역, 랜드마크좌표 등~~</td>
        </tr>
        <tr>
          <td>2022-01-23</td><td><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRu-2cd_MTM1utCDM4iuYBv0xukMGF04PyHMw&usqp=CAU"></td><td>진료내역, 랜드마크좌표 등~~</td>
        </tr>
       
      
      </tbody>
    </table>
 
 
 
 </div>
</div>

</body>
</html>