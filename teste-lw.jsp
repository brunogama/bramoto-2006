<%@page language="java" import="java.io.*,java.sql.*,javax.sql.*,javax.naming.*" %> 
<html> 
<head> 
<title></title> 
</head> 

<body> 
<% 
ResultSet rs; 
String sql; 

try { 
Class.forName("org.postgresql.Driver"); 
Connection connection = DriverManager.getConnection("jdbc:postgresql://postgresql01.bramoto.com/bramoto_1", "bramoto_1", "bgama019080"); 
Statement stmt = connection.createStatement(); 

sql = "select * from contato"; 
rs = stmt.executeQuery(sql); 
out.println("Conectado."); 


connection.close(); 
} catch (SQLException sqle) { 

out.write("OCORREU UMA PROBLEMA - FAVOR INFORMAR ADMINISTRADOR POR email@email.com.br!<br><br>Exception::<br>" + sqle); 
sqle.printStackTrace(); 

} finally { 

} 
%> 
</body> 
</html> 
