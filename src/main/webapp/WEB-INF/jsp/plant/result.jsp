<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>plant/search</title>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){
	$("#submit").on("click",function(){
		alert();
	}); 
});
</script>
</head>
<body>
<form action="/plant/search_proc" id="frm" method="post">
	<input type="text" name="homepage" >
	<a href="#" id="submit">검색</a>
</form>
</body>
</html>