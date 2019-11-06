<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<%@ page import="board.db.*" %>
<%
	List boardList = (List) session.getAttribute("boardlist");
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
      <li><a href="./member/admin_meminfo.jsp">회원관리</a></li>
      <li><a href="./admin_boardinfo.jsp">게시판 관리</a></li>
   </ul>
   
   <table border='1' >
   <form action="./admin_del.bo" method="post">
   <tr align="center">
   <td>번호</td> <td>닉네임</td> <td>닉네임</td> <td>아이디</td> <td>제목</td>
    <td>내용</td><td>날짜</td><td>조회수</td><td>좋아요</td>
   </tr>
   <tr>
   <%
	for (int i = 0; i < boardList.size(); i++) {
		BoardBean bl = (BoardBean) boardList.get(i);
	%>
   <td><%=bl.getBO_NO() %></td><td><%=bl.getME_NICKNAME() %></td>
   <td><%=bl.getBO_ID() %></td><td><%=bl.getBO_SUBJECT() %></td>
   <td><%=bl.getBO_CONTENT() %></td><td><%=bl.getBO_DATE() %></td>
   <td><%=bl.getBO_COUNT() %></td><td><%=bl.getBO_LIKE() %></td>
   </tr>
   <%} %>
   <tr align="center">
   <td>삭제할 게시판 번호 선택</td>
   <td><input type="text" name="num"></td>
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