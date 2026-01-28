<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 리스트 (검색 추가)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

    <div class="container mt-5">
        <div class="card shadow-sm mx-auto" style="max-width: 700px;">
            <div class="card-body">
                <h2 class="card-title text-center mb-4">회원 리스트</h2>

                <div class="mb-4">
                    <form action="/member/searchList" method="get" class="d-flex justify-content-center gap-2">
                        <select name="searchType" class="form-select" style="width: 120px;">
                            <option value="name" ${param.searchType == 'name' ? 'selected' : ''}>이름</option>
                            <option value="age" ${param.searchType == 'age' ? 'selected' : ''}>나이</option>
                        </select>
                        
                        <input type="text" name="keyword" class="form-control" 
                               placeholder="검색어를 입력하세요" style="width: 250px;" 
                               value="${param.keyword}">
                        
                        <button type="submit" class="btn btn-dark">검색</button>
                    </form>
                </div>
                <table class="table table-striped text-center">
                    <thead class="table-dark">
                        <tr>
                            <th>번호</th>
                            <th>이름</th>
                            <th>나이</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${member}" var="member">
                            <tr>
                                <td><a href="/member/memberDetail/${member.no}" class="text-decoration-none">${member.no}</a></td>
                                <td><a href="/member/memberDetail/${member.no}" class="text-decoration-none">${member.name}</a></td>
                                <td>${member.age}세</td>
                            </tr>
                        </c:forEach>

                        <c:if test="${empty memberList}">
                            <tr>
                                <td colspan="3" class="text-center text-muted">검색 결과가 없습니다.</td>
                            </tr>
                        </c:if>
                    </tbody>
                </table>

                <div class="text-center mt-4">
                    <a href="/member/main" class="btn btn-primary">신규 회원 등록</a>
                    <a href="/member/memberList" class="btn btn-outline-secondary">전체 보기</a>
                </div>
            </div>
        </div>
    </div>

</body>
</html>