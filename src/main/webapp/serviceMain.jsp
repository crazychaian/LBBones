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
     <option value="subject">���̽�ID</option>
     <option value="writer">ȯ���̸�</option>
     </select>
     </td>
     
   <td class="borno">
    <input type="text" size="16" name="keyWord"> 
   </td>
   
   <td class="borno">
    <input id="search" type="submit" value="ã��">
   </td>  
   <td class="borno">
    <input class="btnNew" type="submit" value="�ű�ȯ�ڵ��">
   </td>  
  </tr>
 </table>
 </div>
 
 <div class="information">
 	 <table class = "info">
      <thead>
        <tr>
          <th>Case ID</th><th>yyyy-mm-dd</th><th>Name</th><th>����</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>A123456</td><td>2022-01-20</td><td>�谡��</td><td>F</td>
        </tr>
        <tr>
          <td>B123456</td><td>2022-01-21</td><td>��ٶ�</td><td>M</td>
        </tr>
        <tr>
          <td>C123456</td><td>2022-01-22</td><td>���ٶ�</td><td>F</td>
        </tr>
        <tr>
          <td>D123456</td><td>2022-01-23</td><td>�̻��</td><td>M</td>
        </tr>
        <tr>
          <td>D123456</td><td>2022-01-23</td><td>������</td><td>M</td>
        </tr>
       
       
      </tbody>
    </table>
 
 
 
 </div>
</div>


</body>
</html>