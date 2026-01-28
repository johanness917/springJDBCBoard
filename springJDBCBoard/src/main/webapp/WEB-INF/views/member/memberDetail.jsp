<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 상세</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
.info-container {
	max-width: 500px;
	margin: 60px auto;
	background: #fff;
	padding: 40px;
	border-radius: 12px;
	box-shadow: 0 5px 20px rgba(0, 0, 0, 0.1);
}

.info-label {
	font-weight: bold;
	color: #6c757d;
	width: 100px;
	display: inline-block;
}

.info-value {
	font-size: 1.1rem;
	color: #212529;
}
</style>

<script>
	function confirmDelete(memberNo) {
		// confirm() 함수는 '확인' 클릭 시 true, '취소' 클릭 시 false를 반환합니다.
		if (confirm("정말로 이 회원 정보를 삭제하시겠습니까?")) {
			// 확인을 눌렀을 때만 컨트롤러의 삭제 경로로 이동합니다.
			location.href = "/member/delete/" + memberNo;
		}
	}
</script>
</head>
<body class="bg-light">

	<div class="container">
		<div class="info-container">
			<h3 class="text-center mb-5">회원 정보</h3>

			<div class="mb-4 border-bottom pb-2">
				<span class="info-label">번호</span> <span class="info-value">${member.no}</span>
			</div>

			<div class="mb-4 border-bottom pb-2">
				<span class="info-label">이름</span> <span class="info-value">${member.name}</span>
			</div>

			<div class="mb-5 border-bottom pb-2">
				<span class="info-label">나이</span> <span class="info-value">${member.age}세</span>
			</div>

			<div class="row g-2">
				<div class="col-6">
					<a href="/member/update/${member.no}" class="btn btn-warning w-100">정보
						수정</a>
				</div>
				<div class="col-6">
					<a href="/member/delete/${member.no}"
						class="btn btn-outline-danger w-100"
						onclick="return confirm('정말로 삭제하시겠습니까?');"> 삭제 </a>
				</div>
			</div>

		</div>
	</div>

</body>
</html>