<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/resources/css/color.jsp"%>

 <script src="/resources/js/main.js"></script>


<body onLoad="focusIt();" bgcolor="${bodyback_c}">
<c:if test="${sessionScope.memId == null}">
  <table width="500" cellpadding="0" cellspacing="0"  align="center" border="1" >
    <form name="inform" method="post" action="/mymember/loginPro"  >
      <tr>
       <td width="300" bgcolor="${bodyback_c}" height="20">
       &nbsp;
       </td>
       		<td bgcolor="${title_c}"  width="100" align="right">아이디</td>
        	<td width="100" bgcolor="${value_c}">
            <input type="text" name="id" size="15" maxlength="10"></td>
      </tr>
      <tr> 
         <td rowspan="2" bgcolor="${bodyback_c}" width="300"  align="center" >메인입니다.</td>
         <td bgcolor="${title_c}"  width="100" align="right">패스워드</td>
         <td width="100" bgcolor="${value_c}">
            <input type="password" name="passwd" size="15" maxlength="10"></td>
       </tr>
       <tr>
          <td colspan="3" bgcolor="${title_c}"   align="center">
            <input type="submit" name="Submit" value="로그인">
            <input type="button"  value="회원가입" onclick="javascript:window.location='/mymember/inputForm'">
          </td>
      </tr>
     </form>
   </table>
</c:if>          
          
<c:if test="${sessionScope.memId != null}">
          
     <!-- 로그인이 되었을때 -->
       <table width=600 cellpadding="0" cellspacing="0"  align="center" border="1" >
         <tr>
         <!-- 파라미터 이름이 동일하게 하는지에 대한 여부를 반드시 확인할 것 -->
           <td width="300" bgcolor="${bodyback_c}" height="20"  align="center" >main</td>

           <td rowspan="3" bgcolor="${value_c}" align="center">
             	${sessionScope.memId}님 <br> 어서오세요!!     
             	        
             <form  method="post" action="/mymember/logout"> 
             	<input type="button" value="게시판" onclick="window.location='/myboard/list'"> 
             	<input type="submit"  value="로그아웃" onclick="logoutcheck()">
             	<input type="button" value="회원정보변경" onclick="javascript:window.location='/mymember/modifyForm'">
             </form>
         </td>
        </tr>
       <tr > 
         <td rowspan="2" bgcolor="${bodyback_c}" width="300"  align="center" >메인입니다.</td>
      </tr>
     </table>
     <br>
</c:if>
 </body>
</html>
   