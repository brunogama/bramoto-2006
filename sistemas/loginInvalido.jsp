<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@ include file="../visual/include/sistemas/include_head.jsp" %>
</head>
<body>
<%@ include file="../visual/include/sistemas/include_body_topo.jsp" %>
<div id="conteudo">
		<h1 class="acesso">Acesso restrito</h1>
		<hr noshade="noshade" size="1" color="#db214c"/>
		<p class="erro">
			Login ou senha inv&aacute;lidos. 
		</p>
		<p class="erro">
			Por favor digite corretamente o seu login e senha e logo ap&oacute;s clique em &quot;Acessar&quot;.
		</p>
		<form method="POST" action="j_security_check" name="formAcesso">
			<label for="log">Login:</label><input size=15 name="j_username" id="log" class="txtMed"><br />
			<label for="pass">Senha:</label><input type="password" size=15 name="j_password" id="pass" class="txtMed"><br />
			<a href="javascript:document.formAcesso.submit()"><b>Acessar</b></a>
		</form>
	</div>
</div><%-- final div conteudo --%>
<%@ include file="../visual/include/sistemas/include_body_rodape.jsp" %>
</body>
</html>

</body>
</html>
