<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="Picture.db.*" %>
    <%
	PicBean pic = (PicBean)request.getAttribute("Picdata");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="naver-site-verification" content="eb6d265137a3679afa2f5441eb089f3efaa91fc7" /> 


    
    <link type="text/css" rel="stylesheet" href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/common.css?v=20190703150001" />
    <link type="text/css" rel="stylesheet" href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocTemplate.css?v=20190703150001" />
    <link type="text/css" rel="stylesheet" href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/pocWeb.css?v=20190703150001" />
    
        <link rel="stylesheet" type="text/css" href="http://img.lifestyler.co.kr/newimg/tving/static/css/btn_int.css?v=20190703150001" />
        <link rel="stylesheet" type="text/css" href="http://img.lifestyler.co.kr/newimg/tving/static/css/count.css?v=20190703150001" />
        <link rel="stylesheet" type="text/css" href="http://img.lifestyler.co.kr/newimg/tving/static/css/vim.css?v=20190703150001" />        
        <link rel="stylesheet" type="text/css" href="http://img.lifestyler.co.kr/newimg/tving/static/css/cmt.css?v=20190703150001" media="screen, print" />
        <link rel="stylesheet" href="http://img.lifestyler.co.kr/NewIMG/lifestyler2016/desktop/css/lifestyler_desktop.css?v=20190703150001" media="all" />
        <link rel="stylesheet" type="text/css" href="http://img.lifestyler.co.kr/NewIMG/tving/desktop/css/header.css" />     
            <script type="text/javascript" src="http://img.lifestyler.co.kr/NewIMG/tving/tving.logger.v2.min.js?dm002=U&dm004=U&dm005=U&dm007=C&dm012=PC WEB&dm014=TVN&v=20190703150001"></script>
        </head>
<body><ul id="skip-tving-navigation"><li><a href="#header_tving">메인메뉴 바로가기</a></li><li><a href="#container">본문 바로가기</a></li></ul>
    
	<!-- 2016년 04월 12일 tving 연계 CSS Style -->	
	<style type="text/css">
		.tving_20160412_sub_left_01 { padding:0; }
		.tving_20160412_sub_left_01 .tving_20160412_inner { position:relative; width:238px; margin:0 1px; }
	</style>
	<!-- // 2016년 04월 12일 tving 연계 CSS Style -->	

<div id="wrap" class="tvn"><div id="header_tving">
<div class="header_tving_wrap header_tving_program header_tving_program_small">
<div class="header_tving_inner"><div class="header_tving_mini_nav">
<div class="header_tving_mini_inner"><h2><a href="http://www.tving.com" target="_blank">tving</a></h2><div class="header_tving_mini_left"><ul></ul></div>
<div class="header_tving_mini_right"><ul><li><a href="https://user.tving.com/pc/user/login.tving?csite=poc&amp;returnUrl=http%3A%2F%2Fprogram.tving.com%2Ftvn%2Fkangskitchen%2F6%2FBoard%2FView%3Fb_seq%3D13">로그인</a></li><li><a href="https://user.tving.com/pc/user/regist.tving">티빙 회원가입</a></li>
<li><a href="http://www.tving.com/pass/pass.do">이용권 구매</a></li><li><a id="universal_program" href="http://tvn.tving.com/tvn/Program">프로그램</a></li></ul></div></div></div>
<div class="header_tving_ch_nav"><div class="header_tving_ch_heading"><h1><a href="http://tvn.tving.com"><img src="http://img.lifestyler.co.kr/NewIMG/tving/static/images/gnb/635034452367707500.png" alt="tvN"></a></h1><h2><a href="http://program.tving.com/tvn/kangskitchen"><img src="C:\Users\User\Pictures\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kangRestorant\icon\ho.png" alt="신서유기 외전 - 강식당2"></a></h2></div><div class="header_tving_ch_gnb"><ul><li><a href="http://program.tving.com/tvn/kangskitchen/1/Contents/Html" target="_top"><span class="depth1-item">프로그램 소개<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/2/Contents/Html" target="_top"><span class="depth1-item">출연진 소개<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/3/Board/List" target="_top"><span class="depth1-item">미리보기<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/6/Board/List" target="_top"><span class="depth1-item">사진첩<em></em></span></a></li><li><a href="#" target=""><span class="depth1-item">동영상<em></em></span></a><div class="header_tving_ch_gnb_depth"><ul><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=1&amp;order=" target="_top">다시보기</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=2&amp;order=" target="_top">클립영상</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=3&amp;order=" target="_top">예고편</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=4&amp;order=" target="_top">스페셜</a></li></ul></div></li><li><a href="http://program.tving.com/tvn/kangskitchen/5/Board/List" target="_top"><span class="depth1-item">시청자 게시판<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/14/Vod/List" target="_top"><span class="depth1-item">시즌1 다시보기<em></em></span></a></li></ul></div></div><div class="header_tving_siblings_wrap"><a href="http://otvn.tving.com" class="header_tving_siblings_btn"><span>O tvN</span></a><a href="http://xtvn.tving.com/xtvn" class="header_tving_siblings_btn header_tving_siblings_btn2"><span>XtvN</span></a><a target="_blank" href="#" class="header_tving_replay_btn"><span>다시보기</span></a></div></div></div><div class="header_tving_nav_bg"></div></div>
    <p class="ad_banner01">

    </p>
    
    <div id="container">
        
        <div id="content" class="cboth program_temp">
            <nav class="locationMap">
                <a href="/tvn/kangskitchen/0">홈</a> &gt;
                <strong>사진첩</strong>
            </nav>


            <div class="contentInnerWrap">

                <section class="">


<!-- 공통 SNS 모듈 -->
<script type="text/javascript" src="http://img.lifestyler.co.kr/NewIMG/interest_poc/js/tving.sns.js?v=20190703150000"></script><script type="text/javascript" src="http://img.lifestyler.co.kr/NewIMG/interest_poc/js/kakao.min.js"></script>
<!-- // 공통 SNS 모듈 --> 

<!-- 통합 댓글 모듈 -->

<!-- //통합 댓글 모듈 -->

<!-- New 통합댓글 -->
<script type="text/javascript" src="http://img.lifestyler.co.kr/NewIMG/tving/comment.v1.min.js?v=20190703150000"></script>


<script type="text/javascript" src="/Content/script/program/board.view.js"></script>

<script type="text/javascript">
  
</script>

<h3 class="title">사진첩</h3>


<div class="ContentWrap">
    <p class="title_con"><%=pic.getPIC_SUBJECT()%></p>
    <div class="ContentInfo">
        <p class="info_write"><strong>강식당2</strong>
        <span class="date"><%=pic.getPIC_DATE()%></span></p>
        <p class="info_count"><span class="view"><%=pic.getPIC_COUNT()%></span><span class="comment">0</span></p>        
    </div>
                    
    <!--인터레스팅 버튼 -->
    <div class="area_int_sns"><div class="area_int_sns_m x_sns_area"> 
       <ul class="area_sns">  <li><a href="http://twitter.com/intent/tweet?text=%5B%EC%82%AC%EC%9E%A5%EB%8B%98%2C%20%EB%A7%89%20%EB%84%90%EB%B8%8C%EB%9F%AC%EB%9C%A8%EB%A6%AC%EC%A7%80%20%EB%A7%90%EC%95%84%EC%9A%94~%5D%20%EC%82%AC%EC%9E%A5%EB%8B%98%2C%20%EB%A7%89%20%EB%84%90%EB%B8%8C%EB%9F%AC%EB%9C%A8%EB%A6%AC%EC%A7%80%20%EB%A7%90%EC%95%84%EC%9A%94~&amp;url=http%3A%2F%2Fprogram.tving.com%2Ftvn%2Fkangskitchen%2F6%2FBoard%2FView%3Fb_seq%3D13" class="btn_twitter" target="_blank">Twitter</a>        </li>        <li><a href="javascript:snsJS.facebookPopup()" class="btn_facebook">Facebook</a></li>        <li class="fb_like">           <iframe src="https://www.facebook.com/v2.3/plugins/like.php?href=http%3A%2F%2Fprogram.tving.com%2Ftvn%2Fkangskitchen%2F6%2FBoard%2FView%3Fb_seq%3D13&amp;width&amp;layout=button_count&amp;action=like&amp;show_faces=false&amp;share=false&amp;height=80&amp;appId=167597706623778" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:90px; height:20px;" allowtransparency="true"></iframe>        </li>    </ul></div></div>
    <!--//인터레스팅 버튼 -->

    <div id="divBoardView" class="ContentView">
        <div class="area_con">
            <!-- 첨부파일 확인 -->

            <!-- // 첨부파일 확인 --> 

 <div style="text-align: center"><img width="640" height="621" 
 class="chimg_photo" id="image_032504465418155714" 
 style="border: currentcolor; cursor: pointer;" 
 alt="60344972_2017198918587173_4647490321800757248_n.jpg " 
 src="<%=pic.getPIC_FILE()%>"></div>
<div style="text-align: center"><br></div>
<div style="text-align: center"><%=pic.getPIC_CONTENT()%></div><br>
            <div style="clear:both"></div>
        </div>

        <!--담긴폴더-->
        <div id="divWriter"></div>
        <!--//담긴폴더-->
    </div>
	<%-- <div>
	<a href="./PictureAddAction.pi?num=<%=pic.getPIC_NO() %>">
			[글등록]</a>
	</div> --%>
    <div class="area_btn">
        
        <p class="btn_list">
            <a href="./PicList.pi" class="btn_list">목록</a>
        </p>
    </div>

    <!--연관컨텐츠-->
    <div class="relatedContent"></div>
    <!--//연관컨텐츠-->
        
    <!-- 댓글 영역 -->
    <div class="ContentComment" id="o"><div id="cmt"><div class="cmtBox" id="endviewDIV"><span class="cmtB">댓글</span> (<span class="cmtNum" id="remainCount">0</span>)<a href="#" class="cmtReload">새로고침</a></div><div class="cmtWrite"><form method="post" action=""><fieldset><legend>댓글달기</legend><p class="cmtWritePhoto"><strong><span class="pic"><img alt="" width="56" height="56" src="http://img.lifestyler.co.kr/comment/ver3/images/com/user.jpg"></span><span class="bg"></span></strong></p><div class="cmtWriteWrap" style="min-height:30px;"><div class="cmtWriteForm"><div class="cmtWriteMentions" style="width: 619px;"><div></div></div><div class="cmtWriteTextarea"><textarea id="_mainTextArea" title="댓글달기" name="" class="cssTextarea" data-message="댓글달기" style="height: 18px; overflow: hidden; resize: none; width: 511px;" placeholder="댓글달기"></textarea><input type="hidden" title="댓글달기" name="cmtMessageTemp" value=""><div class="cmtMediaInput" id="cmtMediaInput" style="display: none; width: 584px;"><p class="imgType" id="imgType"><img id="cmtImageThumbNail" alt="imageThumbNail" src="" data-src=""><input type="hidden" class="attachURL" name="attachURL" id="attachURL" value=""><input type="hidden" class="userID" name="userID" id="userID" value=""></p><a href="#" class="icoDel">등록이미지(영상)삭제</a></div></div></div><div class="adminMedia on"><label for="userfile">사진등록</label><input type="file" class="userfile" name="userfile" id="userfile"></div><span class="cmtButtonSubmit" style="height: 40px;"><button id="_registerButton" type="submit">등록</button></span></div><div><dl><dt></dt><dd>&nbsp;</dd></dl></div></fieldset></form><iframe id="uploadSpace" name="uploadSpace" width="0" height="0" src="about:blank" title="uploadSpace" style="display:none"></iframe></div><div id="commentData" style="display:none">1</div><div class="cmtList"><ul id="loop"></ul></div><div class="cmtMoreView" id="moreviewDIV" style="display:none"><a class="cmtBLink" href="#">댓글 더보기<span>(+<label id="nextCount">30</label>)</span></a></div></div><div id="TemplateCommentItem" class="cmtCont" style="display:none;"><div class="cmtCont"><p class="cmtContPhoto"><span class="pic"><!--<img src="" alt="">--></span><span class="bg"></span></p><div class="jQCmtCont"><p class="cmtContNick"><!--<a href="javascript:;">닉네임</a>--></p><p class="cmtContBody"><!--<span>본문내용</span>--></p><div class="cmtInfo"><div class="cmtContBtn cboth"><div class="cmtContBtnLeft"><div class="cmtContDate"><!--2018-10-24 19:49:54--></div><span class="cmtContBtnReply"><a href="#" class="cmtContBtnReplyLink">답글</a></span></div><div class="cmtContBtnRight"><!--<span class="cmtContBtnDelete"><a href="#" class="cmtContBtnModifyLink">수정</a></span><span class="cmtContBtnDelete"><a href="#" class="cmtContBtnDeleteLink">삭제</a></span>--></div></div></div></div></div></div></div>
    <!--// 댓글 영역 -->
</div>


                </section>

                <!-- ad banner02-->
                <p class="ad_banner02">

                </p>
                <!-- // ad banner02-->

            </div>
            <!-- aside -->
            <aside>
        
            </aside>
            <!-- //aside -->

        </div>
    </div>






            <script>
                var preLoadScriptList = ["http://img.lifestyler.co.kr/newimg/tving/static/js/lib/jquery.nicescroll.min.js?v=20160720150000", "http://img.lifestyler.co.kr/newimg/tving/static/js/lib/cjem.ui.scroll.js?v=20160720150000", "http://img.lifestyler.co.kr/NewImg/tving/desktop/js/header.js"];
                var afterLoadScriptList = ["http://img.lifestyler.co.kr/NewImg/tving/desktop/js/TweenMax.min.js"];
                var gnb_param_json = { bCode: "1", pCode: "1577", language: "5", channelMenuListUrl: "", menuInfo: "", preLoadScriptList: preLoadScriptList, afterLoadScriptList: afterLoadScriptList }
                var callback = function () { }
                tvingGnb.init.Pc(gnb_param_json, callback);

            



<div id="divImageViewer" style="position: absolute; background-color: white; cursor: pointer; z-index: 9999;"></div></body>
</html>