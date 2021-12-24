<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/resources/css/color.jsp"%>

<html>
	<head>
		<title>회원탈퇴</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>

<body bgcolor="${bodyback_c}">
	<form method="post" action="/mymember/main" name="userinput" >
		<table width="270" border="0" cellspacing="0" cellpadding="5" align="center">
		<c:if test="${check == 1}">
  			<tr bgcolor="${title_c}"> 
    			<td height="39" align="center">
	  				<font size="+1" ><b>회원정보가 삭제되었습니다.</b></font></td>
  			</tr>
  			<tr bgcolor="${value_c}">
    			<td align="center"> 
      				<p>흑흑.... 서운합니다. 안녕히 가세요.</p>
      				<meta http-equiv="Refresh" content="5;url=/mymember/main" >
    			</td>
  			</tr>
  			<tr bgcolor="${value_c}">
    			<td align="center"> 
      				<input type="submit" value="확인">
    			</td>
 		 	</tr>
 		</c:if>
		</table>
	</form>


<c:if test="${check == 0}">
	<script> 
	  	alert("비밀번호가 맞지 않습니다. 다시 확인해주세요.");
      	history.go(-1);
	</script>
</c:if>

	</body>
</html>    