<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="member.db.*"%>
<%
	MemberBean member=(MemberBean)request.getAttribute("member");
%>

<html>
<head>
<title>ȸ������ �ý��� �����ڸ��(ȸ�� ���� ����)</title>
</head>
<body>
<center>
<table border=1 width=300>
	<tr align=center>
		<td>���̵� : </td>
		<td><%=member.getME_ID() %></td>
	</tr>
	<tr align=center>
		<td>��й�ȣ : </td>
		<td><%=member.getME_PW() %></td>
	</tr>
	<tr align=center>
		<td>�̸� : </td>
		<td><%=member.getME_NAME() %></td>
	</tr>
	<tr align=center>
		<td>�г��� : </td>
		<td><%=member.getME_NICKNAME() %></td>
	</tr>
	<tr align=center>
	</tr>
	<tr align=center>
		<td>�ֹι�ȣ ���ڸ� : </td>
		<td><%=member.getME_IDNUM1() %></td>
	</tr>
	<tr align=center>
		<td>�ֹι�ȣ ���ڸ� : </td>
		<td><%=member.getME_IDNUM2() %></td>
	</tr>
	<tr align=center>
		<td>�̸��� �ּ� : </td>
		<td><%=member.getME_EMAIL() %></td>
	</tr>
	<tr align=center>
		<td colspan=2>
			<a href="MemberListAction.me">����Ʈ�� ���ư���</a>
		</td>
	</tr>
</table>
</center>
</body>
</html>