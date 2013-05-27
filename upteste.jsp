<HTML>
  <HEAD>
    <META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1252"/>
    <TITLE>File Upload Page</TITLE>
  </HEAD>
<BODY>Upload Files
    <FORM name="filesForm" action="ProcessFileUpload.jsp"
    method="post" enctype="multipart/form-data">
        <p>File 1:
          <input type="file" name="file1"/>
      </p>
        <p>Teste: <input type="text" name="textoteste"/><br/>
          <input type="submit" name="Submit" value="Upload Files"/>
              </p>
    </FORM>
	<%= application.getRealPath( "/sistemas.public/" ) %>
</BODY>
</HTML>