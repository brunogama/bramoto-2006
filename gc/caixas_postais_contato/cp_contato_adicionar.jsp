<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page import="java.util.*,
				br.com.brg.contato.contatoDAO,
				br.com.brg.contato.contatoVO"%>


<jsp:useBean id="contatoDAO" scope="request" class="br.com.brg.contato.contatoDAO" />
<jsp:setProperty name="contatoDAO" property="*"  />
<jsp:useBean id="contato" scope="request" class="br.com.brg.contato.contatoVO" />
<jsp:setProperty name="contato" property="*"  />

<%
	if ( request.getParameter("acao") != null ) {
		if ( request.getParameter("acao").equals("inserir") ) {
			contato.setNome( request.getParameter("nome") );
			contato.setEmail( request.getParameter("email") );
			contatoDAO.setContato( contato );
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<title>Gestor de Conteúdo - Bramoto</title>
	<link rel="stylesheet" type="text/css" href="../visual/estilos/gc.css" />
</head>

<body>

<%@ include file="../visual/includes/include_layout_topo.jspf" %>
<%-- Conteudo e opcoes --%>		
			<h3>Caixas Postais: Contato pelo Site</h3>
			<h4>Adicionar Contato</h4>
			<p>
				Preencha todos os campos abaixo:
			</p>
<%-- Tabela de acoes --%>
			<form action="cp_contato_adicionar.jsp" method="get">
				<label>
					Nome: <input type="text" name="nome"/>
				</label><br />

				<label>
					E-mail: <input type="text" name="email" />
				</label><br />
				<input type="hidden" name="acao" value="inserir"  />
				<input type="submit" value="Adicionar" />			
			</form>

<%-- /Tabela de acoes --%>
<%-- /Conteudo e opcoes --%>
<%@ include file="../visual/includes/include_layout_rodape.jspf" %>

</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
