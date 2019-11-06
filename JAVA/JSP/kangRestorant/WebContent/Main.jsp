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
									<li><a href="./member/MyPage.me">����������</a></li>
									<%
										}
									%>

								</ul>
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
	<!--  -->
	<!-- ���� top �Ʒ��� ���� -->
	<!--  -->
	<div id="container">
		<div class="program_temp">
			<div class="intro introMt0">
				<link rel="stylesheet" type="text/css"
					href="http://img.lifestyler.co.kr/NewIMG/frontenm/ch/tvn/2019/20190522_kangskitchen2/css/teaser.css">
				<link rel="stylesheet" type="text/css"
					href="http://img.lifestyler.co.kr/NewIMG/interest_poc/css/common.css">
				<script type="text/javascript"
					src="http://program.tving.com/Content/script/program/intro.teaser.pc.js"></script>
				<script type="text/javascript"
					src="http://img.lifestyler.co.kr/NewIMG/tving/desktop/js/TweenMax.min.js"></script>
				<script type="text/javascript">
					$(function() {
						onLoadTeaserVod2("11", "1577", "201902181724",
								"POT001", "Y"); // ������
						onLoadUpdateVodkang("11", "1577", "201902181724", "4"); // �ֽŵ�����
						onLoadUpdatePreviewWWW("1577", "3", "1"); // �̸�����
						onLoadUpdatePhotokang("1577", "6", "1", "202", "218", 3);// ��������
					});

					function vodplay(code) {

						$("#divmyArticleVod")
								.initVodPlayer(
										{
											serviceid : "tvn",
											ispay : "N",
											ischarge : "N",
											data : "/VOD/getFlashVodConfig?serviceid=tvn&idpath="
													+ code,
											usead : "N",
											autoplay : "Y",
											istitle : "N",
											hide_controll : "Y",
											funcPayment : function() {
												Payment();
											},
											funcLogin : function() {
												iGnbLink.Header.Login();
											}
										});
					}

					function onLoadUpdateVodkang(c_no, p_seq, cms_id, viewcnt) {
						if (c_no != "" && p_seq != "" && cms_id != "") {
							$
									.ajax({
										type : "POST",
										url : "/Json/JsonUpdateVod",
										data : "channel_no=" + c_no + "&p_seq="
												+ p_seq + "&cms_id=" + cms_id,
										dataType : "json",
										success : function(msg) {
											try {
												if (msg.Result == true
														&& msg.Message.Item.length > 0) {
													var vodcount = msg.Message.Item.length;
													if (vodcount > viewcnt) {
														vodcount = viewcnt;
													}
													for (var a = 0; a < vodcount; a++) {
														var url = msg.Message.Item[a].Url;
														if (location.host
																.indexOf("program.tving.com") < 0) {
															url = url
																	.replace(
																			"/Program/"
																					+ p_seq
																					+ "/",
																			"/Index/");
														}
														var video_str = "";

														video_str += "<li>";
														video_str += "  <a href=\"" + url + "\" class=\"thumb\">";
														video_str += "      <img src=\""
																+ msg.Message.Item[a].Thumbnail
																		.replace(
																				"/resize/250",
																				"/resize/256")
																+ "\"  width=\"256\" height=\"144\"   alt=\""
																+ msg.Message.Item[a].Title
																		.replace(
																				/"/g,
																				"")
																+ "\" onError=\"$(this).hide()\" />";
														video_str += "  </a>";
														video_str += "  <p class=\"caption\" >";
														video_str += "      <a href=\"" + url + "\" class=\"txtSkip\">"
																+ msg.Message.Item[a].Title
																+ "</a>";
														video_str += "  </p>";
														video_str += "</li>";

														$("#divMainUpdate ul")
																.append(
																		video_str);
													}
													$("#divMainUpdate").show();
												}
											} catch (e) {
											}
										},
										error : function(xhr, status, errorT) {
											// alert("������ �߻��߽��ϴ�.");
										}
									});
						}
					}

					function onLoadUpdatePhotokang(p_seq, m_seq, page, width,
							height, count) {
						var upcount = count;

						if (p_seq != "" && m_seq != "") {
							$
									.ajax({
										type : "POST",
										url : "/Json/JsonUpdateBoard",
										data : "p_seq=" + p_seq + "&m_seq="
												+ m_seq + "&page=" + page
												+ "&count=" + upcount,
										dataType : "json",
										success : function(msg) {
											try {
												if (msg.Result == true
														&& msg.Message.Item.length > 0) {
													var photoCnt = 0;

													$("#divMyArticle ul").html(
															"");

													if (msg.Message.Total > upcount) {
														photoCnt = upcount;
													} else {
														photoCnt = msg.Message.Total;
													}

													for (var a = 0; a < photoCnt; a++) {
														var photoHtml = "";
														var urlBoard = msg.Message.Item[a].Url;
														var urlpic = "<img src='/board/cropfile?w="
																+ width
																+ "&url="
																+ msg.Message.Item[a].ThumbnailOrg
																+ "' alt=\""
																+ msg.Message.Item[a].Title
																		.replace(
																				/"/g,
																				"")
																+ "\" onError=\"$(this).hide()\"/>";

														photoHtml += "<li class=\"list_item\">";
														photoHtml += "	<a href=\"" + urlBoard + "\" >";
														photoHtml += "      <span class=\"thumbPic\">"
														photoHtml += urlpic;
														photoHtml += "      </span>";
														photoHtml += "      <span class=\"thumbCo\">";
														photoHtml += "          <span class=\"chapter\">"
																+ msg.Message.Item[a].Title
																		.replace(
																				/"/g,
																				"")
																+ "</span>";
														photoHtml += "          <span class=\"ti\">��������</span>";
														photoHtml += "      </span>";
														photoHtml += "	</a>";
														photoHtml += "</li>";

														$("#divMyArticle ul")
																.append(
																		photoHtml);
													}
													$("#divMyArticle ul")
															.show();

												}
											} catch (e) {
											}
										},
										error : function(xhr, status, errorT) {
											//alert("������ �߻��߽��ϴ�.");
										}
									});
						}
					}

					function onLoadUpdatePreviewWWW(p_seq, m_seq, page) {
						var upcount = 2;

						if (p_seq != "" && m_seq != "") {
							$
									.ajax({
										type : "POST",
										url : "/Json/JsonUpdateBoard",
										data : "p_seq=" + p_seq + "&m_seq="
												+ m_seq + "&page=" + page
												+ "&count=" + upcount,
										dataType : "json",
										success : function(msg) {
											try {
												if (msg.Result == true
														&& msg.Message.Item.length > 0) {

													$("#divMyArticle2 ul")
															.html("");

													var previewHtml = "";
													var urlBoard = msg.Message.Item[0].Url;

													previewHtml += "<li class=\"list_item\">";
													previewHtml += "	<a href=\"" + urlBoard + "\" >";
													previewHtml += "      <div class=\"thumbTxt\">"
													previewHtml += "        <p class=\"preview\">"
															+ msg.Message.Item[0].boardContents
															+ "</p>";
													previewHtml += "        <span class=\"chapter\">"
															+ msg.Message.Item[0].Title
																	.replace(
																			/"/g,
																			"")
															+ "</span>";
													previewHtml += "        <span class=\"ti\">�̸�����</span>";
													previewHtml += "      </div>";
													previewHtml += "	</a>";
													previewHtml += "</li>";

													$("#divMyArticle2 ul")
															.append(previewHtml);

													$("#divMyArticle2").show();
												}
											} catch (e) {
											}
										},
										error : function(xhr, status, errorT) {
											//alert("������ �߻��߽��ϴ�.");
										}
									});
						}
					}
				</script>
				<div class="moduleWrap">
					<div class="module-innerbox">

						<!-- ���Visual -->
						<div class="mainvisual">
							<div class="mainvisual_inner">
								<!-- ��۰��� -->
								<div class="mainvisual_h3_para">
									<div class="mainvisual_info mainvisual_h3_ani_text_24">
										<img
											src="http://img.lifestyler.co.kr/NewIMG/frontenm/ch/tvn/2019/20190522_kangskitchen2/images/bg_logo_summary_02.png"
											alt="6��5�� [��] �� 9�� 30�� tvN ù���">
									</div>
								</div>
								<!-- //��۰��� -->
							</div>
						</div>
						<!-- //���Visual -->

						<!-- �ϴ�Visual -->
						<div class="myArticle">
							<div class="myArticle_wrap">
								<!-- article_��� -->
								<div class="myArticle_top">
									<!-- ������ -->
									<div class="teaser_preview">
										<h4 class="heading01">
											<a
												href="http://program.tving.com/tvn/kangskitchen/4/Vod/List?vod_type=3&amp;order=">������</a>
										</h4>
										<!-- ���⿡ -->
											<iframe width="500" height="400" src="https://www.youtube.com/embed/qfZ6nLYTjVk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
											<p class="vodCaption txtSkip" id="divmyArticleVodTitle">
												<a href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_253490">[����]
													���۽��� �Ÿ޴� �߰��� ������ �ɸ� ������</a>
											</p>
									</div>
									<!-- //������ -->
									
									<!-- �ֽ� ������ -->
									<div class="teaser_vod" id="divMainUpdate">
										<h4 class="heading02">
											<a
												href="http://program.tving.com/tvn/kangskitchen/4/Vod/List">�ֽŵ�����</a>
										</h4>
										<ul class="thumb_list">

											<li><a
												href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254214"
												class="thumb"> <img
													src="http://image.tving.com/upload/cms/cais/CAIS0400/S028624774.jpg/dims/resize/256"
													width="256" height="144"
													alt="��ó�� ��ȭ�ο�(?) ��ħ�غ�, �ǰ��� ������ ��ĥ �� ����!"
													onerror="$(this).hide()">
											</a>
												<p class="caption">
													<a href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254214"
														class="txtSkip">��ó�� ��ȭ�ο�(?) ��ħ�غ�, �ǰ��� ������ ��ĥ �� ����!</a>
												</p></li>
											<li><a
												href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254210"
												class="thumb"> <img
													src="http://image.tving.com/upload/cms/cais/CAIS0400/S028622280.jpg/dims/resize/256"
													width="256" height="144"
													alt="���Ĵ� ������ ù ȸ��!! ���� ��� �뵿�ڿ�...."
													onerror="$(this).hide()">
											</a>
												<p class="caption">
													<a href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254210"
														class="txtSkip">���Ĵ� ������ ù ȸ��!! ���� ��� �뵿�ڿ�....</a>
												</p></li>
											<li><a
												href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254177"
												class="thumb"> <img
													src="http://image.tving.com/upload/cms/cais/CAIS0400/S028622279.jpg/dims/resize/256"
													width="256" height="144"
													alt="��������� Ư�� ����!! ���ָ� �������� ������� ��ġ�� �Թ�"
													onerror="$(this).hide()">
											</a>
												<p class="caption">
													<a href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254177"
														class="txtSkip">��������� Ư�� ����!! ���ָ� �������� ������� ��ġ�� �Թ�</a>
												</p></li>
											<li><a
												href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254174"
												class="thumb"> <img
													src="http://image.tving.com/upload/cms/cais/CAIS0400/S028622278.jpg/dims/resize/256"
													width="256" height="144"
													alt="����� ���� ������ ��!! �������� ������ ���� ������...�� (��Ʋ��)"
													onerror="$(this).hide()">
											</a>
												<p class="caption">
													<a href="/tvn/kangskitchen/4/Vod/View/CLIP/EA_254174"
														class="txtSkip">����� ���� ������ ��!! �������� ������ ���� ������...��
														(��Ʋ��)</a>
												</p></li>
										</ul>
									</div>
									<!-- //�ֽ� ������ -->
								</div>
								<!-- //article_��� -->
							</div>

						</div>
						<!-- //�ϴ�Visual -->

					</div>
				</div>

			</div>
		</div>

	</div>
</body>
</html>