<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/portal/js/common/wl6.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.gstatic.com/recaptcha/api2/v1561357937155/recaptcha__ko.js"></script>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>티빙 | 언제 어디서나 티빙</title>

<link rel="stylesheet" href="/public_v5/css/font.css?v=13">

<link rel="stylesheet"
	href="https://image.tving.com/public_v4/portal/css/user_contents.css?v=13">

<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-K9Q8F7B"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/jquery/jquery-1.12.3.min.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/jquery/jquery.cookie.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/jquery/jquery.bxslider.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/jquery/jquery.scrollbar.min.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/momentjs/moment.min.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/momentjs/moment.lang.ko.js?v=13"></script>

<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.core-1.0.js?apiKey=1e7952d0917d6aab1f0293a063697610&amp;v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.media-1.0.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.operator-1.0.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.community-1.0.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.my-1.0.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/jarvis.infra-1.0.js?v=13"></script>

<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/common.util-1.0.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/json2/json2.js?v=13"></script>
<script type="text/javascript"
	src="https://image.tving.com/public_v4/static/lib/user-agent/ua_parser.js?v=13"></script>

<!--[if lt IE 9]>
<script type="text/javascript" src="https://image.tving.com/public_v4/static/lib/ie9/html5shiv.js?v=13"></script>
<script type="text/javascript" src="https://image.tving.com/public_v4/static/lib/ie9/selectivizr.js?v=13"></script>
<![endif]-->

<script type="text/javascript"
	src="https://image.tving.com/public_v4/portal/js/script.js?v=13"></script>

<!-- DataStory -->
<script type="text/javascript"
	src="https://image.tving.com/public_v4/portal/js/common/wl6.js"></script>

<script type="text/javascript">
	var service = {};

	var ctx = 'http://www.tving.com';
	var cacheVersion = '13';
	var imageDomain = 'http://image.tving.com';
	var imageOriginDomain = '';
	var publicDomain = 'http://www.tving.com';
	var serverDomain = 'http://www.tving.com';

	var user_yn = false;
	var user_adult_yn = '';
	var user_adult_confirm = '';

	var loginUrl = 'http://user.tving.com/pc/user/login.tving';
	var logoutUrl = 'http://user.tving.com/pc/user/doLogout.tving';

	var global = {
		user_no : '',
		user_id : '',
		user_nickname : '',
		user_fb_token : '',
		user_tw_token : '',
		media_code : '',
		body : null
	};

	service.constants = {
		"version" : "13",
		"user" : "http://user.tving.com",
		"userHttp" : "http://user.tving.com",
		"tvingHttp" : "http://www.tving.com",
		"image" : "http://image.tving.com",
		"api" : "http://api.tving.com",
		"imageHttps" : "https://image-origin.tving.com",
		"tvingHttps" : "https://www.tving.com",
		"userHttps" : "https://user.tving.com",
		"billHttps" : "https://bill.tving.com",
		"apiHttps" : "http://api.tving.com",
		"imageHttp" : "http://image.tving.com",
		"billHttp" : "http://bill.tving.com",
		"apiHttp" : "http://api.tving.com",
		"imageOrigin" : "//image.tving.com",
		"tving" : "http://www.tving.com",
		"bill" : "http://bill.tving.com"
	};
	document.domain = "tving.com";
</script>

<script type="text/javascript" src="/public_v4/infra/user/js/user.js"></script>

<!-- Google Analytics -->
<!-- Google Dimension -->
<script>
	var isApp = false;
	var oVisitor = {
		USER_AGENT : 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36',
		DEVICE : 'etc',
		OS : '',
		IP : '220.69.243.206'
	};
	var cjMbrshYn = '';
	var custTyp = '';
	var age = '';
	var sex = '';
	var currentHost = location.href;
	var resCjMbrshYn = 'U';
	var resUserId = $.cookie('_tving_token') == null ? '' : $
			.cookie('_tving_token');
	var resLoginYn = 'Y';
	var resLoginType = 'U'; // 회원 유형
	var resSite = 'TVING'; // 고정
	var resChannelType = ""; // 채널 유형
	var resChildSite = "TVING"; // TVING, TVN, OTVN ...
	var resCID = $.cookie('_ga') == null ? '' : $.cookie('_ga'); // CID 명(_ga 쿠키)
	var resCurrentRecurpayDt = $.cookie('CURRENT_RECURPAY_DATE') == null ? ''
			: $.cookie('CURRENT_RECURPAY_DATE');
	var resCRDyyyy = "";
	var resCRDmm = "";
	var resCRDdd = "";
	var resPayCnt = $.cookie('RECURPAY_COUNT') == null ? '' : $
			.cookie('RECURPAY_COUNT');
	var resLastRecurpayDt = $.cookie('LAST_RECURPAY_DATE') == null ? '' : $
			.cookie('LAST_RECURPAY_DATE');
	var resLRDyyyy = "";
	var resLRDmm = "";
	var resLRDdd = "";
	var resAge = "N";
	var resSex = "N";
	var resIsPaid = "";
	var resUserType = $.cookie('USER_PAY_TYPE') == null ? 'U' : $
			.cookie('USER_PAY_TYPE');

	if (custTyp == '10' || custTyp == '30' || custTyp == '40') {
		if (cjMbrshYn == 'Y') {
			resLoginType = 'CJ ONE';
		} else if (cjMbrshYn == 'N') {
			resLoginType = 'TVING';
		}
		// 40 : Test 계정
	} else if (custTyp == '91') {
		resLoginType = 'FACEBOOK'; // facebook
	} else if (custTyp == '92') {
		resLoginType = 'TWITTER'; // twitter
	}

	if (isApp) {
		resChannelType = 'APP';
		// TODO : TABLET, AOS TV 구분 필요
		/* if(oVisitor.OS == "android" || oVisitor.OS == "ios") {
			resChannelType = 'APP';
		}
		else if(oVisitor.OS == 'tablet'){
			resChannelType = 'TABLET';
		} 
		else if(oVisitor.OS == 'atv'){
			resChannelType = 'AOS TV';
		} */
	} else {
		if (currentHost.indexOf('/pc/') != -1) {
			resChannelType = 'PC WEB';
		} else if (currentHost.indexOf('/pc/') == -1) {
			resChannelType = 'MO WEB';
		}
	}

	if (resCID != "") {
		// _ga = GA1.2.958498282.1528764948;
		var cid = resCID.split(".");
		resCID = cid[2] + "." + cid[3]; // 고유사용자 식별값 + "." + 사용자가 웹사이트에처음 방문한 때의 타임스탬프
	}

	if (resCurrentRecurpayDt != null && resCurrentRecurpayDt != ""
			&& resCurrentRecurpayDt.length == 8) {
		resCRDyyyy = resCurrentRecurpayDt.substring(0, 4);
		resCRDmm = resCurrentRecurpayDt.substring(4, 6);
		resCRDdd = resCurrentRecurpayDt.substring(6, 8);
		resIsPaid = 'P'; // 유료 회원
	} else {
		resIsPaid = 'F'; // 무료 회원
	}

	if (resLastRecurpayDt != null && resLastRecurpayDt != ""
			&& resLastRecurpayDt.length == 8) {
		resLRDyyyy = resLastRecurpayDt.substring(0, 4);
		resLRDmm = resLastRecurpayDt.substring(4, 6);
		resLRDdd = resLastRecurpayDt.substring(6, 8);
	}

	if (age != null && age != "") {
		age = parseInt(moment().format('YYYY'))
				- parseInt(moment(age, 'YYYYMMDD').format('YYYY'));
		if (age >= 0 && age <= 19) {
			resAge = 'A';
		} else if (age >= 20 && age <= 29) {
			resAge = 'B';
		} else if (age >= 30 && age <= 39) {
			resAge = 'C';
		} else if (age >= 40 && age <= 49) {
			resAge = 'D';
		} else if (age >= 50 && age <= 59) {
			resAge = 'E';
		} else if (age >= 60) {
			resAge = 'F';
		} else {
			resAge = 'N';
		}
	}

	if (sex != null && sex != "") {
		if (sex == 'M') {
			resSex = 'A';
		} else if (sex == 'F') {
			resSex = 'B';
		} else {
			resSex = 'N';
		}
	}

	if (cjMbrshYn == 'Y') {
		resCjMbrshYn = 'O';
	} else if (cjMbrshYn == 'N') {
		resCjMbrshYn = 'X';
	} else {
		// 비로그인시
		resAge = "U";
		resSex = "C";
		resLoginYn = 'N'
		resIsPaid = 'U';
	}

	// GA DATA for GoogleTagmanager 
	dataLayer = [ {
		'dm001' : resUserId // 고객_고유번호(_tving_token)
		,
		'dm002' : resCjMbrshYn // 고객_통합회원여부(O / X / U : 비로그인)
		,
		'dm003' : resLoginYn // 고객_로그인여부(Y : 로그인 / N : 비로그인)
		,
		'dm004' : resLoginType // 고객_회원유형(CJ ONE / TVING / FACEBOOK / TWITTER / U)
		,
		'dm005' : resAge // 고객_연령(A:10대이하, B:20대, C:30대, D:40대, E:50대, F:60대이상, N:알수없음, U:비로그인)
		,
		'dm007' : resSex // 고객_성별(A:남자, B:여자, C:비로그인, N:알수없음)
		,
		'dm009' : resUserType // 고객_유형(A:티빙무제한,B:티빙무제한(임직원),C:무제한플러스,N:무료 사용자,U:비로그인) add 20181030
		,
		'dm011' : resSite // 사이트명(TVING으로 고정, 영문대문자 표기)
		,
		'dm012' : resChannelType // 채널 유형(PC WEB / MO WEB / APP / TABLET / AOS TV)
		,
		'dm013' : resIsPaid // 유무료_회원여부(P:유료, F:무료, U:비로그인)
		,
		'dm014' : resChildSite // 하위 사이트명(TVING / TVN / OGN …)
		,
		'dm015' : resCID // CID 명(515627205.1526369222 / …  _ga쿠키값)
		,
		'dm016' : resCRDyyyy // 현재 상품 구매일자 연도(yyyy)
		,
		'dm017' : resCRDmm // 현재 상품 구매일자 월(mm)
		,
		'dm018' : resCRDdd // 현재 상품 구매일자 일(dd)
		,
		'dm019' : resPayCnt // 최종 정기결제상품 결제차수
		,
		'dm020' : resLRDyyyy // 최종 상품 해지일자 연도(yyyy)
		,
		'dm021' : resLRDmm // 최종 상품 해지일자 월(mm)
		,
		'dm022' : resLRDdd
	// 최종 상품 해지일자 일(dd)
	} ];

	// GA DATA for APP
	var ga_data = {};
	ga_data.dimension1 = resUserId;
	ga_data.dimension2 = resCjMbrshYn;
	ga_data.dimension3 = resLoginYn;
	ga_data.dimension4 = resLoginType;
	ga_data.dimension5 = resAge;
	ga_data.dimension7 = resSex;
	ga_data.dimension9 = resUserType;
	ga_data.dimension11 = resSite;
	ga_data.dimension12 = resChannelType;
	ga_data.dimension13 = resIsPaid;
	ga_data.dimension14 = resChildSite;
	ga_data.dimension15 = resCID;
	ga_data.dimension16 = resCRDyyyy;
	ga_data.dimension17 = resCRDmm;
	ga_data.dimension18 = resCRDdd;
	ga_data.dimension19 = resPayCnt;
	ga_data.dimension20 = resLRDyyyy;
	ga_data.dimension21 = resLRDmm;
	ga_data.dimension22 = resLRDdd;
	//add 20181205 url 정보 확인
	ga_data.title = document.location.href;

	function WEB_PAGEVIEW() {
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

		ga('create', 'UA-118660069-1', 'auto');
		ga('set', 'userId', resUserId); //UserID 설정
		ga('set', 'dimension1', resUserId); //고객_고유번호
		ga('set', 'dimension2', resCjMbrshYn); //고객_통합회원여부
		ga('set', 'dimension3', resLoginYn); //고객_로그인여부
		ga('set', 'dimension4', resLoginType); //고객_회원유형
		ga('set', 'dimension5', resAge); //고객_연령
		ga('set', 'dimension7', resSex); //고객_성별
		ga('set', 'dimension9', resUserType); //고객_유형
		ga('set', 'dimension11', resSite); //사이트명
		ga('set', 'dimension12', resChannelType); //채널 유형
		ga('set', 'dimension13', resIsPaid); //유무료_회원여부
		ga('set', 'dimension14', resChildSite); //하위 사이트명
		ga('set', 'dimension15', resCID); //CID 명
		ga('set', 'dimension16', resCRDyyyy); // 현재 상품 구매일자 연도(yyyy) 
		ga('set', 'dimension17', resCRDmm); // 현재 상품 구매일자 월(mm)
		ga('set', 'dimension18', resCRDdd); // 현재 상품 구매일자 일(dd)
		ga('set', 'dimension19', resPayCnt); // 최종 정기결제상품 결제차수      
		ga('set', 'dimension20', resLRDyyyy); // 최종 상품 해지일자 연도(yyyy) 
		ga('set', 'dimension21', resLRDmm); // 최종 상품 해지일자 월(mm)
		ga('set', 'dimension22', resLRDdd); // 최종 상품 해지일자 일(dd)
	}

	var versionCompare = function(left, right) {
		if (typeof left + typeof right != 'stringstring')
			return false;

		var a = left.split('.'), b = right.split('.'), i = 0, len = Math.max(
				a.length, b.length);

		for (; i < len; i++) {
			if ((a[i] && !b[i] && parseInt(a[i]) > 0)
					|| (parseInt(a[i]) > parseInt(b[i]))) {
				return 1;
			} else if ((b[i] && !a[i] && parseInt(b[i]) > 0)
					|| (parseInt(a[i]) < parseInt(b[i]))) {
				return -1;
			}
		}

		return 0;
	}

	function SEND_GADATA_TO_APP() {
		if (isApp) {
			// TODO : 추후 상용적용 예정, ios 는 버전에 따라 호출구분. 5.4.5 이상이면 처리. add 20181031
			var resAppVersion = isNaN(parseFloat('')) ? '0' : '';
			if (oVisitor.OS == "android") {
				window.Android.GA_DATA(JSON.stringify(ga_data));
			} else if (oVisitor.OS == "ios"
					&& versionCompare(resAppVersion, '5.4.5') > 0) {
				//add 20181107 page load delay
				if (document.addEventListener) {
					// For all major browsers, except IE 8 and earlier
					document.addEventListener("ready", function() {
						window.location.href = "iOS://"
								+ JSON.stringify(ga_data);
					});
				} else {
					// For IE 8 and earlier versions
					window.attachEvent("onload", function() {
						window.location.href = "iOS://"
								+ JSON.stringify(ga_data);
					});
				}

				/*
				setTimeout(function() {
				    window.location = "iOS://" + JSON.stringify(ga_data);
				}, 3000);
				 */
			}
		}
	}

	function APP_PAGEVIEW() {
		ga_data.type = 'P' // 페이지뷰 : 'P', 이벤트 : 'E'
		SEND_GADATA_TO_APP();
	}

	// TODO : 추후 신영화님에게 전달받은 GA 이벤트 대상 항목 실행히 아래 function 실행하여 APP에 이벤트 전달
	function APP_EVENT() {
		ga_data.type = 'E' // 페이지뷰 : 'P', 이벤트 : 'E'
		// TODO : 빌링파트에서 아래 3개 파라미터확인 필요!!!
		ga_data.category = ''; // 카테고리명(전자상거래 이벤트일 경우 Ecommerce)
		ga_data.action = ''; // 액션명 (전자상거래 이벤트일 경우 해당 이벤트 단계명 ex) Click, Detail ...)
		ga_data.label = ''; // 라벨명
		SEND_GADATA_TO_APP()
	}
</script>
<!-- End Google Dimension -->
<script>
	if (isApp) {
		APP_PAGEVIEW();
	} else {
		WEB_PAGEVIEW();
	}
</script>
<!-- End Google Analytics -->

<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-K9Q8F7B');
</script>
<!-- End Google Tag Manager -->
<!-- Google reCaptcha -->
<script src="https://www.google.com/recaptcha/api.js" async="" defer=""></script>
</head>
<body>

	<div id="contents-wrap">
		<div class="sub-contents-wrap inner-wrap">
			<div class="title-group">
				<h3 class="large">로그인</h3>
			</div>

			<section class="membership-login-box">
				<div class="membership-login-form">
					<!-- 구글 리캡차 안내 메시지 -->
					<!-- <div>
					<strong style="color:#e40076">정보보호를 위해, 하단 "로봇이 아닙니다." 버튼을 클릭해 인증 과정을 완료 후 로그인해주세요.</strong>
				</div>
				<br/>  -->

					<nav class="login-tab cb select">
						<a href="" class="on">CJ ONE 아이디</a> <a href="">TVING 아이디</a>
					</nav>

					<div class="tab-contents-login" id="login01">
						<div class="login-pre" style="">
							<p class="small">
								CJ ENM의 채널/프로그램/라이프스타일러&nbsp;홈페이지 회원은<br>&nbsp;기존 아이디로
								로그인하시면 이전과 동일하게 이용이 가능합니다.<br>&nbsp;(CJ ONE, 페이스북, 트위터 외
								회원은 신규 가입해 주세요.)
							</p>
						</div>

						<!-- //select -->

						<form name="loginform" action="MemberLoginAction.me" method="post">
							<div class="login-form">
								<input type="text" name="ME_ID"> <input type="password"
									name="ME_PW"> <a href="javascript:loginform.submit()">로그인</a>
							</div>

							<!-- 구글리캡챠 -->
							<!-- <br/>
						<div class="g-recaptcha" data-sitekey="6LenxB4UAAAAAGB8BVmhKzzRKFB-E9SYpH9dbh2e"></div> -->

							<div class="login-lnk cb">
								<span class="fl"> <input type="checkbox" id="c"
									class="check-small"><label for="c"
									class="check-small-label">로그인 유지</label>
								</span>
								<div class="fr other">
									<a href="MemberJoin.me"><strong>회원가입</strong></a> <small>|</small>
									<a href="#">아이디</a> <a href="#">/ 비밀번호 찾기</a>
									<td colspan="2" align=center>
								</div>
							</div>
							<!-- <input type="hidden" name="userId">
                        <input type="hidden" name="password">
                        <input type="hidden" name="loginType">
                        <input type="hidden" name="autoLogin">
                        <input type="hidden" name="cjOneCookie">
                        <input type="hidden" name="kaptcha">
                        <input type="hidden" name="returnUrl" value="http://program.tving.com/tvn/kangskitchen/6/Board/View?b_seq=13">
                        <input type="hidden" name="csite"> -->
						</form>
						<div class="other-login cb">
							<p>Facebook 또는 Twitter 계정으로도 간편하게 이용이 가능합니다.</p>
							<div class="auth">
								<a href="#" class="fb"><span>페이스북 로그인</span></a> <a href="#"
									class="tw"><span>트위터 로그인</span></a>
								<!-- <a href="#" class="naver"><span>네이버 로그인</span></a>
							<a href="#" class="kakao"><span>카카오 로그인</span></a> -->
							</div>
							<!-- <div>
							<span id="naverTest" style="color:#fff">네이버 로그인</span>
							<span id="kakaoTest" style="color:#fff">카카오 로그인</span>
						</div> -->
						</div>
					</div>
					<div class="login-banner">
						<script language="javascript"
							src="https://adverweb.cjenm.com/js.mezzo/tving/tving_PC/tving_462x120?device_type=0"></script>
						<a
							href="http://adverweb.cjenm.com/click.mezzo/tving/tving_PC/tving_462x120?os=5&amp;device_type=0&amp;poc_type=&amp;ad_type=0&amp;cmp_no=2865&amp;ads_no=9026&amp;img_no=11843"
							target="_blank"><img
							src="http://flash.tooniland.com/ad_img/20190614/tchelintvingtv_login_462x120.jpg"
							width="462px" height="120px" border="0" alt=""></a>
					</div>

				</div>
			</section>

		</div>

	</div>
</body>
</html>