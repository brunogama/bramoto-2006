<%@page import="java.sql.Connection"%>

<%
	Connection con = null;
	try {
%>

<%
	Class.forName( "org.postgresql.Driver" );
	con = java.sql.DriverManager.getConnection( "jdbc:postgresql://postgres246.locaweb.com.br/bramoto_1", "bramoto_1", "bgama019080" );
%>

<%=con.getMetaData().getUserName()%>

<%
	} finally {
		if ( con != null )
			con.close();
	}
%>