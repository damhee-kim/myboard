<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="/resources/css/color.jsp" %>

<html>
	<head>
		<title>게시판</title>
		<link href="/resources/css/style.css" rel="stylesheet" type="text/css">
	</head>

<body bgcolor="${bodyback_c}">
	<center>
		<b>글목록(전체 글:${count})</b>
	</center>
	<table width="700" align="center">
		<tr>
   		<td align="right" bgcolor="${value_c}">
    		<a href="/mymember/main">
    			[메인페이지]
    		</a>&nbsp;
			<a href="/myboard/write">
				[글 작성하기]
			</a>
    	</td>
	</table>

	<c:if test="${list == null}">
		<table width="700" border="1" cellpadding="0" cellspacing="0">
			<tr>		
    			<td align="center">
    				게시판에 저장된 글이 없습니다.
    			</td>
    		</tr>

		</table>
	</c:if>

	<c:if test="${list != null}">
		<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    		<tr height="30" bgcolor="${value_c}"> 
	      		<td align="center"  width="50"  >번 호</td> 
	      		<td align="center"  width="250" >제 목</td> 
	      		<td align="center"  width="100" >작성자</td>
	      		<td align="center"  width="150" >작성일</td> 
	      		<td align="center"  width="50" >조 회</td> 
	      		<td align="center"  width="100" >IP</td>    
    		</tr>

	<c:forEach items="${list}" var="myBoardDTO">
   			<tr height="30">
   				<td align="center"  width="50" >
   					${myBoardDTO.num}
				</td>
    			<td align="center" width="250" >
			<c:if test="${myBoardDTO.re_level > 0}" >
					<img src="/resources/images/level.gif" width="${5 * myBoardDTO.re_level}" height="16">
					<img src="/resources/images/re.gif">
			</c:if>
			<c:if test="${myBoardDTO.re_level == 0}">
					<img src="/resources/images/level.gif" width="${5 * myBoardDTO.re_level}" height="16">
			</c:if>
					<a href="/myboard/readcount?num=${myBoardDTO.num}&pageNum=${pageNum}">
						${myBoardDTO.subject}
					</a>
			<c:if test="${myBoardDTO.readcount >= 20}">
					<img src="/resources/images/hot.gif" border="0"  height="16">
			</c:if>
				</td>
	
    			<td align="center"  width="100"> 
       				<a href="mailto:${myBoardDTO.email}">
       					${myBoardDTO.writer}
       				</a>
       			</td>
    		 
    		 
    		 
    			<td align="center"  width="150">
					<fmt:formatDate pattern="yyyy/MM/dd" value="${myBoardDTO.reg_date}" />
    			</td>
    			<td align="center"  width="50">
    				${myBoardDTO.readcount}
    			</td>
    			<td align="center" width="100" >
					${myBoardDTO.ip}
    			</td>
  			</tr>
  		</c:forEach>
	</table>
</c:if>

<center>
	<c:if test="${startPage >10}">
		<a href="/myboard/list?pageNum=${startPage - 10}">이전</a>
	</c:if>

	<c:forEach var="i" begin="${startPage}" end="${endPage}" step="1">
		<a href="/myboard/list?pageNum=${i}">[${i}]</a>
	</c:forEach>

	<c:if test="${endPage < pageCount}">
		<a href="/myboard/list?pageNum=${startPage + 10}">[다음]</a>
	</c:if>
</center>
