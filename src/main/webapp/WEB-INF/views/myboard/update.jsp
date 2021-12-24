<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/resources/css/color.jsp" %>
  
  
<html>
	<head>
		<title>수정 페이지</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>  

<body bgcolor="${bodyback_c}">  
	<center>
		<b>글수정</b>
	</center>
	<br>
	<form method="post" name="updateform" action="/myboard/updatePro?pageNum=${pageNum}" onsubmit="return writeSave()">
		<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center">
    				이 름
    			</td>
    			<td align="left" width="330">
       				<input type="text" size="10" maxlength="10" name="writer" value="${myBoardDTO.writer}">
	   				<input type="hidden" name="num" value="${myBoardDTO.num}">
	   			</td>
  			</tr>
 			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center" >
    				제 목
    			</td>
    			<td align="left" width="330">
       				<input type="text" size="40" maxlength="50" name="subject" value="${myBoardDTO.subject}">
       			</td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center">
    				Email
    			</td>
    			<td align="left" width="330">
      				<input type="text" size="40" maxlength="30" name="email" value="${myBoardDTO.email}">
      			</td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center" >
    				내 용
    			</td>
    			<td align="left" width="330">
     				<textarea name="content" rows="13" cols="40">
     					${myBoardDTO.content}
     				</textarea>
    			</td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center" >
    				비밀번호
    			</td>
    			<td align="left" width="330" >
     				<input type="password" size="8" maxlength="12" name="passwd">
     
	 			</td>
  			</tr>
  			<tr>      
   				<td colspan=2 bgcolor="${value_c}" align="center"> 
     				<input type="submit" value="글수정" >  
     				<input type="reset" value="다시작성">
     				<input type="button" value="목록보기" 
       					onclick="document.location.href='/myboard/list?pageNum=${pageNum}'">
   				</td>
 			</tr>
 		</table>
	</form>

</body>
</html>