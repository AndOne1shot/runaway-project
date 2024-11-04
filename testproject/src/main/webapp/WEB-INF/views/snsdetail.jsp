<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bangers&family=Gothic+A1&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Gothic+A1&display=swap" rel="stylesheet">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://kit.fontawesome.com/5e485453d8.js" crossorigin="anonymous"></script>
     <link href="/css/snsdetail.css" rel="stylesheet">
    <title>Document</title>

    <script>
        $(document).ready(function () {
            $(".logout").mouseover(function () {
                $(".logout").css("background-color", "gray");
            });
            $(".logout").mouseout(function () {
                $(".logout").css("background-color", "#305346");
            });
        });

        $(document).ready(function () {
            $(".mypage").mouseover(function () {
                $(".mypage").css("background-color", "gray");
            });
            $(".mypage").mouseout(function () {
                $(".mypage").css("background-color", "#305346");
            });
        });




        $(document).ready(function () {
            $(".sns").mouseover(function () {
                $(".sns").css("background-color", "#b4b4b4");
            });
            $(".sns").mouseout(function () {
                $(".sns").css("background-color", "white");
            });
        });

        $(document).ready(function () {
            $(".mate").mouseover(function () {
                $(".mate").css("background-color", "#b4b4b4");
            });
            $(".mate").mouseout(function () {
                $(".mate").css("background-color", "white");
            });
        });


        


    </script>

</head>

<body>
    <div class="container">
        <div class="head">
            <!-- 페이지 제목 누르면 메인페이지로 이동 -->
            <a href="asd" class="title">RUNAWAY</a>



            <!-- 마이페이지 버튼 -->
            <div class="mypage">
                <a href="dasd" class="mypage_text">마이페이지</a>
            </div>

            <!-- 로그아웃 버튼 -->
            <div class="logout">

                <a href="sadad" class="logout_text"> <i class="fa-solid fa-right-from-bracket"
                        style="color: #f4efe2;"></i>&nbsp;&nbsp;로그아웃</a>
            </div>

        </div>



        <!-- 사이드바 -->
        <div class="side" align="center">

            <div class="sns">

                <a href="sdsa" class="sns_text"><i class="fa-solid fa-person-running"
                        style="font-size: 30px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;트랙</a>
            </div>

            <div class="mate">

                <a href="sdsa" class="mate_text"><i class="fa-solid fa-people-group"
                        style="font-size: 30px;"></i>&nbsp;&nbsp;&nbsp;&nbsp;메이트</a>
            </div>
        </div>








        <div class="content">
            <span style="font-size: 36px; font-weight: 700;">트랙 게시판</span><br><br>

            <div class="sns_title">
                <span style="font-size: 30px; font-weight: 600;">나만의 지리는 트랙</span>&nbsp;&nbsp;
                <!-- select로 설정한 지역 -->
                <span style="font-family: 'Gothic A1', sans-serif; color: #747474;">서울시 강남구</span>
            </div>

            <div class="sns_writer">
                <img src="Penguins.jpg" class="myimg">
                <span
                    style="font-size: 14px; font-weight: 600; font-family: 'Gothic A1', sans-serif; margin-top: 15px; margin-left: 10px;">강남구
                    퀵실버</span>
            </div>

            <div class="date_read">
                <span style="font-size: 14px; font-family: 'Gothic A1', sans-serif;">2024-11-01 12:34</span>
                <span style="font-size: 14px; font-family: 'Gothic A1', sans-serif; float: right; font-weight: 600;">조회수
                    : 1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;추천수 : 1</span>
            </div>
            <hr><br><br>

            <div class="maincontent">
                <img src="route.png" style="width: 800px; height: 600px;">
                <div style="margin-left: 100px; margin-top: 50px; width: 500px; text-align: center;">
                    <span class="content1">달린 거리</span> <br><br>
                    <span class="content2">4.62km</span><br><br><br><br>

                    <span class="content1">달린 시간</span><br><br>
                    <span class="content2">1:08:00</span><br><br><br><br>

                    <span class="content1">평균 페이스</span><br><br>
                    <span class="content2">5'87"</span>
                </div>
            </div>

            <div style="margin-left: 50px; margin-top: 20px; width: 1400px;  height: auto;">
                <span style="font-size: 24px; font-family: 'Gothic A1', sans-serif;">여기에 내용입력</span>

            </div>

            <!-- 추천버튼 -->
            <div align=center style="margin-top: 40px;">
            <a href="qeqwe" class="recomend">
            <br><i class="fa-solid fa-fire" style="font-size: 32px; color: #333333;"></i><br>
                <span class="run">RUN</span>
            </a>
            </div>

            <!-- 수정, 삭제 글목록 -->
             <div align="right" style="margin-top: 10px;">
                <a class="delete" href="asd"><i class="fa-solid fa-file-pen"></i>&nbsp;수정</a>&nbsp;&nbsp;&nbsp;
                <a class="delete" href="das"><i class="fa-regular fa-trash-can"></i>&nbsp;삭제</a>&nbsp;&nbsp;&nbsp;
                <a class="delete" href="das"><i class="fa-solid fa-table-list"></i>&nbsp;글목록</a>
             </div>


        </div>


    </div>

</body>

</html>