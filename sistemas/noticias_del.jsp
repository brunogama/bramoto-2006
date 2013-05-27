<%@ include file="../visual/include/sistemas/include_java_topo.jsp" %>
<jsp:useBean id="nDAO" scope="page" class="br.com.brg.noticias.NoticiasDAO" />

<%
	if ( request.getParameter( "apagar" ) != null ) {
		if ( request.getParameter( "apagar" ).equals("1") ) {
			Enumeration e = request.getParameterNames();
			while ( e.hasMoreElements() ) {
				String chave = (String) e.nextElement();
				if ( chave.startsWith("cb_") ) {
						nDAO.apagarNoticia( Integer.parseInt( request.getParameter( chave ) ) );
					}
			}
		}
	}
%>


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
		<p>Para apagar marque as noticias desejadas e clique em apagar</p>
		<form>
		<table border="0" cellpadding="0" cellspacing="0" >
			<tr>
				<th class="chkbox">&nbsp;</th>				
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
				<td><input type="checkbox" name="cb_<%=i%>" value="<%= noticia.getId() %>" /></td>
				<td><%= noticia.getNoticiaDestaque() %>&nbsp;<%= noticia.getNoticiaTexto() %></td>
				<td><%= formatador.getData(noticia.getDatePost()) %>&nbsp;-&nbsp;<%= formatador.getHora(noticia.getDatePost()) %></td>
			</tr>
			<%
			}
			%>			
<%-- iteracao --%>			
		</table>
			<input type="hidden" name="apagar" value="1" />
			<input type="submit" value="Apagar selecionados" class="btn" />&nbsp;<input type="reset" value="Limpar dados" class="btn" />
		</form>
	</div>
</div><%-- final div conteudo --%>
<%@ include file="../visual/include/sistemas/include_body_rodape.jsp" %>
</body>
</html>
