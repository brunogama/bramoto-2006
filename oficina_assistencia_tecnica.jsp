<%@ include file="visual/include/include_java_topo.jsp"%>
<%@ page errorPage="errorPage.jsp?pagina=oficina_assistencia_tecnica.jsp" %>

<jsp:useBean id="m" scope="page" class="br.com.brg.adm.email.Email" />
<jsp:useBean id="preDAO" scope="request" class="br.com.brg.preagendamento.PreAgendamentoDAO" />
<jsp:useBean id="web" scope="request" class="br.com.brg.adm.w3.WebSource" />

<jsp:useBean id="contatoVO" scope="session" class="br.com.brg.adm.contato.contatoVO" />

<%
	boolean send = false;
	if ( request.getParameter("enviado") != null ) {	
		if ( request.getParameter("enviado").equals("1") ) {
			contatoVO.setNome( request.getParameter("fName") );
			contatoVO.setTelefone( request.getParameter("fPhone") );
			contatoVO.setMoto( request.getParameter("fMoto") );
			contatoVO.setDataPretendida( ""+ request.getParameter("fDia") +"/"+ request.getParameter("fMes") +"/"+ request.getParameter("fAno") + "" );
			contatoVO.setComentario( request.getParameter("fComent") );
			contatoVO.setEmail( request.getParameter("fMoto") );
			contatoVO.setEmail( request.getParameter("fEmail") );
			String URLApp = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
			m.setTo( preDAO.getContatoById( Integer.parseInt( request.getParameter( "area" ) ) ).getEmail() );
			//m.setBcc("bgamap@gmail.com");
			m.setFrom( "bramoto.com <contato@bramoto.com>" );
			m.setAssunto("Pré-agendamento");
			m.setConteudo( web.getSource( response.encodeURL( URLApp+"oficina_email.jsp;jsessionid="+session.getId() ) ) );
			m.send();
			send = true;
		}
	}	
%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="visual/include/include_head.jsp"%>

</head>
<body>
<%@ include file="visual/include/include_topo.jsp"%>
<%-- Conteudo --%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" %>
<h1 class="oficina">Oficina</h1>
<hr  noshade="noshade" size="1" />
<h2 class="assistencia_tecnica">Assistência Técnica</h2>
<p align="center" class="primeiro">
	<img src="visual/imagens/oficina_infra_estrutura.jpg" title="Infra-estrutura Bramoto Santa Maria" />	
</p>
<p>
A Bramoto oferece a melhor infra-estrutura e tecnologia para a manutenção de sua Honda, mecânicos com treinamento de fábrica e profissionais especializados no atendimento pós-venda. 
</p>
<p class="primeiro">
	<a href="#"><h3>Agende uma visita</h3></a>
	<p id="formAgende">		
		Atenção, todos os dados são obrigatórios!
		<form method="post" id="formAgendamento" action="oficina_assistencia_tecnica.jsp" onsubmit="return checkForm()">
			<div class="row">
			<label for="fNomeCompleto">Nome Completo:</label><input type="text" name="fName" id="fNomeCompleto" class="cxTxtMed" />
			</div>
			<div class="row">
			<label for="fEmail">E-mail:</label><input type="text" name="fEmail" id="fEmail" class="cxTxtMed" />
			</div>
			<div class="row">			
			<label for="fPhone">Telefone para contato:</label><input type="text" name="fPhone" id="fPhone" class="cxTxtMed" />
			</div>
			<div class="row">			
			<label for="fMoto">Moto:</label><input type="text" name="fMoto" id="fMoto" class="cxTxtMed" />
			</div>
			<div class="row">			
			<label for="area">Concessionária para o serviço:</label>
				<select name="area" id="area" class="cxTxtMed" >
						<%	
							List lista = preDAO.getListaById();
							for ( int i = 0; i<lista.size();i++ ) {	
							PreAgendamentoVO pre = (PreAgendamentoVO) lista.get(i);
						%>
							<option value="<%=pre.getId()%>"><%=pre.getNome()%></option>
						<% } %>
					</select>
			</div>
			<div class="row">
				<label>Data pretendida:</label>
						<select name="fDia" class="cxTxtMed2digt" />
						<% for (int i=1;i<=31;i++) { %>
							<option value="<%=i%>"><%=i%></option>
						<%}%>
						</select>
						/
						<select name="fMes" class="cxTxtMed2digt">
						<% for (int i=1;i<=12;i++) { %>
							<option value="<%=i%>"><%=i%></option>
						<%}%>                                            
						</select>
						/
						<select name="fAno" class="cxTxtMed4digt">
						<% for (int i=2009;i<=2015;i++) { %>
							<option value="<%=i%>"><%=i%></option>
						<%}%>                                            
						</select>
			</div>
			<div class="row">
				<label for="fComent">Descri&ccedil;&atilde;o do servi&ccedil;o:</label>
					<textarea name="fComent" id="fComent" class="cxTxtMed" ></textarea>
			</div>
					
					<input type="hidden" name="enviado" value="1"  />
			<div class="row">
					<label for="btnSubmit">&nbsp;</label><input type="submit" value="Enviar" id="btnSubmit" class="btn" /> <input type="reset" value="Limpar" class="btn" />
			</div>
		</form>		
	</p>
	<img src="visual/imagens/gimmik_oficina.jpg" title="" alt="" class="gimmik" style="float:right;"/>
</p>
<%-- /Conteudo --%>
<%@ include file="visual/include/include_rodape.jsp"%>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
<script>
	document.forms[0].elements[0].focus();
</script>
<%	if ( send ) { %>
	<script>
		alert("Em breve iremos confirmar seu pré-agendamento.");
	</script>
<%}%>