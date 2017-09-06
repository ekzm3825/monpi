<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ page import="com.diquest.openmedia.constant.Constants"%><!DOCTYPE html>
<html>
<head>
	<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<title>몬피 관리도구</title>

	<link rel="stylesheet" type="text/css" href="<%=Constants.CONTEXT%>/resources/lib/jstree-3.3.1/themes/default/style.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=Constants.CONTEXT%>/resources/lib/flatpickr-2.3.4/dist/flatpickr.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=Constants.CONTEXT%>/resources/lib/select2-4.0.3/css/select2-custom.css"/>
	<link rel="stylesheet" type="text/css" href="<%=Constants.CONTEXT%>/resources/css/style.css"/>

	<script src="<%=Constants.CONTEXT%>/resources/lib/jquery-1.9.0/jquery-1.9.0.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jquery.ui-1.10.4/jquery-ui.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jquery.blockUI-2.7/jquery.blockUI.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jquery.simplemodal-1.4.4/jquery.simplemodal.1.4.4.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/placeholders-4.0.1/placeholders.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jsrender-0.9.84/jsrender.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/underscore-1.8.3/underscore-min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/underscore.string-3.2.1/underscore.string.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jstree-3.3.1/jstree.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/flatpickr-2.3.4/dist/flatpickr.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/flatpickr-2.3.4/dist/l10n/ko.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/select2-4.0.3/js/select2.full.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/moment.js-2.17.1/moment-with-locales.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/jquery.numeric-1.4.1/jquery.numeric.min.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/highcharts-5.0.2/highcharts.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/highcharts-5.0.2/highcharts-3d.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/qusi-0.1.0/qusi.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/lib/qusi-0.1.0/qusi.ajax.js"></script>

	<script src="<%=Constants.CONTEXT%>/resources/js/common/ic.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/js/common/ajax-global.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/js/common/popup-autoresize.js"></script>
	<script>
		ic.static.contextPath = '<%=Constants.CONTEXT %>';

        $(function() {
            $('.select2').select2();
        });
	</script>

	<script src="<%=Constants.CONTEXT%>/resources/js/common.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/js/modal.basic.js"></script>
	<script src="<%=Constants.CONTEXT%>/resources/js/datepicker_kr.js"></script>--%>
</head>
<body style="overflow-x:hidden">
<%--
<div id="div-loading" style="background-color:#000;opacity:0.5;width:100%;height:100%;top:0;left:0;position:fixed;display:none;z-index: 99;">
	<img src="<%=Constants.CONTEXT%>/resources/images/common/loading.gif" style="position:absolute;top:40%;left:40%;z-index:100;width:80px;"/>
</div>
--%>

	<tiles:insertAttribute name="content"/>
</body>
</html>