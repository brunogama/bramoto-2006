	<div id="nav">
		<div>
			<p>
				<%= request.getRemoteUser() %> | <a href="logoff.jsp">sair</a>
			</p>
		</div><%-- final div usuario--%>
		<ul>
			<li>
				<a href="noticias.jsp">Noticias</a>
				<ul>
					<li><a href="noticias_add.jsp">Adicionar noticia</a></li>
					<li><a href="noticias_del.jsp">Remover noticia</a></li>
				</ul>
			</li>
		</ul><%-- fina ul menu --%>
	</div><%-- final div nav --%>