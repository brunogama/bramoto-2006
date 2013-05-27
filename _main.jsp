<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<%@ page errorPage="errorPage.jsp?pagina=main.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="visual/include/include_head.jsp"%>
</head>
<body>
<%@ include file="visual/include/include_topo.jsp"%>
<!-- Conteudo -->
<table cellpadding="0" cellspacing="5" border="0" width="100%">
	<tr valign="top">
		<td colspan="2">
		<h1 class="bemvindo">Seja Bem Vindo</h1>
		<hr  noshade="noshade" size="1" />

		<p align="left">
			<img src="visual/imagens/seja_bem_vindo_img.jpg" width="129" height="100" align="left" style="margin: 0 5px 0 0;" />A Bramoto é a maior rede de Concessionárias Autorizadas Honda do Rio Grande do Sul, com lojas em Santa Maria, Cachoeira do Sul, São Gabriel, Rosário do Sul, Santiago, São Borja e Itaqui, atendendo  mais de 80 municípios na região centro e fronteira oeste do estado.		</p>
		</td>
	</tr>
	<tr valign="top">
		<td width="50%">
			<a href="oficina_assistencia_tecnica.jsp" target="_self" style="cursor:pointer;"><h1 class="pservicos">Pré agende seus serviços</h1></a>
			<hr  noshade="noshade" size="1" />

			<p>
				<a href="oficina_assistencia_tecnica.jsp" target="_self" class="linkNulo">
					<img src="visual/imagens/main_pre_agende.jpg" width="100" height="100" align="left" style="margin: 0 5px 0 0;" />Poupe tempo com as facilidades do agendamento Bramoto e garanta rapidez e pontualidade nos serviços de manutenção da sua moto.
				</a>
			</p>
		</td>
		<td>
			<div id="noticias">
				<h1 class="noticias">Noticias</h1>
				<hr  noshade="noshade" size="1" />
				<ul>
					<li><strong>Feirão Bramoto Zero Prorrogado</strong> até 30/11/2006. Aproveite os últimos dias para comprar sua honda zero, com pequena entrada e saldo em 42x com taxas reduzidas. Feirão Bramoto Zero Prorrogado. Aqui tem bom negócio sempre! </li>
					<li><strong>Curso gratuíto de direção defensiva.</strong> Dia 16/12/2006,
em Santa Maria, no 1º RCC. Inscrições na Bramoto Santa Maria, ou pelo site, no link contato.
Importante: Informe seu nome completo e seu telefone. Vagas limitadas. </li>
				</ul>
				
			</div><%-- Fim noticias --%>
		</td>	
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td align="right" ><img src="visual/imagens/gimmik_oficina.jpg" title="" alt="" class="gimmik" /></td>
	</tr>	
</table>
<!-- /Conteudo -->
<script>
<!--
	//window.open("popBanner.html", "bannerCopa", "toolbar=0,location=0,directories=0,status=0,menubar=0,scrollbars=0,resizable=0,copyhistory=0,width=480,height=268");
-->
</script>
<%@ include file="visual/include/include_rodape.jsp"%>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
