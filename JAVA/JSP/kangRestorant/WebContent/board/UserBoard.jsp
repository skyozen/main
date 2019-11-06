<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="board.db.*"%>

<%
	List boardList = (List) session.getAttribute("boardlist");
	int listcount = ((Integer) session.getAttribute("listcount")).intValue();
	int nowpage = ((Integer) session.getAttribute("page")).intValue();
	int maxpage = ((Integer) session.getAttribute("maxpage")).intValue();
	int startpage = ((Integer) session.getAttribute("startpage")).intValue();
	int endpage = ((Integer) session.getAttribute("endpage")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="naver-site-verification"
	content="eb6d265137a3679afa2f5441eb089f3efaa91fc7" />



<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/common.css?v=20190703150001" />
<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocTemplate.css?v=20190703150001" />
<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocWeb.css?v=20190703150001" />

<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/btn_int.css?v=20190703150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/count.css?v=20190703150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/vim.css?v=20190703150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/cmt.css?v=20190703150001"
	media="screen, print" />
<link rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/lifestyler2016/desktop/css/lifestyler_desktop.css?v=20190703150001"
	media="all" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/NewIMG/tving/desktop/css/header.css" />
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.logger.v2.min.js?dm002=U&dm004=U&dm005=U&dm007=C&dm012=PC WEB&dm014=TVN&v=20190703150001"></script>
</head>
<body>
	<ul id="skip-tving-navigation">
		<li><a href="#header_tving">메인메뉴 바로가기</a></li>
		<li><a href="#container">본문 바로가기</a></li>
	</ul>
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K9Q8F7B"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>

	<!-- 2016년 04월 12일 tving 연계 CSS Style -->
	<style type="text/css">
.tving_20160412_sub_left_01 {
	padding: 0;
}

.tving_20160412_sub_left_01 .tving_20160412_inner {
	position: relative;
	width: 238px;
	margin: 0 1px;
}
</style>
	<!-- // 2016년 04월 12일 tving 연계 CSS Style -->

	<div id="wrap" class="tvn">
		<div id="header_tving">
			<div
				class="header_tving_wrap header_tving_program header_tving_program_small">
				<div class="header_tving_inner">
					<div class="header_tving_mini_nav">
						<div class="header_tving_mini_inner">
							<h2>
								<a href="http://www.tving.com" target="_blank">tving</a>
							</h2>
							<div class="header_tving_mini_left">
								<ul></ul>
							</div>
							<div class="header_tving_mini_right">
								<ul>
									<%
										String ME_ID = (String) session.getAttribute("ME_ID");
									%>
									<%
										if (session.getAttribute("ME_ID") == null) {
									%>
									<li><a href="MemberLogin.me">로그인</a></li>
									<li><a href="MemberJoin.me">회원가입</a></li>
									<%
										} else {
									%>
									<li><a><%=ME_ID%>님 안녕하세요.</a></li>
									<li><a href="MemberLogout.me">로그아웃</a></li>
									<%
										}
									%>
								</ul>
							</div>
						</div>
					</div>
					<div class="header_tving_ch_nav">
						<div class="header_tving_ch_heading">
							<h1>
								<a href="http://tvn.tving.com"><img
									src="http://img.lifestyler.co.kr/NewIMG/tving/static/images/gnb/635034452367707500.png"
									alt="tvN"></a>
							</h1>
							<h2>
								<a href="Main.ma"><img
									src="C:\Users\User\Pictures\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kangRestorant\icon\ho.png"
									alt="신서유기 외전 - 강식당2"></a>
							</h2>
						</div>
						<div class="header_tving_ch_gnb">
							<ul>
								<li><a href="ProIntro.ma" target="_top"><span
										class="depth1-item">프로그램 소개<em></em></span></a></li>
								<li><a href="ActorIntro.ma" target="_top"><span
										class="depth1-item">출연진 소개<em></em></span></a></li>
								<li><a
									href="./PicList.pi"
									target="_top"><span class="depth1-item">사진첩<em></em></span></a></li>
								<li><a href="./BoardList.bo" target="_top"><span
										class="depth1-item">시청자 게시판<em></em></span></a></li>
							</ul>
						</div>
					</div>
					<div class="header_tving_siblings_wrap">
						<a href="http://otvn.tving.com" class="header_tving_siblings_btn"><span>O
								tvN</span></a><a href="http://xtvn.tving.com/xtvn"
							class="header_tving_siblings_btn header_tving_siblings_btn2"><span>XtvN</span></a><a
							target="_blank" href="#" class="header_tving_replay_btn"><span>다시보기</span></a>
					</div>
				</div>
			</div>
			<div class="header_tving_nav_bg"></div>
		</div>
		<p class="ad_banner01"></p>

		<div id="container">

			<div id="content" class="cboth program_temp">
				<nav class="locationMap">
					<a href="/tvn/kangskitchen/0">홈</a> &gt; <strong>시청자 게시판</strong>

				</nav>


				<div class="contentInnerWrap">

					<section class="">


						<script type="text/javascript"
							src="/Content/script/program/board.view.js?v=20190703150000"></script>

						<h3 class="title">시청자 게시판</h3>

						<div class="boardList">
							<table width=570 border="0" cellpadding="0" cellspacing="0">
								<tr align="center" valign="middle">
									<td colspan="4"></td>
									<td align=right><font size=2>글 개수 : ${listcount }</font></td>
								</tr>

								<tr align="center" valign="middle" bordercolor="#333333">
									<td style="font-family: Tahoma; font-size: 8pt;" width="8%"
										height="26">
										<div align="center">번호</div>
									</td>
									<td style="font-family: Tahoma; font-size: 8pt;" width="50%">
										<div align="center">제목</div>
									</td>
									<td style="font-family: Tahoma; font-size: 8pt;" width="14%">
										<div align="center">작성자</div>
									</td>
									<td style="font-family: Tahoma; font-size: 8pt;" width="17%">
										<div align="center">날짜</div>
									</td>
									<td style="font-family: Tahoma; font-size: 8pt;" width="11%">
										<div align="center">조회수</div>
									</td>
								</tr>

								<%
									for (int i = 0; i < boardList.size(); i++) {
										BoardBean bl = (BoardBean) boardList.get(i);
								%>
								<tr align="center" valign="middle" bordercolor="#333333"
									onmouseover="this.style.backgroundColor='F8F8F8'"
									onmouseout="this.style.backgroundColor=''">
									<td height="23" style="font-family: Tahoma; font-size: 10pt;">
										<%=bl.getBO_NO()%>
									</td>

									<td style="font-family: Tahoma; font-size: 10pt;">
										<div align="left">
											▶ <a href="./BoardDetailAction.bo?num=<%=bl.getBO_NO()%>">
												<%=bl.getBO_SUBJECT()%>
											</a>
										</div>
									</td>

									<td style="font-family: Tahoma; font-size: 10pt;">
										<div align="center"><%=bl.getBO_ID()%></div>
									</td>
									<td style="font-family: Tahoma; font-size: 10pt;">
										<div align="center"><%=bl.getBO_DATE()%></div>
									</td>
									<td style="font-family: Tahoma; font-size: 10pt;">
										<div align="center"><%=bl.getBO_COUNT()%></div>
									</td>
								</tr>
								<%
									}
								%>
								<tr align=center height=20>
									<td colspan=7 style="font-family: Tahoma; font-size: 10pt;">
										<%
											if (nowpage <= 1) {
										%> [이전]&nbsp; <%
 	} else {
 %> <a href="./BoardList.bo?page=<%=nowpage - 1%>">[이전]</a>&nbsp; <%
 	}
 %> <%
 	for (int a = startpage; a <= endpage; a++) {
 		if (a == nowpage) {
 %> [<%=a%>] <%
 	} else {
 %> <a href="./BoardList.bo?page=<%=a%>">[<%=a%>]
									</a> &nbsp; <%
 	}
 %> <%
 	}
 %> <%
 	if (nowpage >= maxpage) {
 %> [다음] <%
 	} else {
 %> <a href="./BoardList.bo?page=<%=nowpage + 1%>">[다음]</a> <%
 	}
 %>
									</td>
								</tr>
								<tr align="right">
									<td colspan="5">
										<%
											if (ME_ID != null && ME_ID.equals("admin")) {
										%> <a href="./MemberListAction.me">[회원관리]</a> <%
 	}
 %> <a href="./BoardWrite.bo">[글쓰기]</a>
									</td>
								</tr>
							</table>
						</div>
					</section>
				</div>
				<!-- aside -->
				<aside>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br> <br> <br> <br> <br> <br>
				</aside>
				<!-- //aside -->

			</div>
		</div>
		<script>
			var preLoadScriptList = [
					"http://img.lifestyler.co.kr/newimg/tving/static/js/lib/jquery.nicescroll.min.js?v=20160720150000",
					"http://img.lifestyler.co.kr/newimg/tving/static/js/lib/cjem.ui.scroll.js?v=20160720150000",
					"http://img.lifestyler.co.kr/NewImg/tving/desktop/js/header.js" ];
			var afterLoadScriptList = [ "http://img.lifestyler.co.kr/NewImg/tving/desktop/js/TweenMax.min.js" ];
			var gnb_param_json = {
				bCode : "1",
				pCode : "1577",
				language : "5",
				channelMenuListUrl : "",
				menuInfo : "",
				preLoadScriptList : preLoadScriptList,
				afterLoadScriptList : afterLoadScriptList
			}
			var callback = function() {
			}
			tvingGnb.init.Pc(gnb_param_json, callback);
			</body>
			</html>
		