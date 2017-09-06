<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page import="com.dk.monpi.constant.Constants"%>
<spring:eval var="appVersionFull" expression="@environment['app.version.full']" />
<%--

<!-- footer start -->
<div id="footer">
    <span>${appVersionFull}</span>&nbsp;&nbsp;|&nbsp;&nbsp;Copyright(c) <img src="<%=Constants.CONTEXT%>/resources/images/common/dq_logo.png" alt="Diquest" />. All Rights Reserved.
</div>
<!--// footer end -->--%>
