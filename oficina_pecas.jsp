<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page errorPage="errorPage.jsp?pagina=oficina_pecas.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="visual/include/include_head.jsp"%>
<style>
<!--
/*
	#conteudo {
		background-image: url(visual/imagens/gimmik_oficina.jpg);
		background-repeat:no-repeat;
		background-position: bottom right;
	}
*/
-->
</style>
</head>
<body>
<%@ include file="visual/include/include_topo.jsp"%>
<%-- Conteudo --%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<h1 class="oficina">Oficina</h1>
<hr  noshade="noshade" size="1" />
<h2 class="pecas">Peças</h2>
<table border="0" cellpadding="0" cellspacing="0" width="100%" height="100%">
	<tr>
		<td>
			<p class="primeiro">
				<img src="visual/imagens/main_pre_agende.jpg" align="left" style=" margin: 0 5px 0 0;" />Na Bramoto, você realiza a manutenção de sua moto com peças originais Honda ou utilizando peças da linha Hamp, especialmente criadas para oferecer durabilidade com ótima relação custo-benefício, sempre com a confiança e aprovação da marca Honda.
			</p>
		</td>
	</tr>
	<tr>		
		<td>
			<h3>Confira os nossos produtos</h3>
			<table cellpadding="0" cellspacing="5" border="0" id="listaPrecos">
				<tr valign="top">
					<td width="50%">
						<img src="visual/imagens/pecas/amortecedor.jpg" title="Amortecedor" align="left" />
						<h3>Amortecedor <strong>CG 125 Titan </strong></h3>
						</td>						
					<td>
						<img src="visual/imagens/pecas/bateria.jpg" title="Bateria" align="left" />						
						<h3>Bateria Hamp 2.5 amperes </h3>
						Compat&iacute;vel com CG Titan (at&eacute; 1999) <br />
						</td>						
				</tr>
				<tr valign="top">
					<td>
						<img src="visual/imagens/pecas/oleo-mobil.jpg" title="Óleo Móbil" align="left" />						
						<h3>Óleo Mobil para motor </h3>
										
					</td>						
					<td>
						<img src="visual/imagens/pecas/pneu.jpg" title="Pneu" align="left" />						
						<h3>Pneu traseiro Pirelli 90/90-18 </h3></td>						
				</tr>
				<tr valign="top">
					<td>
						<img src="visual/imagens/correia-linha-hanp.gif" title="Correia Linha Hamp" align="left" />						
						<h3> Kit Transmiss&atilde;o Hamp CG 125 Titan </h3></td>						
					<td>
						<img src="visual/imagens/filtro-de-ar.gif" title="Filtro de ar" align="left" />						
						<h3>Filtro de &oacute;leo Twister</h3></td>						
				</tr>
				<tr valign="top">
					<td>
						<img src="visual/imagens/kit_cilindro_pistao.gif" title="Kit cilindro e pistão" align="left" />						
						<h3>Kit cilindro, pist&atilde;o e an&eacute;is CG 125 Titan </h3></td>						
					<td>
						<img src="visual/imagens/pecas/correia.jpg" title="Correia" align="left" />						
						<h3>Kit Transmiss&atilde;o Hamp CG 150 Titan </h3></td>				
				</tr>				

			</table>
		</td>
	</tr>
	<tr>
		<td align="right" valign="top" style="height:300px;">
			<img src="visual/imagens/gimmik_oficina.jpg" class="gimmik" />
		</td>
	</tr>
</table>
<%-- /Conteudo --%>
<%@ include file="visual/include/include_rodape.jsp"%>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
