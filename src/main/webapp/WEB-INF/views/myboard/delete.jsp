<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/resources/css/color.jsp" %>

<html>
	<head>
		<title>삭제 페이지</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>

<body bgcolor="${bodyback_c}">
	<center>
		<b>글삭제 페이지</b>
	</center>
	<br>
	<form method="post" name="delForm"  action="/myboard/deletePro?pageNum=${pageNum}" onsubmit="return deleteSave()"> 
		<input type="hidden" name="num" value="${num}">
		<input type="hidden" name="pageNum" value="${pageNum}">
	
 		<table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
  			<tr height="30">
				<td align=center  bgcolor="${value_c}">
			     	<b>비밀번호를 입력해 주세요.</b>
			    </td>
  			</tr>
  			<tr height="30">
     			<td align=center >비밀번호 :   
       				<input type="password" name="passwd" size="8" maxlength="12">
	   			</td>
 			</tr>
 			<tr height="30">
    			<td align=center bgcolor="${value_c}">
      				<input type="submit" value="글삭제" >
      				<input type="button" value="글목록" 
       					onclick="document.location.href='/myboard/list?pageNum=${pageNum}'">     
   				</td>
 			</tr>  
		</table> 
	</form>
	
</body>
</html> 
