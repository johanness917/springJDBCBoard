<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .info-container {
            max-width: 500px;
            margin: 60px auto;
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
        }
        .info-label {
            font-weight: bold;
            color: #6c757d;
            margin-bottom: 5px;
            display: block;
        }
    </style>
</head>
<body class="bg-light">

<div class="container">
    <div class="info-container">
        <h3 class="text-center mb-5">회원 정보 수정</h3>
        
        <form action="/member/updatePost" method="post">
            
            <div class="mb-4">
                <label class="info-label">번호</label>
                <input type="text" name="no" class="form-control bg-light" 
                       value="${member.no}" readonly>
            </div>

            <div class="mb-4">
                <label for="name" class="info-label">이름</label>
                <input type="text" id="name" name="name" class="form-control" 
                       value="${member.name}" required>
            </div>

            <div class="mb-5">
                <label for="age" class="info-label">나이</label>
                <input type="number" id="age" name="age" class="form-control" 
                       value="${member.age}" required>
            </div>

            <div class="row g-2">
                <div class="col-6">
                    <button type="submit" class="btn btn-warning w-100">수정 완료</button>
                </div>
                <div class="col-6">
                    <a href="/member/detail/${member.no}" class="btn btn-outline-secondary w-100">취소</a>
                </div>
            </div>
        </form>
        
    </div>
</div>

</body>
</html>