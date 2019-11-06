<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="member.db.*" %>
<%
	List memberlist = (List)session.getAttribute("memberlist");
%>
<!DOCTYPE html>
<html>
<head>
<style>
      ul {
         width:400px;
         background-color: #FFDAB9;
         list-style-type: none;
         margin: 0;
         padding: 20;
         overflow: hidden;
      }
      li { float: left; width:200px; height:30px;}
      li a {
         display: block;
         background-color: #FFDAB9;
         color: #000000;
         padding: 8px;
         text-decoration: none;
         text-align: center;
         font-weight: bold;
      }
      li a:hover {
         background-color: #CD853F;
         color: white;
      }   
</style>
</head>
<body>
<center>
<h1>관리자 페이지</h1>
   <ul>
      <li><a href="./admin_meminfo.jsp">회원관리</a></li>
      <li><a href="../board/admin_boardinfo.jsp">게시판 관리</a></li>
   </ul>
   
   <table border='1' >
   <form action="./admin_del.me" method="post">
   <tr align="center">
   <td>아이디</td> <td>비밀번호</td> <td>닉네임</td> <td>이름</td> <td>생일</td> <td>이메일</td>
   </tr>
   <tr>
   <%
   	System.out.println(memberlist.size());
	for(int i=0;i<memberlist.size();i++){ 
	MemberBean member=(MemberBean)memberlist.get(i);
	%>
   <td><%=member.getME_ID() %></td><td><%=member.getME_PW() %></td>
   <td><%=member.getME_NICKNAME() %></td><td><%=member.getME_NAME() %></td>
   <td><%=member.getME_IDNUM1() %></td><td><%=member.getME_EMAIL() %></td>
   </tr>
   <%} %>
   <tr align="center">
   <td><input type="text" name="name"></td>
   <td colspan="4"><input type="submit" value="삭제"></td></tr>
   </form>
   </center>
<!--  table border=1 width=300>
   <tr align=center>
      <td colspan=2>회원 목록</td>
   </tr>
   <%--
   for(int i=0;i<memberlist.size();i++){ 
   MemberBean member=(MemberBean)memberlist.get(i);
   %>
   <tr align=center>
      <td>
         <a href="MemberViewAction.me?id=<%=member.getMEMBER_ID() %>">
            <%=member.getMEMBER_ID() %>
         </a>
      </td>
      <td>
      <a href="MemberDeleteAction.me?id=<%=member.getMEMBER_ID() %>">삭제</a>
      </td>
   </tr>
   <%} --%>
   
   <tr align=center>
      <td colspan=2>
         <a href="./BoardList.bo">[게시판 이동]</a>
      </td>
   </tr>
</table>-->
</table>
</center>
</body>
</html>