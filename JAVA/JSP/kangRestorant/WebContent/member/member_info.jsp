<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="member.db.*"%>
<%
	MemberBean member=(MemberBean)request.getAttribute("member");
%>

<html>
<head>
<title>회원관리 시스템 관리자모드(회원 정보 보기)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center>
		<td>아이디 : </td>
		<td><%=member.getME_ID() %></td>
	</tr>
	<tr align=center>
		<td>비밀번호 : </td>
		<td><%=member.getME_PW() %></td>
	</tr>
	<tr align=center>
		<td>이름 : </td>
		<td><%=member.getME_NAME() %></td>
	</tr>
	<tr align=center>
		<td>닉네임 : </td>
		<td><%=member.getME_NICKNAME() %></td>
	</tr>
	<tr align=center>
	</tr>
	<tr align=center>
		<td>주민번호 앞자리 : </td>
		<td><%=member.getME_IDNUM1() %></td>
	</tr>
	<tr align=center>
		<td>주민번호 뒷자리 : </td>
		<td><%=member.getME_IDNUM2() %></td>
	</tr>
	<tr align=center>
		<td>이메일 주소 : </td>
		<td><%=member.getME_EMAIL() %></td>
	</tr>
	<tr align=center>
		<td colspan=2>
			<a href="MemberListAction.me">리스트로 돌아가기</a>
		</td>
	</tr>
</table>
</center>
</body>
</html>