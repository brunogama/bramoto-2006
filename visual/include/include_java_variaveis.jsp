<%
	// Inicializacao de variaveis
	String contexto = request.getContextPath();
	String servidor = request.getServerName();
	String porta = ""+request.getServerPort()+"";
	// Monta URL da aplicacao completa
	String URLApp = "http://"+servidor+":"+porta+contexto+"/";
	
	if ( request.getParameter("enviado") != null ) {
		if ( request.getParameter("enviado").equals("1") ) {
			contatoVO.setNome( request.getParameter("nome") );
			contatoVO.setComentario( request.getParameter("comentario") );
			contatoVO.setEmail( request.getParameter("email") );
			String para = cpDAO.getContatoById( Integer.parseInt( request.getParameter( "area" ) ) ).getEmail();
			web.setURL( URLApp+"contato_email.jsp" );
			//String url = "http://127.1.1.1:1234/bramoto/contato_email.jsp";
			msg.setTo( para );
			msg.setFrom("bgama@brturbo.com");
			msg.setSubject("Contato Efetuado Pelo Site");
			msg.setText( web.getSource() );
			m.send( msg );
			/**/
		}
	}	
%>