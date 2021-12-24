<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   
<%@ include file="/resources/css/color.jsp" %>
   
   
<html>
	<head>
		<title>게시판 페이지</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>


<body bgcolor="${bodyback_c}">  
	<center>
		<b>글내용 보기</b>
	</center>
	<br>
	<form>
		<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="${bodyback_c}" align="center">  
	  		<tr height="30">
	    		<td align="center" width="125" bgcolor="${value_c}">
	    			글번호
	    		</td>
	    		<td align="center" width="125" align="center">
		     		${myBoardDTO.num}
		     	</td>
	    		<td align="center" width="125" bgcolor="${value_c}">
	    			조회수
	    		</td>
	    		<td align="center" width="125" align="center">
		     		${myBoardDTO.readcount}
		     	</td>
  			</tr>
  			<tr height="30">
    			<td align="center" width="125" bgcolor="${value_c}">
    				작성자
    			</td>
    			<td align="center" width="125" align="center">
	     			${myBoardDTO.writer}
	     		</td>
    			<td align="center" width="125" bgcolor="${value_c}" >
    				작성일
    			</td>
    			<td align="center" width="125" align="center">
   					<fmt:formatDate value="${myBoardDTO.reg_date}" type="date" dateStyle="long" timeStyle="long" />
	     		</td>
  			</tr>
  			<tr height="30">
    			<td align="center" width="125" bgcolor="${value_c}">
    				글제목
    			</td>
    			<td align="center" width="375" align="center" colspan="3">
	     			${myBoardDTO.subject}
	     		</td>
  			</tr>
 			<tr>
    			<td align="center" width="125" bgcolor="${value_c}">
    				글내용
    			</td>
    			<td align="left" width="375" colspan="3">
    				<pre>${myBoardDTO.content}</pre>
    			</td>
  			</tr>
  			<tr height="30">      
    			<td colspan="4" bgcolor="${value_c}" align="right" > 
	  				<input type="button" value="글수정" 
     	  				onclick="document.location.href='/myboard/update?num=${myBoardDTO.num}&pageNum=${pageNum}'">
	 	  			&nbsp;
	 	 			<input type="button" value="글삭제" 
     	  				onclick="document.location.href='/myboard/delete?num=${myBoardDTO.num}&pageNum=${pageNum}'">
	  	 			&nbsp;
      				<input type="button" value="답글쓰기" 
      			 		onclick="document.location.href='/myboard/write?num=${myBoardDTO.num}&ref=${myBoardDTO.ref}&re_step=${myBoardDTO.re_step}&re_level=${myBoardDTO.re_level}'">
	  			 	&nbsp;
      	 			<input type="button" value="글목록" 
      	 				onclick="document.location.href='/myboard/list'">
    			</td>
  			</tr>
		</table>    
	</form>
 
