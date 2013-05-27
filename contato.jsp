<%@ include file="visual/include/include_java_topo.jsp"%>
<%@ page errorPage="errorPage.jsp?pagina=contato.jsp" %>

<jsp:useBean id="m" scope="page" class="br.com.brg.adm.email.Email" />
<jsp:useBean id="cpDAO" scope="page" class="br.com.brg.caixaspostais.CaixaPostalDAO" />
<jsp:useBean id="web" scope="request" class="br.com.brg.adm.w3.WebSource" />

<jsp:useBean id="contatoVO" scope="session" class="br.com.brg.adm.contato.contatoVO" />

<%
	boolean send = false;
	if ( request.getParameter("enviado") != null ) {	
		if ( request.getParameter("enviado").equals("1") ) {			
			contatoVO.setNome( request.getParameter("fName") );
			contatoVO.setComentario( request.getParameter("fComent") );
			contatoVO.setEmail( request.getParameter("fEmail") );
			contatoVO.setTelefone( request.getParameter("fTelefone") );
			String URLApp = "http://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";
			m.setTo( "bramotoatendimento@terra.com.br" );
			//m.setTo( "bruno@brunogama.net" );
			m.setFrom( "bramoto.com <contato@bramoto.com>" );
			m.setAssunto("Contato Efetuado Pelo Site");
			m.setConteudo( web.getSource( response.encodeURL( URLApp+"contato_email.jsp;jsessionid="+session.getId() ) ) );
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
<h1 class="contato">Contato</h1>
<hr  noshade="noshade" size="1" />
<h2 class="fale_conosco">Fale Conosco</h2>
<p class="primeiro">
Utilize nossos endereços ou o formulário abaixo para enviar seus comentários, dúvidas ou sugestões. Suas informações são muito importantes para a manutenção de uma Bramoto cada vez melhor. Responderemos com grande satisfação.
</p>
<p align="center">
	<fieldset>
		<form method="post" action="contato.jsp" id="formularioContato" name="formularioC" onsubmit="return checkForm()">
			<label for="Nome">Nome:</label><input type="text" name="fName" id="Nome" class="cxTxtMed" tabindex="1" /><br />
			<label for="Email">E-mail:</label><input type="text" name="fEmail" id="Email" class="cxTxtMed" tabindex="2" /><br />
            <label for="Telefone">Telefone (Residencial/Celular): </label><input type="text" name="fTelefone" id="Telefone" class="cxTxtMed" tabindex="3" maxlength="14" onkeypress="mascara(this,telefone)" /><br /><br />

				<label for="Comentario">Comentario:</label>
				<textarea rows="5" class="cxTxtMed" id="Comentario" name="fComent" tabindex="4"></textarea>
				<br />
				<label for="Enviar">&nbsp;</label>
				<input type="submit" class="btn" id="Enviar" value="Enviar"/>
				<input type="reset" value="Limpar" id="rBtn" class="btn" />
				<input type="hidden" name="enviado" value="1"  />
				<input type="hidden" name="Area" value="1"  />
		</form>
	</fieldset>
</p>
<script>
	document.forms[0].elements[0].focus();
</script>
<%-- /Conteudo --%>
<%@ include file="visual/include/include_rodape.jsp"%>
</body>
<%@ include file="visual/include/include_java_rodape.jsp"%>
</html>
<%	if ( send ) { %>
	<script language="javascript">
		<!--
			alert("Contato realizado com sucesso.");		
		-->
	</script>
<%}%>
