<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>inputPro.jsp 페이지..!!</h1>

<c:if test="${result == 1}">
	<script>
		alert("가입이 완료되었습니다.");
		window.location="/mymember/main";
	</script>
</c:if>

<c:if test="${result == 0}">
	<script>
		alert("정보를 다시 확인해주세요.");
		history.go(-1);
	</script>
</c:if> 