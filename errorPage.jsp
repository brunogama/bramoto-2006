<%@ page isErrorPage="true" %>
<% String from = (String)request.getParameter("pagina"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="visual/include/include_head.jsp"%>
</head>
<body>
<%@ include file="visual/include/include_topo.jsp"%>
<%-- Conteudo --%>
<h1 class="contato">Contato</h1>
<hr  noshade="noshade" size="1" />
<h2 class="fale_conosco">Fale Conosco</h2>
<p class="primeiro">
	Ocorreu um erro na aplicação. Se o erro persistir entre em contato com o administrador do site informando detalhadamente o erro.	
</p>
<p>
	<h3>Erro encontrado na página: <b><%= from %></b></h3>

	A Exception encontrada foi:<br />
	<b><%= exception %></b>
	<% System.out.println(exception.toString()); %>
</p>
<%-- /Conteudo --%>
<%@ include file="visual/include/include_rodape.jsp"%>

</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
