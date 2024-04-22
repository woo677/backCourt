<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <link rel="stylesheet" href="./resources/css/common/reset.css" type="text/css">
    <link rel="stylesheet" href="./resources/css/poin_add/point_add.css" type="text/css">
    <title>환급</title>
</head>
<body>
	<h1>포인트 환급</h1>
    <form action="point_minus.do" method="post">
        <table>
            <tr>
                <th>환급 금액</th>
                <td>${point}원</td>
            </tr>
            <tr>
                <th>환급할 금액</th>
                    <td><input type="text" name="minus"></td>
                </tr>
            </table>
            <input type="button" name="button" value="환급">
        </form>
        <button>취소</button>
</body>
<script>
$('input[type="button"]').on('click',function(){
    //input에 있는 값을 가져온다
    var ch = $('input[name="minus"]').val();
    //지금 내가 클릭한 버튼의 텍스트를 가져온다
    var tex = $(this).text();

    if(ch!=''){
        alert('환급이 완료되었습니다');
            $('form').submit();
        }else{
            alert('환급이 실패 되었습니다.');
        }
});
$('button').on('click',function(){
    //지금 내가 클릭한 버튼의 텍스트를 가져온다
    var tex = $(this).text();
    //input에 있는 값을 가져온다
    console.log(tex);
    if(tex=='취소'){
        location.href="point.Go";
    }
});
</script>
</html>