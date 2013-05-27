<%@ include file="visual/include/include_java_topo.jsp"%>
<%@ page errorPage="errorPage.jsp?pagina=contato_email.jsp" %>
<jsp:useBean id="contatoVO" scope="session" class="br.com.brg.adm.contato.contatoVO" />


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Bramoto</title>
	<style type="text/css" media="all">
		<!--
			* { margin: 0; padding: 0; }
			body { margin: 10px; }
			body,table { background: #FFF; font: 10px Verdana; line-height: 1.5em; }
			hr { color: #a12121; margin: 10px 0 0 0; }
			table { width: 800px; margin-top: 20px; }
			#texto { padding: 0 0 0 5px; }
			a,a:link,a:visited,a:active { text-decoration: none; color: #a12121; }
			a:hover { text-decoration: underline }
		-->
	</style>
</head>
<body>
<% session.getId();	%>
<table cellpadding="0" cellspacing="0" border="0" width="800">
	<tr valign="bottom">
		<td width="250"><img src="http://www.bramoto.com/visual/imagens/h1/h1_email.jpg" width="286" height="20" /></td>
		<td align="right"><img src="http://www.bramoto.com/visual/imagens/logo.jpg" width="239" height="66" title="Bramoto A Maior Rede de Concession�rias Honda do RS" /></td>
	<tr>
		<td colspan="2"><hr size="1" noshade="NOSHADE" /></td>
	</tr>
	<tr valign="top">
		<td colspan="2">
			<table cellpadding="0" cellspacing="0" border="0" width="800">
				<tr valign="top">
					<td width="100"><b>Nome:</b></td>
					<td><%= contatoVO.getNome() %></td>
				</tr>
				<tr valign="top">
					<td><b>E-mail:</b></td>
					<td><a href="mailto:<%=	contatoVO.getEmail() %>" ><%= contatoVO.getEmail() %></a></td>
				</tr>
				<tr valign="top">
					<td><b>Telefone:</b></td>
					<td><a href="mailto:<%=	contatoVO.getEmail() %>" ><%= contatoVO.getTelefone() %></a></td>
				</tr>                
				<tr valign="top">
					<td><b>Comentario:</b></td>
					<td><%=	contatoVO.getComentario().replaceAll("\n","&nbsp;") %></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<hr size="1" noshade="NOSHADE" />
		</td>
	</tr>	

</table>
</body>
</html>