<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addMember</title>
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>addMember</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/bootstrap.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/electro-master/css/style.css"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

</head>
<!-- 눈누 - 한산스네오 레귤러 폰트 -->
<style type="text/css">

	@font-face {
	    font-family: 'SpoqaHanSansNeo-Regular';
	    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SpoqaHanSansNeo-Regular.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	
	body {
		font-family: 'SpoqaHanSansNeo-Regular';
	}
	
	h2, label {
		color:black;
	}
	
	.btn:hover {
		color: black;
		
	}
	
	.btn:before {
		background: rgb(190,255,255);
	}
	
}
</style>
<body>
	<!-- banner st -->
	<c:import url="/WEB-INF/jsp/partial/banner.jsp"/>
	<!-- banner end -->
<div align="center">
	<div class="container">
	<br>
		<h2>Sign Up</h2>
		<br>
		<form name="AddMember" action="${pageContext.request.contextPath}/addMember" method="post">
		<div class="form-group"> 
            <label for="id">member ID</label>
            <input type="text" class="form-control" id="id" name="memberId" placeholder="ID입력 *" style="width: 30%">
        </div>
     	<div class="form-group"> 
            <label for="pw">member Pw</label>
            <input type="password" class="form-control" id="pw" name="memberPw" placeholder="PW입력 *" style="width: 30%">
        </div>
  		<div class="form-group"> 
            <label for="name">이름</label>
            <input type="text" class="form-control" id="name" name="memberName" placeholder="이름입력 *" style="width: 30%">
        </div>
      	<div class="form-group"> 
            <label for="age">나이</label>
            <input type="number" class="form-control" id="age" name="memberAge" placeholder="나이입력 *" style="width: 30%">
        </div>
      	<div class="form-group"> 
            <label for="gender">성별</label>
            <select style=" height: 30px; text-align:left;" name="gender" id="memberGender">
            <option value="남">남</option>
            <option value="여">여</option>
          	</select>
        </div>
        <div>
        <button type="button" class="btn btn-finish btn-primary" onclick="addMember()">회원가입</button>
        </div>
		</form>
		<br>
	
	</div>
	
</div>

	<!-- footer st -->
	<c:import url="/WEB-INF/jsp/partial/footer.jsp"/>
	<!-- footer end -->

	

		
		<!-- /FOOTER -->
		<!-- jQuery Plugins -->
		<script src="${pageContext.request.contextPath}/electro-master/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/electro-master/js/bootstrap.min.js"></script>
		<script src="${pageContext.request.contextPath}/electro-master/js/slick.min.js"></script>
		<script src="${pageContext.request.contextPath}/electro-master/js/nouislider.min.js"></script>
		<script src="${pageContext.request.contextPath}/electro-master/js/jquery.zoom.min.js"></script>
		<script src="${pageContext.request.contextPath}/electro-master/js/main.js"></script>

	<script>
    // 유효성 검사
    function addMember(){		
		if($("#id").val() == ""){
			alert('아이디를 입력해주세요.');
			return;
		} else if($("#pw").val() == ""){
			alert('비밀번호를 입력해주세요.');
			return;
		} else if($("#name").val() == ""){
			alert('이름을 입력해주세요.');
			return;
		} else if($("#age").val() == ""){
			alert('나이를 입력해주세요.');
			return;
		} else if($("#gender").val() == ""){
			alert('성별을 선택하세요.');
			return;
		} else {
			AddMember.submit();
		}
	};
</script>
</body>
</html>