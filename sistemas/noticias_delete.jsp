<%@ include file="../visual/include/sistemas/include_java_topo.jsp" %>
<jsp:useBean id="nDAO" scope="page" class="br.com.brg.noticias.NoticiasDAO" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../visual/include/sistemas/include_head.jsp" %>
</head>
<body>
<%@ include file="../visual/include/sistemas/include_body_topo.jsp" %>
<div id="conteudo">
<%@ include file="../visual/include/sistemas/include_body_menu.jsp" %>
	<div id="principal">
		<h2>Acesso restrito</h2>
		<hr noshade="noshade" size="1" color="#db214c"/>
		<p>Listagem de todas as noticias postadas até hoje.</p>
		<table border="0" cellpadding="0" cellspacing="0" >
			<tr>
				<th>Noticia</th>
				<th class="data">Dia de publicação</th>
			</tr>
<%-- iteracao --%>
			<%
				List lista= nDAO.listarNoticias();
				for ( int i=0; i<lista.size(); i++ ) {
				Formatadores formatador = new Formatadores();
				Noticia noticia = (Noticia) lista.get(i);
			%>
			<tr>
				<td><%= noticia.getNoticiaDestaque() %>&nbsp;<%= noticia.getNoticiaTexto() %></td>
				<td><%= formatador.getData(noticia.getDatePost()) %>&nbsp;-&nbsp;<%= formatador.getHora(noticia.getDatePost()) %></td>
			</tr>
			<%
			}
			%>			
<%-- iteracao --%>			
		</table>
	</div>
</div><%-- final div conteudo --%>
<%@ include file="../visual/include/sistemas/include_body_rodape.jsp" %>
</body>
</html>
