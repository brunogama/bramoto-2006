<%
    request.getSession().invalidate();
%>
<html>
<body>
	<script>
		window.location = "<%=request.getContextPath()%>/index.jsp"
	</script>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
