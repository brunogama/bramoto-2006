<%@ include file="../visual/include/sistemas/include_java_topo.jsp" %>
<jsp:useBean id="nDAO" scope="request" class="br.com.brg.noticias.NoticiasDAO" />
<jsp:useBean id="noticia" scope="request" class="br.com.brg.noticias.Noticia" />

<%
	String aviso = "";
	if (request.getParameter( "inserir" ) != null) {
		if ( request.getParameter( "inserir" ).equals("1") ) {
			noticia.setNoticiaDestaque( request.getParameter( "noticiaDestaque" ) );
			noticia.setNoticiaTexto( request.getParameter( "noticiaTexto" ) );			
			if ( nDAO.inserirNoticia( noticia ) > 0 ) {
				aviso = "Not�cia inserida com sucesso.";
			} else {
				aviso = "A not�cia n�o foi inserida.";
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
		<p>
			Preencha todos os campos a baixo e logo ap�s clique "Postar not�cia".
		</p>
		<p>
			<form method="get" action="noticias_add.jsp">
				<label for="txtDestaque">Texto destaque:</label>
				<input type="text" id="txtDestaque" title="Este campo ser� onde o texto ir� aparecer em negrito." maxlength="150" name="noticiaDestaque" class="txt"/><br />
				<label for="txtNoticia">Texto noticia:</label>
				<input type="text" id="txtDestaque" title="Continua��o do texto destaque" maxlength="250" name="noticiaTexto" class="txt"/><br />
				<input type="hidden" name="inserir" value="1" />
				<input type="submit" value="Postar not�cia" class="btn" /> <input type="reset" value="Limpar dados" class="btn" />
			</form>
		<p>
	</div>
</div><%-- final div conteudo --%>
<%@ include file="../visual/include/sistemas/include_body_rodape.jsp" %>
</body>
</html>
<%
	if (request.getParameter( "inserir" ) != null) {
		if ( request.getParameter( "inserir" ).equals("1") ) {
		%>
<script>
<!--
	alert("<%= aviso %>");
-->
</script>		
		<%		
		}
	}
%>