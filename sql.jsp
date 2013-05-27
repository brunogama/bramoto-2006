<%@ taglib prefix="fmt" uri="WEB-INF/tld/fmt.tld" %>
<%@ taglib prefix="c" uri="WEB-INF/tld/c.tld" %>
<%@ taglib prefix="sql" uri="WEB-INF/tld/sql.tld" %>

<html>
<head>
<style>
<!--
	td { width: 150px; }
	thead { text-align: center; color: white; background: #111; font-weight: bold; }
	tr { background-color: #ddd; }
-->
</style>
</head>
<body>
<%--Cria um dataSource default pra pagina --%>
<sql:setDataSource
	driver="org.postgresql.Driver"
	url="jdbc:postgresql://200.234.202.70/"
	user="bramoto_1" password="bramoto_1" />
<%--/Cria um dataSource default pra pagina --%>	

<sql:query var="consulta">
	SELECT * FROM contato;
</sql:query>

<table border="0" cellpadding="10" cellspacing="1">
	<thead>
		<tr>
			<td>
				Nome
			</td>
			<td>
				Id
			</td>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="consulta" items="${consulta.rows}">
		<tr>
			<td><c:out value="${consulta.login}" /></td>
			<td><c:out value="${consulta.usarioid}" /></td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>