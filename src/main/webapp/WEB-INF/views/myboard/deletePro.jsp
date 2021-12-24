<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>deletePro.jsp 페이지..!!</h1>

<c:if test="${result == 1}">
	<script>
		alert("글이 삭제되었습니다.")
		window.location="/myboard/list";
	</script>
</c:if>


<c:if test="${result == 0}">
	<script>
		alert("글이 삭제 되지 않았습니다. 비밀번호 확인부탁드립니다.");
		history.go(-1);
	</script>
</c:if>