<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // 1. 한글 깨짐 방지를 위해 인코딩 설정
    request.setCharacterEncoding("UTF-8");

    // 2. joinForm.jsp에서 보낸 데이터 받기 (name 속성 기준)
    String name = request.getParameter("name");
    String userId = request.getParameter("userId");
    String password = request.getParameter("password");
    String age = request.getParameter("age");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 완료</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="card mx-auto" style="max-width: 500px;">
        <div class="card-body text-center">
            <h3 class="card-title text-success">회원가입 완료!</h3>
            <p class="card-text text-muted">성공적으로 가입 정보를 수신했습니다.</p>
            <hr>
            
            <div class="text-start mb-4">
                <p><strong>이름:</strong> <%= name %></p>
                <p><strong>아이디:</strong> <%= userId %></p>
                <p><strong>나이:</strong> <%= age %> 세</p>
                <p class="text-danger small">* 비밀번호는 보안상 표시하지 않습니다.</p>
            </div>

            <div class="d-grid gap-2">
                <a href="/member/main" class="btn btn-primary">메인으로 돌아가기</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>