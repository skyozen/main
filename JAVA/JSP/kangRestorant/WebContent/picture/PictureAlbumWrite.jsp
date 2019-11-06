<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="Picture.db.*" %>
<%@ page import="board.db.*" %>
<%@ page import="member.db.*" %>
<%
	String ME_ID=(String)session.getAttribute("ME_ID"); 
%>
<%
	String PIC_NO=(String)session.getAttribute("PIC_NO"); 
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
<script language="javascript">
	function addboard(){
		boardform.submit();
	}
	</script>
</head>
<body><ul id="skip-tving-navigation"><li><a href="#header_tving">메인메뉴 바로가기</a></li><li><a href="#container">본문 바로가기</a></li></ul><noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-K9Q8F7B" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    
	<!-- 2016년 04월 12일 tving 연계 CSS Style -->	
	<style type="text/css">
		.tving_20160412_sub_left_01 { padding:0; }
		.tving_20160412_sub_left_01 .tving_20160412_inner { position:relative; width:238px; margin:0 1px; }
	</style>
	<!-- // 2016년 04월 12일 tving 연계 CSS Style -->	

<div id="wrap" class="tvn"><div id="header_tving"><div class="header_tving_wrap header_tving_program header_tving_program_small">
<div class="header_tving_inner"><div class="header_tving_mini_nav"><div class="header_tving_mini_inner">
<h2><a href="http://www.tving.com" target="_blank">tving</a></h2><div class="header_tving_mini_left"><ul></ul></div>
<div class="header_tving_mini_right"><ul><li class="header_tving_mini_logout_box jqTvingMiniLogoutWrap">
<a href="javascript:void(0)">로그인</a>
<div class="header_tving_mini_logout_inner jqTvingMiniLogoutList"><ul>
<li><a href="http://www.tving.com/my">마이티빙</a></li>
<li><a href="">로그아웃</a></li>
</ul><span class="header_tving_mini_logout_arr_icon"></span></div></li>
<li><a href="http://www.tving.com/pass/pass.do">이용권 구매</a></li>
<li><a id="universal_program" href="http://tvn.tving.com/tvn/Program">프로그램</a></li>
</ul></div></div></div><div class="header_tving_ch_nav"><div class="header_tving_ch_heading">
<h1><a href="http://tvn.tving.com"><img src="http://img.lifestyler.co.kr/NewIMG/tving/static/images/gnb/635034452367707500.png" alt="tvN"></a></h1>
<h2><a href="http://program.tving.com/tvn/kangskitchen"><img src="C:\Users\User\Pictures\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\kangRestorant\icon\ho.png" alt="신서유기 외전 - 강식당2"></a></h2></div><div class="header_tving_ch_gnb"><ul><li><a href="http://program.tving.com/tvn/kangskitchen/1/Contents/Html" target="_top"><span class="depth1-item">프로그램 소개<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/2/Contents/Html" target="_top"><span class="depth1-item">출연진 소개<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/3/Board/List" target="_top"><span class="depth1-item">미리보기<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/6/Board/List" target="_top"><span class="depth1-item">사진첩<em></em></span></a></li><li class=""><a href="#" target=""><span class="depth1-item">동영상<em></em></span></a><div class="header_tving_ch_gnb_depth" style="opacity: 0; height: 0px;"><ul><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=1&amp;order=" target="_top">다시보기</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=2&amp;order=" target="_top">클립영상</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=3&amp;order=" target="_top">예고편</a></li><li><a href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=4&amp;order=" target="_top">스페셜</a></li></ul></div></li><li><a href="http://program.tving.com/tvn/kangskitchen/5/Board/List" target="_top"><span class="depth1-item">시청자 게시판<em></em></span></a></li><li><a href="http://program.tving.com/tvn/kangskitchen/14/Vod/List" target="_top"><span class="depth1-item">시즌1 다시보기<em></em></span></a></li></ul></div></div><div class="header_tving_siblings_wrap"><a href="http://otvn.tving.com" class="header_tving_siblings_btn"><span>O tvN</span></a><a href="http://xtvn.tving.com/xtvn" class="header_tving_siblings_btn header_tving_siblings_btn2"><span>XtvN</span></a><a target="_blank" href="#" class="header_tving_replay_btn"><span>다시보기</span></a></div></div></div><div class="header_tving_nav_bg" style="height: 162px;"></div></div>
    <p class="ad_banner01">

    </p>
    
    <div id="container">
        
        <div id="content" class="cboth program_temp">
            <nav class="locationMap">
                <a href="/tvn/kangskitchen/0">홈</a> &gt;
                <strong>시청자 게시판</strong>
            </nav>


            <div class="contentInnerWrap">

                <section class="">

<script type="text/javascript" src="http://www.mnet.com/include/js/badkeyword_min.js"></script>
<script type="text/javascript" src="/Content/cheditor/cheditor.js?v=5.09.0"></script>
<script type="text/javascript" src="/Content/script/program/board.write.js"></script>
<script type="text/javascript" src="/Content/script/common/jquery.filestyle.js"></script>

<h3 class="title">글쓰기 <em>사진첩게시판</em></h3>


<div class="boardWrite">
<form action="../PicAdd.pi" enctype="multipart/form-data" method="post" name="boardform">
<input id="target" name="target" type="hidden" value="/tvn/kangskitchen/5/Board/List?page=1"><input data-val="true" data-val-number="The field ProgramSeq must be a number." data-val-required="ProgramSeq 필드가 필요합니다." id="ProgramSeq" name="ProgramSeq" type="hidden" value="1577"><input data-val="true" data-val-number="The field MenuSeq must be a number." data-val-required="MenuSeq 필드가 필요합니다." id="MenuSeq" name="MenuSeq" type="hidden" value="5"><input data-val="true" data-val-number="The field BoardSeq must be a number." data-val-required="BoardSeq 필드가 필요합니다." id="BoardSeq" name="BoardSeq" type="hidden" value="0"><input data-val="true" data-val-number="The field RefBoardSeq must be a number." data-val-required="RefBoardSeq 필드가 필요합니다." id="RefBoardSeq" name="RefBoardSeq" type="hidden" value="0"><input id="RegisterType" name="RegisterType" type="hidden" value="">    <input type="hidden" name="filePath" id="filePath" value="">
<input type="hidden" name="ME_ID" value="<%=ME_ID %>"/>
<input type="hidden" name="PIC_NO" value="<%=PIC_NO %>"/>    
    <fieldset>
        <dl class="inputF">
            <dt><label for="Title">글제목</label></dt>
            <dd class="titlechklist">
                <div class="mb10"><input class="input"  name="PIC_SUBJECT" style="width:553px;" type="text" value=""></div>
            </dd>
        </dl>
        <dl class="inputF inputFile">
            <dt><label>파일첨부</label></dt>
            <dd>
                <div class="mb5">
                    <div class="formFile">
             <%--        <%String act_path="";%>
            <%act_path=(String)request.getAttribute("act_path") ;%>
            <%if(act_path.equals(null)){ %>
            <a>등록된 이미지가 없습니다.</a>
            <%if((String)session.getAttribute("ME_ID")=="admin"){ %>
            <form action="PictureFileUpload.pi" method="post" enctype="multipart/form-data">
			<input name="pic_pic" type="file"/> <input type="submit" value="등록" >
			</form><%}%>            
            <%}else{ %>
            <%if((String)session.getAttribute("ME_ID")=="admin"){ %> --%>
            <!-- <form action="./PicFileUpload.pi" method="post" enctype="multipart/form-data"> -->
			<input name="pic_pic" type="file"/>
			<%-- <%} %>
            <img src="<%=act_path%>"/>
            <%} %> --%>
            <!-- </form> -->  
                    </div>
                </div>
                <ul class="refer">
                    <li>- 파일당 최대 5MB까지 등록할 수 있습니다.</li>
                </ul>
            </dd>
        </dl>
         <dl class="inputF norBor">
            <dt><label >내용</label></dt>
            <textarea name="PIC_CONTENT" style="text-align=top; width:553px; height:553px;"  ></textarea>
        </dl>		
        <div class="editarea">
            <textarea id="Contents" "BO_CONTENT" style="width: 100%; height: 400px; display: none;" title="내용"></textarea>
            <!-- 에디터를 화면에 출력합니다. -->
            <!-- <script type="text/javascript">
                var myeditor = new cheditor();              // 에디터 개체를 생성합니다.
                myeditor.config.editorHeight = '400px';     // 에디터 세로폭입니다.
                myeditor.config.editorWidth = '100%';        // 에디터 가로폭입니다.
                myeditor.inputForm = 'Contents';             // textarea의 ID 이름입니다.
                myeditor.run();                             // 에디터를 실행합니다.
            </script> -->
        </div>
        <div>

        </div>

        <div class="btnArea">
            <a href="javascript:addboard()" class="btn btnty01">확인</a>&nbsp;&nbsp;
            <a href="javascript:history.go(-1)" class="btn btnty02">취소</a>
        </div>
    </fieldset>
</form>    
    
    <dl class="boardDesc">
        <dt>꼭 알아두세요!</dt>
        <dd>저작권 침해 영상이나 이미지를 포함한 컨텐츠를 등록하는 경우, <br>관리자에 의해 삭제될 수 있으며, 저작권법 위반에 따라 발생되는 불이익은 책임지지 않습니다.</dd>
    </dl>
    
</div>


                </section>

               

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

            </script><div class="rightFixedArea"><div class="naviFixedArea"><a class="tabChannelList" href="#">로그인</a></div><div class="fixedAreaWrap"><div class="scrollArea" style="height: 455px;"><div class="myinfoTabContents channelMenuContainer" id="channelMenu"><div class="channelMenuContainerInner"><h2 class="ir">CJ Channel MAP</h2><div class="channelMenuList"><ul><li class="tvn"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="1">tvN</a><div class="subMenuGroup" id="subMenuGroup_tvn" style="display: none;"><div class="goPoc"><a href="http://tvn.tving.com" target="_blank">tvN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="tvnD outLink"><a href="http://tvnd.tving.com">tvnD</a><div class="subMenuGroup" id="subMenuGroup_tvnD" style="display: none;"><div class="goPoc"><a href="http://tvnd.tving.com" target="_blank">tvnD 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="otvn"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="9">O tvN</a><div class="subMenuGroup" id="subMenuGroup_otvn" style="display: none;"><div class="goPoc"><a href="http://otvn.tving.com" target="_blank">O tvN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="xtvn"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="39">XtvN</a><div class="subMenuGroup" id="subMenuGroup_xtvn" style="display: none;"><div class="goPoc"><a href="http://xtvn.tving.com/xtvn" target="_blank">XtvN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="mnet"><a href="#right_channel_name" data-programurl="http://program.interest.me/rss/jsonProgramListLNB" data-bcode="21">MNET</a><div class="subMenuGroup" id="subMenuGroup_mnet" style="display: none;"><div class="goPoc"><a href="http://mnet.interest.me" target="_blank">MNET 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="onstyle"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="7">OnStyle</a><div class="subMenuGroup" id="subMenuGroup_onstyle" style="display: none;"><div class="goPoc"><a href="http://onstyle.tving.com" target="_blank">OnStyle 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="olive"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="8">O'live</a><div class="subMenuGroup" id="subMenuGroup_olive" style="display: none;"><div class="goPoc"><a href="http://olive.tving.com" target="_blank">O'live 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="xtm"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="10">XTM</a><div class="subMenuGroup" id="subMenuGroup_xtm" style="display: none;"><div class="goPoc"><a href="http://xtm.tving.com" target="_blank">XTM 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="ocn"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="2">OCN</a><div class="subMenuGroup" id="subMenuGroup_ocn" style="display: none;"><div class="goPoc"><a href="http://ocn.tving.com" target="_blank">OCN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="chcgv"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="4">채널CGV</a><div class="subMenuGroup" id="subMenuGroup_chcgv" style="display: none;"><div class="goPoc"><a href="http://chcgv.tving.com" target="_blank">채널CGV 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="superaction"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="5">SUPER ACTION</a><div class="subMenuGroup" id="subMenuGroup_superaction" style="display: none;"><div class="goPoc"><a href="http://superaction.tving.com" target="_blank">SUPER ACTION 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="tooniverse"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="35">tooniverse</a><div class="subMenuGroup" id="subMenuGroup_tooniverse" style="display: none;"><div class="goPoc"><a href="http://tooniverse.tving.com" target="_blank">tooniverse 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="zhtv"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="11">중화TV</a><div class="subMenuGroup" id="subMenuGroup_zhtv" style="display: none;"><div class="goPoc"><a href="http://zhtv.tving.com" target="_blank">중화TV 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="ongamenet"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="32">OGN</a><div class="subMenuGroup" id="subMenuGroup_ongamenet" style="display: none;"><div class="goPoc"><a href="http://ogn.tving.com" target="_blank">OGN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="catchon"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="6">CATCH ON</a><div class="subMenuGroup" id="subMenuGroup_catchon" style="display: none;"><div class="goPoc"><a href="https://www.catchon.co.kr" target="_blank">CATCH ON 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="uxn outLink"><a href="http://uxn.tving.com">UXN</a><div class="subMenuGroup" id="subMenuGroup_uxn" style="display: none;"><div class="goPoc"><a href="http://uxn.tving.com" target="_blank">UXN 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="getitbeauty outLink"><a href="http://getitbeauty.tving.com">겟잇뷰티</a><div class="subMenuGroup" id="subMenuGroup_getitbeauty" style="display: none;"><div class="goPoc"><a href="http://getitbeauty.tving.com" target="_blank">겟잇뷰티 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="enews24 outLink"><a href="http://enews24.tving.com">enews24</a><div class="subMenuGroup" id="subMenuGroup_enews24" style="display: none;"><div class="goPoc"><a href="http://enews24.tving.com" target="_blank">enews24 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li><li class="diatv"><a href="#right_channel_name" data-programurl="http://program.tving.com/rss/jsonProgramListLNB" data-bcode="36">diatv</a><div class="subMenuGroup" id="subMenuGroup_diatv" style="display: none;"><div class="goPoc"><a href="http://diatv.tving.com" target="_blank">diatv 바로가기</a></div><ul class="subTabMenu"><li><a href="#" class="on">방영</a></li><li><a href="#">종영</a></li></ul><div class="subMenuWrap"></div></div></li></ul></div></div></div></div></div></div>



</body>
</html>