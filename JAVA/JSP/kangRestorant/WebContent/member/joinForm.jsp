<%@ page language="java" contentType="text/html; charset=utf-8"%>
<meta charset="utf-8">


<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta name="naver-site-verification"
	content="eb6d265137a3679afa2f5441eb089f3efaa91fc7" />



<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/common.css?v=20190704150001" />
<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocTemplate.css?v=20190704150001" />
<link type="text/css" rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocWeb.css?v=20190704150001" />

<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/btn_int.css?v=20190704150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/count.css?v=20190704150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/vim.css?v=20190704150001" />
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/cmt.css?v=20190704150001"
	media="screen, print" />
<link rel="stylesheet"
	href="http://img.lifestyler.co.kr/NewIMG/lifestyler2016/desktop/css/lifestyler_desktop.css?v=20190704150001"
	media="all" />

<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/newimg/tving/static/css/idt.css?v=20190704150001" />

<!--[if IE]>
        <script type="text/javascript">
            var newEls = ["header", "nav", "section", "footer", "aside", "figcaption", "figure", "article"];
            var len = newEls.length;
            for (i = 0; i < len; i++) {
                document.createElement(newEls[i]);
            }
        </script>
    <![endif]-->

<!-- 신규 GNB -->
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/js_new/jquery-1.7.2.min.js"
	charset="utf-8"></script>
<!--[if IE]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/lib/sockjs-0.3.2.min.js?v=20190704150001"></script>
    <![endif]-->

<!--[if IE]>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/person.js?v=20190704150001" charset="utf-8"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/content.js?v=20190704150001" charset="utf-8"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/tving.sns.js?v=20190704150001" charset="utf-8"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/following.js?v=20190704150001" charset="utf-8"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/comment.js?v=20190704150001" charset="utf-8"></script>
    <script type="text/javascript" src="http://img.lifestyler.co.kr/newimg/tving/static/js/module/reputation.js?v=20190704150001" charset="utf-8"></script>
    <![endif]-->

<script type="text/javascript"
	src="http://img.lifestyler.co.kr/newimg/tving/static/js/ui/common.js?v=20190704150001"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/newimg/tving/static/js/lib/jquery.easing.min.js?v=20190704150001"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/newimg/tving/static/js/lib/jquery.nicescroll.min.js?v=20190704150001"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/newimg/tving/static/js/lib/cjem.ui.scroll.js?v=20190704150001"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/newimg/tving/static/js/lib/jquery.RollingBanner.js?v=20190704150001"
	charset="utf-8"></script>

<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/lifestyler2016/mobile/js/life.ui.useragent.js?v=20190704150001"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/interest_poc/js/poc.ui.slider.ty1-0.1.js?v=20190704150001"></script>

<!-- 티빙 헤더 변경 -->
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.gnb.min.js?v=20190704150001"></script>

<!-- PC 일경우 css -->
<link rel="stylesheet" type="text/css"
	href="http://img.lifestyler.co.kr/NewIMG/tving/desktop/css/header.css" />
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.logger.v2.min.js?dm002=U&dm004=U&dm005=U&dm007=C&dm012=PC WEB&dm014=TVN&v=20190704150001"></script>

<!--최준영 주석 처리 2016-08-24-->


<!-- 신규 GNB -->
<!-- 신규 플레이어 -->
<!--<script type="text/javascript" src="http://img.lifestyler.co.kr/NewIMG/vod/player_v5/cjem.ui.video-html5.min.js?v=20190704150001"></script>-->
<!-- CJPOT SMR 통계 로그 -->
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/vod/player_v8/cj.player.min.js?v=20190704150001"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/vod/player_v8/cj.player.extends.min.js?v=20190704150001"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/vod/player_v8/poc.player.v6.min.js?v=20190704150001"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/vod/player_v8/videoplayer.js?v=20190704150001"></script>
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/tving/tving.log.min.js?v=20190704150001"></script>
<!-- // CJPOT SMR 통계 로그 -->
<!-- // 신규 플레이어 // -->
<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/interest_poc/js/cjem.poc.js?v=20190704150001"></script>

<script
	src="http://img.lifestyler.co.kr/NewIMG/js_new/jquery.imageResize.js"
	type="text/javascript"></script>
<script
	src="http://img.lifestyler.co.kr/NewIMG/js_new/jquery.imageviewer-v1.js"
	type="text/javascript"></script>
<script
	src="/Content/script/program/template.common.js?v=20190704150001"
	type="text/javascript"></script>



<title>신서유기 외전 - 강식당2 | 미리보기</title>

<meta property="og:type" content="website" />
<meta property="og:url"
	content="http://program.tving.com/tvn/kangskitchen/3/Board/List" />
<meta property="og:site_name" content="tvN" />

<meta property="og:title" content="신서유기 외전 - 강식당2 | 미리보기" />
<meta property="og:description"
	content="‘화랑도 반한 맛’으로 돌아왔다!
셰프가 된 요괴들의 리얼 장사 프로젝트!  신서유기 외전 - 강식당2 의 미리보기 메뉴 " />
<meta name="twitter:card" content="summary" />
<meta name="twitter:title" content="신서유기 외전 - 강식당2 | 미리보기" />
<meta name="twitter:description"
	content="‘화랑도 반한 맛’으로 돌아왔다!
셰프가 된 요괴들의 리얼 장사 프로젝트!  신서유기 외전 - 강식당2 의 미리보기 메뉴 " />
<meta property="og:image"
	content="http://img.lifestyler.co.kr/uploads/program/1/1577/banner/f132031554156929049(0).jpg" />
<meta name="twitter:image"
	content="http://img.lifestyler.co.kr/uploads/program/1/1577/banner/f132031554156929049(0).jpg" />

<meta name="title" content="신서유기 외전 - 강식당2 | 미리보기" />

<meta name="description"
	content="‘화랑도 반한 맛’으로 돌아왔다!
셰프가 된 요괴들의 리얼 장사 프로젝트!  신서유기 외전 - 강식당2 의 미리보기 메뉴 " />

<meta name="keywords" content="신서유기 외전 - 강식당2, 강식당,강호동,이수근,은지원,안재현,송민호" />
<meta name="robots" content="index, follow" />
<link rel="image_src"
	href="http://img.lifestyler.co.kr/uploads/program/1/1577/banner/f132031554156929049(0).jpg" />

<script src="/Content/script/program/template.sub.js?v=20190704150000"
	type="text/javascript"></script>


<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#season")
								.ready(
										function() {
											$("#season")
													.append(
															"<option value='http://program.tving.com/Program/1254'>신서유기</option><option value='http://program.tving.com/Program/1350'>신서유기2</option><option value='http://program.tving.com/Program/1451'>신서유기3</option><option value='http://program.tving.com/Program/1505'>신서유기4</option><option value='http://program.tving.com/Program/1560'>신서유기 외전 - 꽃보다 청춘 위...</option><option value='http://program.tving.com/Program/1577'>신서유기 외전 - 강식당2</option><option value='http://program.tving.com/Program/1805'>신서유기5</option><option value='http://program.tving.com/Program/1832'>신서유기6</option>");
											if ($("#season option").length > 1) {
												$("#season option:eq(0)").html(
														"관련 프로그램");
											}
										});
						$("#btnSeasonMove").click(function() {
							$("#season option:selected").each(function() {
								if (jQuery.trim($(this).val()) != "") {
									moveURL($(this).val());
								}
							});
						});
						onLoadUpdateData(
								"1577",
								"http://img.lifestyler.co.kr/NewIMG/interest_poc/images/common/bg/tvn/update_226x146_noimg.jpg");
						onLoadInterestSearchSub(
								"contents",
								"",
								"http://img.lifestyler.co.kr/NewIMG/interest_poc/images/common/bg/tvn/interestme_106x106_noimg.jpg");

					});
</script>



<script type="text/javascript">
	$(function() {
		tvingGnb.Util.delayLoad(500, function() {
			try {
				lifeuisliderTy1.bind($('.jsLifeSlider'));
				onStartPage();
			} catch (e) {
			}
		});

	});

	function goLogin() {
		tvingGnb.Action.moveLogin.Pc();
	}
	function site_login() {
		//iGnbLink.Header.Login();
		tvingGnb.Action.moveLogin.Pc();
	}
	function gaqEventTracking(channel, eventtype, title) {
		try {
			_gaq.push([ '_trackEvent', channel, eventtype, title ]);
		} catch (e) {
		}
	}
</script>

<!-- LOGGER // -->
<script type="text/javascript">
	__LOGGER_TPKCP_CHANNEL = "tvN";
	__LOGGER_TPKCP_PROGRAM = "신서유기 외전 - 강식당2";
	__LOGGER_TPKCP_MENU = "미리보기";

	_TRK_CP = __LOGGER_TPKCP_CHANNEL + "/" + __LOGGER_TPKCP_PROGRAM + "/"
			+ __LOGGER_TPKCP_MENU + "/" + __LOGGER_TPKCP_CONTENTS;
	var xTrk = "";
</script>

<script type="text/javascript"
	src="http://img.lifestyler.co.kr/NewIMG/interest_poc/js/lifestyler_logger.js?v=20190704150001"></script>
<!-- // LOGGER -->
<script language="javascript">
	function validate() {
		var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
		var emailcheck = /^[a-zA-Z0-9]([-_.]?[a-zA-Z0-9])*@[0-9a-zA-Z]*.[0-9a-zA-Z]{2,3}$/i;

		var id = document.getElementById("ME_ID");
		var id1 = document.getElementById("ME_NICKNAME");
		var pw1 = document.getElementById("ME_PW");
		var pw2 = document.getElementById("ME_PWCHECK");
		var name = document.getElementById("ME_NAME");
		var email = document.getElementById("ME_EMAIL");
		var num1 = document.getElementById("ME_IDNUM1");
		var num2 = document.getElementById("ME_IDNUM2");

		var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
		var arrNum2 = new Array();

		if (re.test(id.value)) {
		} else {
			alert("아이디를 다시 입력하세요.");
			id.value = "";
			id.focus();
			return false;
		}

		if (re.test(pw1.value)) {
		} else {
			alert("비밀번호를 다시 입력하세요.");
			pw1.value = "";
			pw1.focus();
			return false;
		}

		if (pw1.value != pw2.value) {
			alert("비밀번호가 다릅니다.");
			pw2.value = "";
			pw2.focus();
			return false;
		}

		if (name.value == "") {
			alert("이름을 입력해주세요.");
			name.focus();
			return false;
		}

		if (emailcheck.test(email.value)) {
		} else {
			alert("이메일 형식이 다릅니다.");
			email.value = "";
			email.focus();
			return false;
		}

		for (var i = 0; i < num1.value.length; i++) {
			arrNum1[i] = num1.value.charAt(i);
		} // 주민번호 앞자리를 배열에 순서대로 담는다.

		for (var i = 0; i < num2.value.length; i++) {
			arrNum2[i] = num2.value.charAt(i);
		} // 주민번호 뒷자리를 배열에 순서대로 담는다.

		var tempSum = 0;

		for (var i = 0; i < num1.value.length; i++) {
			tempSum += arrNum1[i] * (2 + i);
		} // 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함

		for (var i = 0; i < num2.value.length - 1; i++) {
			if (i >= 2) {
				tempSum += arrNum2[i] * i;
			} else {
				tempSum += arrNum2[i] * (8 + i);
			}
		} // 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함

		if ((11 - (tempSum % 11)) % 10 != arrNum2[6]) {
			alert("올바른 주민번호가 아닙니다.");
			num1.value = "";
			num2.value = "";
			num1.focus();
			return false;
		} else {

			// ------------ 생일 자동 등록 -----------

			if (arrNum2[0] == 1 || arrNum2[0] == 2) {
				var y = parseInt(num1.value.substring(0, 2));
				var m = parseInt(num1.value.substring(2, 4));
				var d = parseInt(num1.value.substring(4, 6));
				join.year.value = 1900 + y;
				join.month.value = m;
				join.day.value = d;
			} else if (arrNum2[0] == 3 || arrNum2[0] == 4) {
				var y = parseInt(num1.value.substring(0, 2));
				var m = parseInt(num1.value.substring(2, 4));
				var d = parseInt(num1.value.substring(4, 6));
				join.year.value == 2000 + y;
				join.month.value = m;
				join.day.value = d;
			}
		}
		if (re.test(id1.value)) {
		} else {
			alert("닉네임을 다시 입력하세요.");
			id.value = "";
			id.focus();
			return false;
		}

	}

	function id_check() {
		window.name = "id1";
		window.open("/kangRestorant/member/id_check.jsp", "id2",
				"width=500, height=300, realsizable=no,scrollbars=no");
	}
	function inputIdChk() {
		document.join.idDuplication.value = "idUncheck";
	}
</script>
</head>


<body>
<head>
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
						<li><a
							href="./ProIntro.ma"
							target="_top"><span class="depth1-item">프로그램 소개<em></em></span></a></li>
						<li><a
							href="./ActorIntro.ma"
							target="_top"><span class="depth1-item">출연진 소개<em></em></span></a></li>
						<li><a
							href="./PicList.pi"
							target="_top"><span class="depth1-item">사진첩<em></em></span></a></li>
						<li><a
							href="./BoardList.bo"
							target="_top"><span class="depth1-item">시청자 게시판<em></em></span></a></li>
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
	<div class="header_tving_nav_bg" style="height: 162px;"></div>
</div>


<!-- //160216 수정 - 제휴 브랜드별 헤더 문구 및 로고 추가 -->
</div>
</div>
<title>장기 미이용 회원 휴면 해제 안내 | CJ ONE</title>
<meta name="Description"
	content="CJ ONE 이란 문화, 외식, 쇼핑, 엔터테인먼트 등 CJ의 30여개 라이프스타일 브랜드에서 사용하실 수 있는 통합멤버십카드입니다. CJ ONE은 한 장의 카드로 최대 10% 포인트 적립 , 최대 10% 할인,  그리고 다양한 문화 공연헤택을 한번에 즐기실 수 있으며,  ONE PICK(원픽), ONE BOX(원박스), ONE TICKET(원티켓) 등 추첨이벤트에 참여하실 수 있습니다." />
<meta http-equiv="X-UA-Compatible" content="IE=edge ,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=yes">
<meta name="format-detection" content="telephone=no" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Pragma" content="no-cache" />

<link rel="shortcut icon" href="/cjmweb/images/ico/favicon.ico"
	type="images/x-ico" />
<link rel="alternate"
	href="https://m.cjone.com:8443/cjmmobile/member/meberjoinstep1.do" />
<script type="text/javascript">
	var contextPath = '/cjmweb';
</script>
<script src="/cjmweb/js/jquery-1.11.3.min.js"></script>
<script src="/cjmweb/js/common.js"></script>
<script src="/cjmweb/js/form.validate.js"></script>


<link rel="stylesheet" href="/cjmweb/css/base.css">
<link rel='stylesheet' href='/cjmweb/css/participate.css'>




<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');
	ga('create', 'UA-17703059-2', 'auto');
	ga('send', 'pageview');
</script>






<script type="text/javascript">
	var digitalData = {
		page : {
			pageInfo : {
				pageName : "[P]회원가입^본인인증^휴면회원",
				siteType : "P",
				LayerPageName : "",
				searchKeywords : "",
				searchResult_account : "",
				searchType : ""
			}
		},
		user : {
			loginStatus : "logged out",
			custID : "",
			level : ""
		},
		shop : {
			location : "",
			brand : "",
			name : ""
		},
		consult : {
			type : ""
		},
		myshop : {
			name : "",
			brand : ""
		},
		click : {
			track : ""
		},
		order : {
			productName : "",
			payment_method : "",
			ordertype : "",
			auto_charging_basis_amount : "",
			auto_charging_date : "",
			auto_charging_price : "",
			cancel_amount : "",
			price : ""
		}
	};
</script>
<script
	src="//assets.adobedtm.com/81654681a53723e7e24e9d28bcbbae479c047b65/satelliteLib-e1b7fc64ff48523381d135a16bae0d60c92eebf0.js"></script>

</head>

<!--skip navigation-->
<div class="skipNavi"></div>
<!--//skip navigation-->
<div id="bodyWrap">

	<!--header-->
</div>
<form name="join" action="./MemberJoinAction.me" method="post"
	onsubmit="return validate();">
	<center>


		<table class="table table-striped" width="800">
			<tr height="40">

				<center>
					<h3 class="large">회원가입</h3>
				</center>

			</tr>
		</table>
		<table width="700" height="600" cellpadding="0"
			style="border: 2 solid black; border-collapse: collapse; font-size: 9pt;"
			border="2">
			<tr>

				<td width="5%" align="center">*</td>
				<td width="15%">회원 ID</td>
				<td><input type="text" name="ME_ID" id="ME_ID">&nbsp; <input
					type="button" value="중복확인" OnClick="id_check()"> <input
					type="hidden" name="idDuplication" value="idUncheck"></td>
			</tr>

			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">비밀번호</td>

				<td><input type="password" name="ME_PW" id="ME_PW" /></td>
			</tr>
			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>

			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">비밀번호 확인</td>

				<td><input type="password" name="ME_PWCHECK" id="ME_PWCHECK" /></td>
			</tr>
			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">이름</td>

				<td><input type="text" name="ME_NAME" id="ME_NAME" /></td>
			</tr>

			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">이메일 주소</td>
				<td><input type="text" name="ME_EMAIL" id="ME_EMAIL" size=30 /></td>
			</tr>
			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">주민등록번호</td>
				<td><input type="text" name="ME_IDNUM1" id="ME_IDNUM1"
					size="10" maxlength="6">-</input> <input type="password"
					name="ME_IDNUM2" id="ME_IDNUM2" size="10" maxlength="7">예)
					123456-1234567</input>
			</tr>
			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td width="5%" align="center">*</td>
				<td width="15%">생일</td>
				<td><input type="text" name="year" id="year" size="7"></input>년
					<select name="month" id="month">
						<OPTION>1</OPTION>
						<OPTION>2</OPTION>
						<OPTION>3</OPTION>
						<OPTION>4</OPTION>
						<OPTION>5</OPTION>
						<OPTION>6</OPTION>
						<OPTION>7</OPTION>
						<OPTION>8</OPTION>
						<OPTION>9</OPTION>
						<OPTION>10</OPTION>
						<OPTION>11</OPTION>
						<OPTION>12</OPTION>
				</SELECT>월 <select name="day" id="day">
						<OPTION>1</OPTION>
						<OPTION>2</OPTION>
						<OPTION>3</OPTION>
						<OPTION>4</OPTION>
						<OPTION>5</OPTION>
						<OPTION>6</OPTION>
						<OPTION>7</OPTION>
						<OPTION>8</OPTION>
						<OPTION>9</OPTION>
						<OPTION>10</OPTION>
						<OPTION>11</OPTION>
						<OPTION>12</OPTION>
						<OPTION>13</OPTION>
						<OPTION>14</OPTION>
						<OPTION>15</OPTION>
						<OPTION>16</OPTION>
						<OPTION>17</OPTION>
						<OPTION>18</OPTION>
						<OPTION>19</OPTION>
						<OPTION>20</OPTION>
						<OPTION>21</OPTION>
						<OPTION>22</OPTION>
						<OPTION>23</OPTION>
						<OPTION>24</OPTION>
						<OPTION>25</OPTION>
						<OPTION>26</OPTION>
						<OPTION>27</OPTION>
						<OPTION>28</OPTION>
						<OPTION>29</OPTION>
						<OPTION>30</OPTION>
						<OPTION>31</OPTION>
				</select>일</td>

			</tr>

			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>

				<td width="5%" align="center">*</td>
				<td width="15%">닉네임 ID</td>

				<td><input type="text" name="ME_NICKNAME" id="ME_NICKNAME" />&nbsp;</td>
			</tr>

			<tr height="7">
				<td colspan="3"><hr /></td>
			</tr>
			<tr>
				<td colspan="2" align=center>
				<td><input type="submit" value="회원가입">&nbsp;&nbsp; <input
					type="reset" value="다시작성"></td>
				</td>
			</tr>
		</table>
	</center>
</form>
</body>
</html>