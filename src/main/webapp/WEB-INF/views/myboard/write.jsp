<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/resources/css/color.jsp" %>


<html>
	<head>
		<title>게시판 작성 페이지</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>

<body bgcolor="${bodyback_c}">  
	<center>
		<b>글작성 페이지</b>
	</center>
	<br>
	<form method="post" name="writeform" action="/myboard/writePro" onsubmit="return writeSave()">
		<input type="hidden" name="num" value="${myBoardDTO.num}" />
		<input type="hidden" name="ref" value="${myBoardDTO.ref}" />
		<input type="hidden" name="re_step" value="${myBoardDTO.re_step}" />
		<input type="hidden" name="re_level" value="${myBoardDTO.re_level}" />
		<input type="hidden" name="writer" value="${sessionScope.memId}" />
	
		<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">
   			<tr>
    			<td align="right" colspan="2" bgcolor="${value_c}">
	    			<a href="list.jsp"> 글목록</a> 
   				</td>
   			</tr>
   			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center">
    				이 름
    			</td>
    			<td  width="330">
       				${sessionScope.memId}
       			</td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center" >
    				제 목
    			</td>    			
    		<c:if test="${myBoardDTO.num == 0}">
    		    <td  width="330">
       				<input type="text" size="40" maxlength="50" name="subject">
       			</td>
			</c:if>
			<c:if test="${myBoardDTO.num != 0}">
				<td width="330">
	   					<input type="text" size="40" maxlength="50" name="subject" value="[답변]">
	   			</td>
	   		</c:if>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center">Email</td>
    			<td  width="330">
       				<input type="text" size="40" maxlength="30" name="email" ></td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center" >
    				내 용
    			</td>
    			<td  width="330" >
     				<textarea name="content" rows="13" cols="40"></textarea>
     			</td>
  			</tr>
  			<tr>
    			<td  width="70"  bgcolor="${value_c}" align="center">
    				비밀번호
    			</td>
    			<td  width="330" >
     				<input type="password" size="8" maxlength="12" name="passwd"> 
			 	</td>
  			</tr>
			<tr>      
 				<td colspan=2 bgcolor="${value_c}" align="center"> 
				  	<input type="submit" value="글쓰기" >  
  					<input type="reset" value="다시작성">
  					<input type="button" value="목록보기" OnClick="window.location='pageNum=${pageNum}'">
				</td>
			</tr>
		</table>     
	</form>    
	  
</body>
</html> 