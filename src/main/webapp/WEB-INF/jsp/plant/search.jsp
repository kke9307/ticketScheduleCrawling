<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>plant/search</title>
<meta charset="UTF-8">
<script src="../../resources/js/util.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(document).ready(function(){
	$("#submit").on("click",function(){
 		fnDoCallBackAjax('/plant/result',$("#url").val(),							
			function(data){	
				if(data.result == 'success'){
					$("#result").html(result);					
				}
			},function(err){	// AJAX 실패
				alert("데이터 로딩 오류");
			}
		);
	});
});
</script>
</head>
<body>
<form id="frm" method="post">
	<input type="text" name="url" ><a href="#" id="submit">검색</a>
	<div id="result"></div>
</form>
</body>
</html>