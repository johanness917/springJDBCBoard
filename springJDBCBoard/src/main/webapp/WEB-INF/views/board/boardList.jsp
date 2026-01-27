<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Board List</title>
<style>
body {
	background-color: #f8f9fa;
}

.write-container {
	max-width: 800px;
	margin: 50px auto;
}

.card {
	border: none;
	border-radius: 15px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

.card-header {
	background-color: #4e73df;
	color: white;
	border-radius: 15px 15px 0 0 !important;
	padding: 20px;
}

.form-label {
	font-weight: 600;
	color: #444;
}

.btn-submit {
	background-color: #4e73df;
	border: none;
	padding: 10px 25px;
}

.btn-submit:hover {
	background-color: #2e59d9;
}
</style>
</head>
<body>

<div class="container">
    <div class="header-box">
        <h1>BOARD <span>LIST</span></h1>
        <a href="/board/insertForm" class="btn-write">New Mission</a>
    </div>

    <table class="t1-table">
        <thead>
            <tr>
                <th width="10%">No</th>
                <th width="50%">Title</th>
                <th width="15%">Writer</th>
                <th width="25%">Date</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${not empty boardList}">
                    <c:forEach var="board" items="${boardList}">
                        <tr>
                            <td>${board.no}</td>
                            <td class="title-cell">
                                <a href="/board/detail?no=${board.no}">${board.title}</a>
                            </td>
                            <td>${board.writer}</td>
                            <td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd" /></td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="4" style="padding: 50px; color: #555;">작성된 게시글이 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table>
</div>
</body>
</html>