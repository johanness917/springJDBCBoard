<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>등록 완료 | Simple Board</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        body { background-color: #f8f9fa; }
        .success-container { max-width: 500px; margin: 100px auto; text-align: center; }
        .card { border: none; border-radius: 15px; box-shadow: 0 0 20px rgba(0,0,0,0.1); }
        .icon-box { 
            font-size: 4rem; 
            color: #198754; /* 성공을 의미하는 초록색 */
            margin-bottom: 20px; 
        }
        .btn-group-custom { display: flex; gap: 10px; justify-content: center; margin-top: 30px; }
        .btn-primary-custom { background-color: #4e73df; border: none; }
    </style>
</head>
<body>

<div class="container success-container">
    <div class="card p-5">
        <div class="card-body">
            <div class="icon-box">
                <i class="bi bi-check-circle-fill"></i>
            </div>
            
            <h2 class="fw-bold mb-3">등록 성공!</h2>
            <p class="text-muted">게시글이 정상적으로 등록되었습니다.</p>

            <div class="btn-group-custom">
                <a href="/board/insertForm" class="btn btn-outline-primary px-4">
                    <i class="bi bi-plus-lg me-1"></i> 추가 등록
                </a>
                <a href="/board/list" class="btn btn-primary btn-primary-custom px-4">
                    <i class="bi bi-list-ul me-1"></i> 목록으로
                </a>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>