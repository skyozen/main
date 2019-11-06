<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="member.db.*"%>
<%
	MemberBean member=(MemberBean)request.getAttribute("member");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

</script>
<title>마이페이지</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div class="w3-center w3-large w3-margin-top">
				<h3>My Page</h3>
			</div>
			<div>
				<form id="myForm" action="../member/update_mypage.do" method="post">
					<p>
						<label>ID</label> 
						<input class="w3-input" type="text" id="id" name="id" value="<%=member.getME_ID() %>" > 
					</p>
					<p>
						<label>Email</label> 
											
						<input class="w3-input" type="text" id="email" name="email" value="<%=member.getME_EMAIL() %>" required> 
					</p>
					<p>
						<label>Nickname</label> 
											
						<input class="w3-input" type="text" id="email" name="email" value="<%=member.getME_NICKNAME() %>" required> 
					</p>
					<p>
						<label>Name</label> 
											
						<input class="w3-input" type="text" id="email" name="email" value="<%=member.getME_NAME() %>" required> 
					</p>
					<p>
						<label>IdNum</label> 
											
						<input class="w3-input" type="text" id="email" name="email" value="<%=member.getME_IDNUM1() %>" required> 
					</p>
				</form>
				<br />
				<form id="pwForm" action="./member/changepw.jsp" method="post">	
					<input type="hidden" name="id" >
					
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
					</p>
									<br />
				</form>
				<form id="wdForm" action="./withdrawal.me" method="post">
				<input type="hidden" name="id"  >
				<p>
						<label>Password</label>
						<input class="w3-input" id="ME_PW" name="ME_PW" type="password" required>
					</p>
					</p>
					<p class="w3-center">
						<input type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round" value="회원탈퇴">
					</p>
					</form>
			</div>
		</div>
	</div>
</body>
</html>