<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page errorPage="errorPage.jsp?pagina=produtos_boutique.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="visual/include/include_head.jsp"%>
</head>
<body>
<%@ include file="visual/include/include_topo.jsp"%>
<%-- Conteudo --%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<h1 class="produtos">Produtos</h1>
<hr  noshade="noshade" size="1" />
<h2 class="boutique">Boutique</h2>
<table cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td>
			<p class="primeiro">
				Aproveite ao máximo a sua Honda utilizando acessórios, capacetes, equipamentos de segurança, jaquetas, capas e trajes de chuva, luvas, botas, produtos oficiais da marca e uma série de itens indispensáveis no dia-a-dia do motociclista.
			</p>		
		</td>
	</tr>
	<tr>
		<td>
		<h3>Confira os nossos produtos</h3>
		<table cellpadding="0" cellspacing="5" border="0" id="listaPrecos">
			<tr valign="top">
				<td>
					<img src="visual/imagens/produtos/capacete_02.jpg" title="Capacete" align="left" />
					<h3>Capacete HGF </h3>
					<p>Aberto ou fechado, cores variadas. </p>
					<p>&nbsp;</p></td>
				<td>
					<img src="visual/imagens/produtos/capacete_03.jpg" title="Capacete" align="left" />
					<h3>Capacete F7 </h3>
					<p>Com viseira acr&iacute;lica. </p>
					<p>&nbsp;</p></td>
			</tr>
			<tr valign="top">
				<td>
					<img src="visual/imagens/produtos/jaqueta_chuva.jpg" title="Jaqueta para chuva" align="left" />
					<h3>Conjunto para chuva Yamaplas </h3></td>
				<td>
					<img src="visual/imagens/produtos/jaqueta_honda.jpg" title="Jaqueta honda" align="left" />
					<h3>Jaqueta honda</h3>
					<p>Totalmente imperme&aacute;vel, emborrachada. </p>
					<p>&nbsp;</p></td>
			</tr>
			<tr valign="top">
				<td>
					<img src="visual/imagens/capacete-fly.gif" title="Capacte Fly" align="left" />
					<h3>Capacete Fly Twister</h3>
					Engate rápido, laterais removíveis e lavável.<br /></td>
				<td>
					<img src="visual/imagens/capacete-peels.gif" title="Capacete Peels" align="left" />
					<h3>Capacete Peels Mach 5</h3>
					Com viseira anti risco, lateral removível lavável, engate rápido.<br /></td>
			</tr>
			<tr valign="top">
				<td>
					<img src="visual/imagens/luva.gif" title="Luva em couro" align="left" />
					<h3>Luvas em couro</h3></td>
				<td>&nbsp;</td>
			</tr>			
		</table>
		
		</td>
	</tr>
	<tr>
		<td style="padding-bottom:15px;">
			<img src="visual/imagens/promoProdutos.jpg" class="gimmik" align="right" style="padding: 0 0 10px 0;"/>
		</td>
	</tr>		
</table>

<%-- /Conteudo --%>
<%@ include file="visual/include/include_rodape.jsp"%>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
