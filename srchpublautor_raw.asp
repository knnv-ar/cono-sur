<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!--#include file="Connections/connObservatorio.asp" -->
<%
var rsPublicAutor = Server.CreateObject("ADODB.Recordset");
rsPublicAutor.ActiveConnection = MM_connObservatorio_STRING;
rsPublicAutor.Source = "SELECT publicAutor, publicTitulo, publicAreaTematica, publicGrupoGenerador, publicFecha, publicNombreDoc FROM publicaciones ORDER BY publicAutor ASC";
rsPublicAutor.CursorType = 0;
rsPublicAutor.CursorLocation = 2;
rsPublicAutor.LockType = 1;
rsPublicAutor.Open();
var rsPublicAutor_numRows = 0;
%>
<%
var Repeat1__numRows = -1;
var Repeat1__index = 0;
rsPublicAutor_numRows += Repeat1__numRows;
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.Estilo6 {color: #FF0000}
-->
</style>
</head>

<body>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><p>&nbsp;</p>
      <p class="Verd2">Resultados de b&uacute;squeda <strong>por Autor</strong> </p>
      
      <% while ((Repeat1__numRows-- != 0) && (!rsPublicAutor.EOF)) { %>
      <p class="Verd2"><strong>Apellido/s y nombre/s: <%=(rsPublicAutor.Fields.Item("publicAutor").Value)%></strong><br>
          <strong><em>T&iacute;tulo de la publicaci&oacute;n</em></strong>: <strong><em><%=(rsPublicAutor.Fields.Item("publicTitulo").Value)%></em></strong><br>
&Aacute;rea tem&aacute;tica: <%=(rsPublicAutor.Fields.Item("publicAreaTematica").Value)%><br>
  Grupo generador: <%=(rsPublicAutor.Fields.Item("publicGrupoGenerador").Value)%><br>
  Fecha de publicaci&oacute;n: <%=(rsPublicAutor.Fields.Item("publicFecha").Value)%><br>
  <span class="Estilo6">Descarga de archivo</span>: <a href="docs/<%=(rsPublicAutor.Fields.Item("publicNombreDoc").Value)%>"><img src="img/icon_dwnld_file.gif" width="16" height="16" border="0"></a></p>
      <p class="Verd2">&nbsp;</p>
      <%
  Repeat1__index++;
  rsPublicAutor.MoveNext();
}
%>
      <p>&nbsp;</p>
    <p>&nbsp; </p>
    <p>&nbsp;</p></td>
  </tr>
</table>
</body>
</html>
<%
rsPublicAutor.Close();
%>
