<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/serviceMain.css"/>
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
          <th>Case ID</th><th>yyyy-mm-dd</th><th>Name</th><th>성별</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>A123456</td><td>2022-01-20</td><td>김가나</td><td>F</td>
        </tr>
        <tr>
          <td>B123456</td><td>2022-01-21</td><td>김다라</td><td>M</td>
        </tr>
        <tr>
          <td>C123456</td><td>2022-01-22</td><td>나다라</td><td>F</td>
        </tr>
        <tr>
          <td>D123456</td><td>2022-01-23</td><td>이사아</td><td>M</td>
        </tr>
        <tr>
          <td>D123456</td><td>2022-01-23</td><td>박자차</td><td>M</td>
        </tr>
       
       
      </tbody>
    </table>
 
 
 
 </div>
</div>


</body>
</html>