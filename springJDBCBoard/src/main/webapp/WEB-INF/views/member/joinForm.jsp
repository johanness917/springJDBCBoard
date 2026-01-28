<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 요청</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
body {
	background-color: #f8f9fa;
}

.registration-card {
	max-width: 450px;
	margin: 80px auto;
	background: #ffffff;
	padding: 30px;
	border-radius: 15px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>

	<div class="container">
		<div class="registration-card">
			<h2 class="text-center mb-4">회원가입</h2>
			<p class="text-center text-muted mb-4">정보를 입력하여 가입을 완료해 주세요.</p>

			<form action="/member/joinFormPost" method="post">

				<div class="mb-3">
					<label for="userName" class="form-label">이름</label> <input
						type="text" class="form-control" id="name" name="name"
						placeholder="실명을 입력하세요" required>
				</div>

				<div class="mb-3">
					<label for="userId" class="form-label">아이디</label> <input
						type="text" class="form-control" id="userId" name="userId"
						placeholder="사용할 아이디를 입력하세요" required>
				</div>

				<div class="mb-3">
					<label for="userPwd" class="form-label">패스워드</label> <input
						type="password" class="form-control" id="password" name="password"
						placeholder="비밀번호를 입력하세요" required>
				</div>

				<div class="mb-3">
					<label for="userAge" class="form-label">나이</label> <input
						type="number" class="form-control" id="age" name="age" min="1"
						max="120" placeholder="나이를 입력하세요" required>
				</div>

				<hr class="my-4">

				<div class="d-grid gap-2">
					<button type="submit" class="btn btn-primary btn-lg">회원가입
						요청</button>
					<a href="/member/main" class="btn btn-outline-secondary">이전으로</a>
				</div>

			</form>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>