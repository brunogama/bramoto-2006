<%
    request.getSession().invalidate();
%>
<html>
<body>
	<script>
		window.location = "<%=request.getContextPath()%>"
	</script>
</body>
</html>
