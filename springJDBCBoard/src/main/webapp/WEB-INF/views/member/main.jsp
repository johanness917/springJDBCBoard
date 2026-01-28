<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 메뉴</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .btn-group-custom {
        margin-top: 50px;
        display: flex;
        gap: 15px;
        justify-content: center;
    }
    /* a 태그의 기본 밑줄 제거 및 버튼 스타일 유지 */
    .btn-group-custom a {
        text-decoration: none;
    }
</style>
</head>
<body>

    <div class="container text-center">
        <h2 class="mt-5">회원 관리 시스템</h2>
        <p class="text-muted">원하시는 메뉴를 선택해 주세요.</p>
        <hr>

        <div class="btn-group-custom">
            <a href="/member/joinForm" class="btn btn-primary btn-lg">
                회원가입
            </a>

            <a href="/member/memberList" class="btn btn-outline-secondary btn-lg">
                회원리스트 조회
            </a>
        </div>
    </div>

</body>
</html>