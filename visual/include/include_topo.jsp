<%@ page contentType="text/html; charset=iso-8859-1" %>
<table cellpadding="0" cellspacing="0" border="0" id="container">
	<tr class="fundoSuperior">
		<td valign="top">
			<table cellpadding="0" cellspacing="0" width="100%" height="100%" border="0" id="cabecalho">
				<tr>
					<td id="cabecalho_logo">
						<img src="visual/imagens/logo.jpg" title="Bramoto a maior rede de concessionrias HONDA do RS" />
					</td>
					<td align="right" valign="bottom" id="cabecalho_nav">
						<a href="main.jsp">Home</a>&nbsp;|&nbsp;
						<a href="mapa_do_site.jsp">Mapa do Site</a>&nbsp;|&nbsp;
						<a href="contato.jsp">Contato</a>
					</td>
				</tr>
				<tr>
					<td colspan="2" valign="bottom">
						<script>
								cabecalhoFlash();
						</script>
						
					</td>
				</tr>
				<tr valign="top" style="margin:auto;"> 
					<td colspan="2">
						<table cellpadding="0" cellspacing="0" border="0" style="height: 100%;margin: 0 auto;">
							<tr valign="top">
								<td valign="top" id="menu">
									<div id="nav">
										<uL>
											<li id="concessionarias">
													<a href="javascript:navMenu('concessionarias');" class="concessionarias">Concession&aacute;rias</a>
												<uL>
													<li><a href="concessionarias_santa_maria.jsp" alt="" title="Santa Maria">Santa Maria</a></li>
													<li><a href="concessionarias_cachoeira_do_sul.jsp" alt="" title="Cachoeira do Sul">Cachoeira do Sul</a></li>
													<li><a href="concessionarias_sao_borja.jsp" alt="" title="São Borja">S&atilde;o Borja</a></li>
													<li><a href="concessionarias_santiago.jsp" alt="" title="Santiago">Santiago</a></li>
													<li><a href="concessionarias_sao_gabriel.jsp" alt="" title="São Gabriel">S&atilde;o Gabriel</a></li>
													<li><a href="concessionarias_itaqui.jsp" alt="" title="Itaqui">Itaqui</a></li>
													<li><a href="concessionarias_seminovas.jsp" alt="" title="Seminovas">Bramoto Seminovas</a></li>
                                                    <li><a href="concessionarias_cacapava.jsp" alt="" title="Caçapava do Sul">Caçapava do Sul</a></li>
                                                    <li><a href="concessionarias_rosario.jsp" alt="" title="Rosário">Rosário do Sul</a></li>
												</uL>	
											</li>
											<li id="motos">
												<a href="motos.jsp" class="motos" id="linkMotos">Motos</a>
	
											</li>
											<li id="oficina">
												<a href="javascript:navMenu('oficina');" class="oficina">Oficina</a>
												<ul>
													<li><a href="oficina_assistencia_tecnica.jsp">Assist&ecirc;ncia T&eacute;cnica</a></li>
													<li><a href="oficina_pecas.jsp">Pe&ccedil;as</a></li>
												</ul>		
											</li>
											<li id="produtos">
												<a href="javascript:navMenu('produtos');" class="produtos">Produtos</a>
												<ul>
													<li><a href="produtos_boutique.jsp">Boutique</a></li>
													<li><a href="produtos_cnh.jsp">Cons&oacute;rcio Nacional Honda</a></li>
													<li><a href="produtos_financiamento.jsp">Financiamento Bramoto</a></li>
												</ul>		
											</li>			
										</uL>
									</div>
									<%
										String nav = "";
										if ( request.getServletPath().startsWith("/concessionarias_") ) {
											nav = "concessionarias";
										}
										if ( request.getServletPath().startsWith("/produtos_") ) {
											nav = "produtos";
										}
										if ( request.getServletPath().startsWith("/oficina_") ) {
											nav = "oficina";
										}
										if ( request.getServletPath().startsWith("/motos_") ) {
											nav = "motos";
										}
										if ( !nav.equals("") ) {
									%>
										<script>
											<!--
												navMenu("<%= nav %>");
											-->
										</script>
									<%
										} 
									%>
									
								</td>
								<td id="conteudo">