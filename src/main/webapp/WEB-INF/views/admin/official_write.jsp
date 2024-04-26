<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>제목 입력</title>
<link rel="stylesheet" href="../resources/css/common/reset.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../resources/css/header/header.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css"/>
<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<style>
	.officialWriteTable, .officialWriteTh, .officialWriteTd {
		border: 1px solid black;
		border-collapse: collapse;
	}
	
	.officialWriteTh, .officialWriteTd {
		padding: 5px 10px;
	}

    #datepicker {
        margin-bottom: 20px;
    }
	
	#officialWriteInfo {
		resize: none;
		width: 500px;
		height: 150px;
	}
    .swiper-container {
	 	width: 50%;
	 	height: 50%; 
	 }
	.swiper-slide {
	 	font-size: 18px;
	 	background: #fff;	
	 }
	.swiper-pagination-bullet {
		 width: 12px;
		 height: 12px; 
		 border: 1px solid pink; 
		 opacity: 1; 
	}
	.swiper-pagination-bullet-active { 
		width: 40px; 
		transition: width .5s; 
		border-radius: 5px; 
		background: pink; 
		border: 1px solid; 
	}
	.swiper-container {
        overflow: hidden; /* 테이블 셀에서 넘치는 부분을 잘라냄 */
        position: relative; /* 상대적인 위치 설정 */
    }
    .swiper-button-prev, .swiper-button-next, .swiper-pagination {
        position: absolute; /* 절대적인 위치 설정 */
        z-index: 1; /* 다른 요소 위로 배치 */
    }

    .OfficialWriteTimeBtn{
   		background-color : skyblue;
   	}
.black_overlay{
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index:1001;
	-moz-opacity: 0.8;
	opacity:.80;
	filter: alpha(opacity=80);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	border: 1px solid black;
	background-color: white;
	z-index:1002;
	overflow: auto;
}
	.officialCourtTable{
			width: 100%;
	}
	.officialCourtTable, .officialCourtTh, .officialCourtTd {

		border: 1px solid black;
		border-collapse: collapse;
	}
	
	.officialCourtTh, .officialCourtTd {
		padding: 5px 10px;
	}
</style>
</head>
<body>
	<div class="adminBody">
		<header class="adminHeader">
			<div class="headerCont">
				<a href="../admin_logout.do" class="logout">로그아웃</a>
				<ul class="menu">
					<li><a href="../admin/member_list">회원 관리</a></li>
					<li><a href="../admin/team_list">팀 관리</a></li>
					<li><a href="../admin/official_list">공식 경기 관리</a></li>
					<li><a href="../admin/writing_list">글 관리</a></li>
					<li><a href="../admin/report_list">신고 관리</a></li>
				</ul>
			</div>
		</header>
		<div class="adminContainer">
			<h1>공식경기 등록</h1>
			<form action="" method="post">
				<table class="officialWriteTable">
					<tr>
						<th class="officialWriteTh">공식 경기 이름</th>
						<td class="officialWriteTd">
							<input type="text" id="officialWriteName" disabled/>
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 사진</th>
						<td class="officialWriteTd">
							<div class="swiper-container">
					  			<!-- Additional required wrapper -->
						  		<div class="swiper-wrapper" id="swiperImage">
						    
						  		</div>
					  
					  				<!-- 페이징 필요시 추가 -->
							  	<div class="swiper-pagination"></div>
							  	<!-- 이전, 다음 버튼 필요시 추가 -->
							  	<div class="swiper-button-prev"></div>
							  	<div class="swiper-button-next"></div>
					
							</div>
							<a id="officialCourtList" >
							구장 찾기</a>
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 가격</th>
						<td class="officialWriteTd">
							<input type="text" id="officialWritePrice" />
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 날짜</th>
						<td class="officialWriteTd">
							<input id="officialWriteDate" type="text"/>
							<br/>
							<input class="officialWriteTimeBtn" id="0" type="button" value="00~02">
							<input class="officialWriteTimeBtn" id="2" type="button" value="02~04">
							<input class="officialWriteTimeBtn" id="4" type="button" value="04~06">
							<input class="officialWriteTimeBtn" id="6" type="button" value="06~08">
							<input class="officialWriteTimeBtn" id="8" type="button" value="08~10">
							<input class="officialWriteTimeBtn" id="10" type="button" value="10~12">
							<input class="officialWriteTimeBtn" id="12" type="button" value="12~14">
							<input class="officialWriteTimeBtn" id="14" type="button" value="14~16">
							<input class="officialWriteTimeBtn" id="16" type="button" value="16~18">
							<input class="officialWriteTimeBtn" id="18" type="button" value="18~20">
							<input class="officialWriteTimeBtn" id="20" type="button" value="20~22">
							<input class="officialWriteTimeBtn" id="22" type="button" value="22~24">
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 레벨</th>
						<td class="officialWriteTd">
							<select id="officialWriteLevel">
								<option value="">레벨을 선택해 주세요</option>
								<option value="브론즈">브론즈</option>
								<option value="실버">실버</option>
								<option value="골드">골드</option>
								<option value="플레티넘">플레티넘</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 성별</th>
						<td class="officialWriteTd">
							<select id="officialWriteGender">
								<option value="">성별을 선택해 주세요</option>
								<option value="남자">남자</option>
								<option value="여자">여자</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 모집인원</th>
						<td class="officialWriteTd">
							<input type="number" id="officialWriteTo"/>
						</td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 정보</th>
						<td class="officialWriteTd"><textarea id="officialWriteInfo"
								maxlength="300"></textarea></td>
					</tr>
					<tr>
						<th class="officialWriteTh">공식 경기 위치</th>
						<td class="officialWriteTd">
							<input type="text" id="officialWriteAddress" maxlength="300" disabled/></td>
					</tr>
				</table>
				<br /> 
				<input type="checkbox" name="" id="officialIsDisabled"> 
				<label for="officialIsDisabled">공식 경기 비활성</label>
				<br/>
				<input id="officialRegisterCancel" type="button" value="취소 하기" />
				 <input id="officialRegisterSubmit" type="button" value="등록 하기" />
			</form>
		</div>
	</div>
        <div id="light" class="white_content">
			<input type="text" id="officialCourtListSearch"/>
			<br/>
			<br/>
			<table class="officialCourtTable">
				<thead>
					<tr>
						<th class="officialCourtTh">구장 번호</th>
						<th class="officialCourtTh">구장 이름</th>
						<th class="officialCourtTh">구장 지역</th>
					</tr>
				</thead>
				<tbody id="list">
				</tbody>
			</table>
        </div>
        <div id="fade" class="black_overlay" onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'"></div>
</body>
<script>
	var currentDate = new Date();
	var formattedDate = currentDate.getFullYear() + "-" + (currentDate.getMonth() + 1).toString().padStart(2, '0') + "-" + currentDate.getDate().toString().padStart(2, '0');
	callCourtList();
	$('#officialCourtList').on('click', function(){
		$('#light').css('display', 'block');
	    $('#fade').css('display', 'block');
	    callCourtList();
	});
	
	function callCourtList() {
		console.log("callCourtList in");
		$.ajax({
			url:'./callCourtList.ajax'
			,type:'POST'
			,data:{
			}
			,dataType:'json'
			,success:function(data){
				console.log(data);
				showList(data.list);
			}
			,error: function(error) {
		    }
		})

		console.log("callCourtList out");
	}
// 	function callCourtDetail(){
// 		$.ajax({
// 			url:'./callCourtInfo.ajax'
// 			,type:'POST'
// 			,dataType:'json'
// 			,data:{
				
// 			}
// 			,success:function(data){

// 			}
// 			,error:function(error){

// 			}
// 		});
// 	}


	$('#officialWriteDate').val(formattedDate);

	$('#officialRegisterSubmit').on('click', function(){
		if($('#officialWritName').val() == ''
			|| $('officialWritePrice').val() == ''
			|| $('officialWrite')
		){
			
		}
	});

    $('#officialRegisterCancel').on('click',function(){
        if(confirm('정말 취소 하시겠습니까?')){
        	alert('취소되었습니다.');
        	window.location.href = "./officialList.go";
        }
    });

    $('.officialWriteTimeBtn:not([disabled])').click(function() {
    	selectedId = $(this).attr('id');
        // 모든 버튼의 배경색을 하늘색으로 초기화
        $('.officialWriteTimeBtn:not([disabled])').not(this).css('background-color', 'skyblue');

        // 클릭된 버튼의 배경색을 검정색으로 변경
        $(this).css('background-color', 'black');
        officialWriteTime = $(this).attr('id');
       	// console.log(officialWriteTime);
    });
    function disabledButton(){
        var nowHours = currentDate.getHours();
        var nowDate = currentDate.getFullYear() + "-" + (currentDate.getMonth() + 1).toString().padStart(2, '0') + "-" + currentDate.getDate().toString().padStart(2, '0');
    	console.log(nowDate);
        if($('#officialWriteDate').val() == nowDate){
	        if(nowHours > 0){
	            $('.officialWriteTimeBtn').each(function() {
	                if($(this).attr('id') <= nowHours){
	                    $(this).prop('disabled', true);
	                    $(this).css('background-color','gray');
	                }
	            });
	        }
        }
    }
	function showList(list){
		console.log(list);
		var content = '';
		for(item of list){
			content +=
				'<tr class="officialCourtListTr">'
				+'<td class="officialCourtListTd">'+item.courtIdx+'</td>'
				+'<td class="officialCourtListTd">'+item.courtName+'</td>'
				+'<td class="officialCourtListTd">'+item.courtAddress.split(' ')[1]+'</td>'
				+'</tr>';
		}
		$('#list').html(content);
	}
	
    $(document).ready(function() {
        // officialWriteDate input 요소에 datepicker 연결
        $('#officialWriteDate').datepicker({
            format: 'yyyy-mm-dd', // 날짜 형식 설정
            autoclose: true, // 날짜 선택 후 자동으로 닫힘
            todayHighlight: true, // 오늘 날짜 강조 표시
            startDate: 'today', // 오늘 이후의 날짜만 선택 가능
        });
		disabledButton();
        

    });
	    
    $('#courtDetailDate').change(function() {
        $('.courtDetailTimeBtn').css('background-color', 'skyblue');
        
    	$('.courtDetailTimeBtn').each(function() {
    		$(this).prop('disabled', false);
        });        
    });
       
    
</script>

</html>