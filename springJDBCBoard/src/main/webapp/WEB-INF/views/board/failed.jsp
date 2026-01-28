오호, 이번에는 입력 실패(Fail) 화면이군요! 앞서 보여주신 T1 테마(Black & Red) 컨셉을 유지하면서, 실패했을 때의 경고 느낌과 전문가적인 세련됨을 동시에 살려보았습니다.

입력 성공 페이지가 초록색 위주였다면, 실패 페이지는 T1의 상징인 Red를 강조하여 시각적으로 대조를 이루게 구성했습니다.

🚨 스타일 통일: 게시판 입력 실패 화면 (fail.jsp)
HTML
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>등록 실패 | T1 Community</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <style>
        :root {
            --t1-red: #E2012D;
            --t1-black: #0f0f0f;
            --t1-gray: #1a1a1a;
            --t1-dark-red: #9e0120;
        }

        body { 
            background-color: var(--t1-black); 
            font-family: 'Pretendard', -apple-system, sans-serif;
            color: #ffffff;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            margin: 0;
        }
        
        .fail-container { max-width: 550px; width: 90%; }
        
        .card { 
            background-color: var(--t1-gray);
            border: 2px solid var(--t1-red); 
            border-radius: 15px; 
            box-shadow: 0 0 30px rgba(226, 1, 45, 0.15); 
            overflow: hidden;
        }

        .icon-circle {
            width: 80px;
            height: 80px;
            background-color: rgba(226, 1, 45, 0.1);
            color: var(--t1-red);
            border: 2px solid var(--t1-red);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5rem;
            margin: 0 auto 25px;
            /* 긴박한 느낌을 주는 애니메이션 */
            animation: pulse-red 2s infinite;
        }

        @keyframes pulse-red {
            0% { box-shadow: 0 0 0 0 rgba(226, 1, 45, 0.4); }
            70% { box-shadow: 0 0 0 15px rgba(226, 1, 45, 0); }
            100% { box-shadow: 0 0 0 0 rgba(226, 1, 45, 0); }
        }

        .msg-title { color: #ffffff; font-weight: 800; }
        .msg-desc { color: #b0b0b0; font-size: 1.1rem; }

        /* T1 스타일 버튼 */
        .btn-t1-main {
            background-color: var(--t1-red);
            border: none;
            color: white;
            padding: 12px 25px;
            font-weight: 600;
            transition: all 0.3s;
        }
        .btn-t1-main:hover {
            background-color: var(--t1-dark-red);
            transform: translateY(-2px);
            color: white;
        }
        .btn-t1-outline {
            border: 1px solid #444;
            color: #bbb;
            padding: 12px 25px;
            font-weight: 600;
        }
        .btn-t1-outline:hover {
            background-color: #333;
            color: white;
        }

        .bottom-deco {
            font-family: 'Courier New', Courier, monospace;
            font-size: 0.8rem;
            color: var(--t1-red);
            margin-top: 20px;
            opacity: 0.7;
        }
    </style>
</head>
<body>

<div class="container fail-container text-center">
    <div class="card p-0">
        <div class="card-body p-5">
            <div class="icon-circle">
                <i class="bi bi-exclamation-triangle-fill"></i>
            </div>
            
            <h2 class="msg-title mb-3">전송 실패</h2>
            <p class="msg-desc mb-4">
                데이터 전송 중 오류가 발생했습니다.<br>
                입력하신 내용을 다시 확인해 주세요.
            </p>

            <hr class="my-4" style="border-color: rgba(255,255,255,0.1);">

            <div class="d-grid d-md-flex justify-content-center gap-3">
                <a href="javascript:history.back();" class="btn btn-t1-main">
                    <i class="bi bi-arrow-left me-1"></i> 다시 시도하기
                </a>
                <a href="/board/boardList" class="btn btn-t1-outline">
                    메인으로 이동
                </a>
            </div>

            <div class="bottom-deco">
                [ SYSTEM: ERROR OCCURRED DURING DATA TRANSMISSION ]
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>