<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="./main/header.css" />
<link rel="stylesheet" type="text/css" href="./main/common.css" />
<link type="text/css" rel="stylesheet"
	href="common.css?v=20190702150001" />
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.logger.v2.min.js?dm002=U&dm004=U&dm005=U&dm007=C&dm012=PC WEB&dm014=TVN&v=20190702150001"></script>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="wrap" class="tvn">
		<div id="header_tving">
			<div
				class="header_tving_wrap header_tving_program header_tving_program_small">
				<div class="header_tving_inner">
					<div class="header_tving_mini_nav">
						<div class="header_tving_mini_inner">
							<h2>
								<a href="http://www.tving.com" target="blank">tving</a>
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
									<li><a href="MemberLogin.me">�α���</a></li>
									<li><a href="MemberJoin.me">ȸ������</a></li>
									<%
										} else {
									%>
									<li><a><%=ME_ID%>�� �ȳ��ϼ���.</a></li>
									<li><a href="MemberLogout.me">�α׾ƿ�</a></li>
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
								<a href="Main.ma"> <img
									src="C:\Users\User\Pictures\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kangRestorant\icon\ho.png"
									alt="�ż����� ���� - ���Ĵ�2"></a>
							</h2>
						</div>
						<div class="header_tving_ch_gnb">
							<script language="javascript">
								function Intro2() {
									bdfm.submit();
								}
							</script>
							<ul>
								<li><a href="./ProIntro.ma" target="_top"> <span
										class="depth1-item">���α׷� �Ұ�<em></em></span></a></li>
								<li><a href="./ActorIntro.ma" target="_top"> <span
										class="depth1-item">�⿬�� �Ұ�<em></em></span></a></li>
								<li><a
									href="./PicList.pi"
									target="_top"> <span class="depth1-item">����ø<em></em></span></a></li>
								<li><a href="./BoardList.bo" target="_top"> <span
										class="depth1-item">��û�� �Խ���<em></em></span></a></li>
							</ul>
						</div>
					</div>
					<div class="header_tving_siblings_wrap">
						<a href="http://otvn.tving.com" class="header_tving_siblings_btn"><span>O
								tvN</span></a> <a href="http://xtvn.tving.com/xtvn"
							class="header_tving_siblings_btn header_tving_siblings_btn2"><span>XtvN</span></a>
						<a target="_blank" href="#" class="header_tving_replay_btn"><span>�ٽú���</span></a>
					</div>
				</div>
			</div>
			<div class="header_tving_nav_bg" style="height: 162px;"></div>
		</div>
	</div>
	<!---------------------->
	<!--------- ���� top �޴� �Ʒ����� ����------>
	<!---------------------->
	<%
		if (request.getAttribute("act_path") == null) {

		} else {
	%>
	<div id="container">

		<div id="content" class="cboth program_temp">
			<nav class="locationMap">
				<a href="/tvn/kangskitchen/0">Ȩ</a> &gt; <strong>�⿬�� �Ұ�</strong>
			</nav>
			<%String act_path="";%>
            <%act_path=(String)request.getAttribute("act_path") ;%>
            <%if(act_path.equals(null)){ %>
            <a>��ϵ� �̹����� �����ϴ�.</a>
            <form action="ActorIntroFileUpload.ma" method="post" enctype="multipart/form-data">
            <input name="act_pic" type="file"/> <input type="submit" value="���" >
			</form>
      
            <%}%>
            <%
            	if(ME_ID.equals("admin")){
            %>
            <form action="ActorIntroFileUpload.ma" method="post" enctype="multipart/form-data">
            <input name="act_pic" type="file"/> <input type="submit" value="���" >
			</form>
			
            <img src="<%=act_path%>"/>
            <%} else{ %>
           <img src="<%=act_path%>"/>



            <div class="contentInnerWrap">


                <!-- ad banner02-->
                <p class="ad_banner02">

                </p>
                <!-- // ad banner02-->

            </div>

        </div>
    </div>
    <%}} %>
   </div>
	</div>
</body>
</html>