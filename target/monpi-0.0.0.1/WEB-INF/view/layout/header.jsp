<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.dk.monpi.constant.Constants"%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:eval var="marinerUrl" expression="@environment['site.menu.mariner-url']" />
<spring:eval var="disaSaUrl" expression="@environment['site.menu.disa-sa-url']" />
<spring:eval var="disaNeUrl" expression="@environment['site.menu.disa-ne-url']" />
<spring:eval var="dqcatUrl" expression="@environment['site.menu.dqcat-url']" />
<%--

<!-- header start -->
<div class="header">
	<div class="head_top clear">
		<h1><a href="<%=Constants.CONTEXT%>/main.do"><img src="<%=Constants.CONTEXT%>/resources/images/common/logo.png" alt="몬피 관리도구" class="top_logo" /></a></h1>
		<ul class="util_menu">
		<li><a href="#" class="util_help" onclick="ic.popup.open('<%=Constants.CONTEXT%>/resources/files/infochatter2_manual_v2.4.0.5.pdf', 'manual', 640, 800)">도움말</a></li>
		<li><a href="#" class="util_user"><strong>${loginManager.member.name} (${loginManager.loginId})</strong></a></li>
		<li><a href="<%=Constants.CONTEXT%>/login/logout-processing.do" class="util_signout">로그아웃</a></li>
		</ul>
	</div>

	<!-- 주메뉴 start : 1depth 활성화시 li 에 class="on" 추가 -->
	<div id="menu">
		<ul id="main-menu">
			<li <c:if test="${site.currentMenu == 'chat'}">class="on"</c:if>><a href="#">코퍼스관리</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/chat/basic/list.do">기본발화</a></li>
                    <li><a href="<%=Constants.CONTEXT%>/chat/corpus/list.do">일상대화</a></li>
                    <li><a href="<%=Constants.CONTEXT%>/corpus/qna/register/list.do">질의응답</a></li>
				</ul>
			</li>
			<li <c:if test="${site.currentMenu == 'dialog'}">class="on"</c:if>><a href="#">대화관리</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/dialog/agent/main.do">에이전트</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dialog/model/main.do">대화모델</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dialog/service/list.do">연계서비스</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dialog/ppranswer/list.do">기정의답변</a></li>
				</ul>
			</li>
			<li <c:if test="${site.currentMenu == 'dictionary'}">class="on"</c:if>><a href="#">사전관리</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/dictionary/doact/list.do">의도사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/speechact/list.do">화행사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/namedentity/list.do">개체명사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/user/list.do">사용자사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/synonym/list.do">유사어사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/stopword/list.do">불용어사전</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dictionary/correction/list.do">기분석사전</a></li>
				</ul>
			</li>

			<li <c:if test="${site.currentMenu == 'test'}">class="on"</c:if>><a href="#">테스트</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/simulator/main.do">시뮬레이터</a></li>
					<li><a href="<%=Constants.CONTEXT%>/dunit/list.do">정확도테스트</a></li>
				</ul>
			</li>
			<li <c:if test="${site.currentMenu == 'log'}">class="on"</c:if>><a href="#">로그관리</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/report/userlog/list.do">사용자로그</a></li>
					<li><a href="<%=Constants.CONTEXT%>/report/faillog/list.do">실패로그</a></li>
					<li><a href="<%=Constants.CONTEXT%>/report/systemlog/list.do">장애로그</a></li>
				</ul>
			</li>

			<li <c:if test="${site.currentMenu == 'system'}">class="on"</c:if>><a href="#">시스템관리</a>
				<ul class="sub-menu">
					<li><a href="<%=Constants.CONTEXT%>/report/performance/list.do">성능모니터링</a></li>
					<c:if test="${not empty marinerUrl}">
						<li><a target="_blank" href="${marinerUrl}">검색관리</a></li>
					</c:if>
					<c:if test="${not empty disaSaUrl}">
						<li><a target="_blank" href="${disaSaUrl}">기본화행관리</a></li>
					</c:if>
					<c:if test="${not empty disaNeUrl}">
						<li><a target="_blank" href="${disaNeUrl}">기본개체명관리</a></li>
					</c:if>
					<c:if test="${not empty dqcatUrl}">
						<li><a target="_blank" href="${dqcatUrl}">자동분류관리</a></li>
					</c:if>
					<li><a href="<%=Constants.CONTEXT%>/member/list.do">계정관리</a></li>
				</ul>
			</li>
		</ul>
	</div>
	<!--// 주메뉴 end -->
</div>
<!--// header end -->--%>
