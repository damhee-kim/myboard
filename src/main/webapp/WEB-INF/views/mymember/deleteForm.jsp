<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="/resources/css/color.jsp"%>

<html>
	<head>
		<title>회원탈퇴</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>
	
<body onload="begin()" bgcolor="${bodyback_c}">
	<form name="myform" action="/mymember/deletePro" method="post" onSubmit="return checkIt()">
		<input type="hidden" name="pageNum" value="${pageNum}"/>
		<input type="hidden" name="id" value="${myMemberDTO.id}" />
			
		<table cellSpacing=1 cellPadding=1 width="260" border=1 align="center" >
  			<tr height="30">
   		 		<td colspan="2" align="middle" bgcolor="${title_c}">
	  				<font size="+1" ><b>회원 탈퇴</b></font>
	  			</td>
	  		</tr>
  
 		 	<tr height="30">
    			<td width="110" bgcolor="${value_c}" align=center>비밀번호</td>
    			<td width="150" align=center>
      				<input type=password name="passwd"  size="15" maxlength="12">
      			</td>
      		</tr>
  			<tr height="30">
    			<td colspan="2" align="middle" bgcolor="${value_c}">
      				<input type=submit value="회원탈퇴"> 
     			 	<input type="button" value="취  소" onclick="javascript:window.location='/mymember/main'">
     			</td>
     		</tr>
		</table>
	</form>
</body>
</html>