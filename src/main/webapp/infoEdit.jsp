<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./CSS/infoEdit.css"/>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


  
    <form action="#" method="get">
    
        <table>
        <tr class="title">
        <td colspan="2">환자 정보 수정</td>
        
        <tr>
                <td colspan="2">Case ID</td>
                
            </tr>
            <tr>
               
                <td colspan="2" class="case">A1324567</td>
            </tr>
        
        
       
        
        
        <tr>
                <td colspan="2">생년월일</td>
         
        <tr>
                <td colspan="2" align="center"><input type="date" class="style"></td>
        </tr>
            <tr>
                <td colspan="2">이름</td>
                
            </tr>
            <tr>
               
                <td colspan="2" align="center"><input type="text" class="style"></td>
            </tr>
      
   
            <tr>
                <td colspan="2">성별</td>
               
                
            </tr>
            <tr>
               
               
                <td colspan="2" align="center">
                 <select name="gender" class="style">
                 	<option value="Female">여성</option>
                 	<option value="Male">남성</option>
                 
                 </select>
                
                
                </td>
               
            </tr>
           
                  <tr>
                      <td colspan="2" align="center">
                          <input type="submit" value="수정완료">
                                
                       </td>
                   </tr>

                    

        </table>



    </form>

</body>
</html>