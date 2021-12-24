<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:if test="${result == 1}">
	<script>
		alert("수정이 완료되었습니다.")
		window.location="/myboard/content?num=${myBoardDTO.num}";
	</script>
</c:if>

<c:if test="${result == 0}">
	<script>
		alert("비밀번호가 잘못 입력되었습니다. 확인부탁드립니다.");
		history.go(-1);
	</script>
</c:if>
