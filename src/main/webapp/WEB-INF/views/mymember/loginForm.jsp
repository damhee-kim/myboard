<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/resources/css/color.jsp"%>

<html>
	<head>
		<title>로그인</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>
	
<body onLoad="begin();" bgcolor="${bodyback_c}">
	<form name="myform" action="/mymember/loginPro" method="post" onSubmit="return checkIt()">
		<input type="hidden" name="pageNum" value="${pageNum}" />
		
		<table cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  			<tr height="30">
    			<td colspan="2" align="middle" bgcolor="${title_c}"><strong>회원로그인</strong></td></tr>
  			<tr height="30">
   				<td width="110" bgcolor="${title_c}" align=center>아이디</td>
    			<td width="150" bgcolor="${value_c}" align=center>
      			<input type="text" name="id" size="15" maxlength="12"></td></tr>
  			<tr height="30">
    			<td width="110" bgcolor="${title_c}" align=center>비밀번호</td>
    			<td width="150" bgcolor="${value_c}" align=center>
      			<input type=password name="passwd"  size="15" maxlength="12"></td></tr>
  			<tr height="30">
   			 	<td colspan="2" align="middle" bgcolor="${title_c}" >
		      		<input type=submit value="로그인"> 
		      		<input type=reset value="다시입력">
		      		<input type="button" value="회원가입" onclick="javascript:window.location='/mymember/inputForm'"></td>
 			</tr>
		</table>
	</form>

	</body>
</html>