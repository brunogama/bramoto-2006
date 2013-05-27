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
			<p>
				Selecione uma ação:
			</p>
<%-- Tabela de acoes --%>
			<table cellpadding="0" cellspacing="0" border="1" id="icones_acao">
				<tr id="icones_acao">
					<td>
						<a href="cp_contato_adicionar.jsp">Adicionar</a>
					</td>
					<td>
						<a href="cp_contato_modificar.jsp">Modificar</a>
					</td>
					<td>
						<a href="cp_contato_excluir.jsp">Excluir</a>
					</td>
				</tr>
			</table>
<%-- /Tabela de acoes --%>
<%-- /Conteudo e opcoes --%>
<%@ include file="../visual/includes/include_layout_rodape.jspf" %>

</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
