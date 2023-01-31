<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!--#include file="Connections/connObservatorio.asp" -->
<%
// *** Edit Operations: declare variables

// set the form action variable
var MM_editAction = Request.ServerVariables("SCRIPT_NAME");
if (Request.QueryString) {
  MM_editAction += "?" + Server.HTMLEncode(Request.QueryString);
}

// boolean to abort record edit
var MM_abortEdit = false;

// query string to execute
var MM_editQuery = "";
%>
<%
// *** Insert Record: set variables

if (String(Request("MM_insert")) == "form1") {

  var MM_editConnection = MM_connObservatorio_STRING;
  var MM_editTable  = "publicaciones";
  var MM_editRedirectUrl = "addpublicok.asp";
  var MM_fieldsStr = "publicAutor|value|publicTitulo|value|publicAreaTematica|value|publicGrupoGenerador|value|publicFecha|value|publicNombreDoc|value";
  var MM_columnsStr = "publicAutor|',none,''|publicTitulo|',none,''|publicAreaTematica|',none,''|publicGrupoGenerador|',none,''|publicFecha|',none,NULL|publicNombreDoc|',none,''";

  // create the MM_fields and MM_columns arrays
  var MM_fields = MM_fieldsStr.split("|");
  var MM_columns = MM_columnsStr.split("|");
  
  // set the form values
  for (var i=0; i+1 < MM_fields.length; i+=2) {
    MM_fields[i+1] = String(Request.Form(MM_fields[i]));
  }

  // append the query string to the redirect URL
  if (MM_editRedirectUrl && Request.QueryString && Request.QueryString.Count > 0) {
    MM_editRedirectUrl += ((MM_editRedirectUrl.indexOf('?') == -1)?"?":"&") + Request.QueryString;
  }
}
%>
<%
// *** Insert Record: construct a sql insert statement and execute it

if (String(Request("MM_insert")) != "undefined") {

  // create the sql insert statement
  var MM_tableValues = "", MM_dbValues = "";
  for (var i=0; i+1 < MM_fields.length; i+=2) {
    var formVal = MM_fields[i+1];
    var MM_typesArray = MM_columns[i+1].split(",");
    var delim =    (MM_typesArray[0] != "none") ? MM_typesArray[0] : "";
    var altVal =   (MM_typesArray[1] != "none") ? MM_typesArray[1] : "";
    var emptyVal = (MM_typesArray[2] != "none") ? MM_typesArray[2] : "";
    if (formVal == "" || formVal == "undefined") {
      formVal = emptyVal;
    } else {
      if (altVal != "") {
        formVal = altVal;
      } else if (delim == "'") { // escape quotes
        formVal = "'" + formVal.replace(/'/g,"''") + "'";
      } else {
        formVal = delim + formVal + delim;
      }
    }
    MM_tableValues += ((i != 0) ? "," : "") + MM_columns[i];
    MM_dbValues += ((i != 0) ? "," : "") + formVal;
  }
  MM_editQuery = "insert into " + MM_editTable + " (" + MM_tableValues + ") values (" + MM_dbValues + ")";

  if (!MM_abortEdit) {
    // execute the insert
    var MM_editCmd = Server.CreateObject('ADODB.Command');
    MM_editCmd.ActiveConnection = MM_editConnection;
    MM_editCmd.CommandText = MM_editQuery;
    MM_editCmd.Execute();
    MM_editCmd.ActiveConnection.Close();

    if (MM_editRedirectUrl) {
      Response.Redirect(MM_editRedirectUrl);
    }
  }

}
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<form method="POST" action="<%=MM_editAction%>" name="form1">
  <table align="center">
    <tr>
      <td nowrap align="right" valign="top">Autor/es de la publicación</td>
      <td valign="baseline">
        <textarea name="publicAutor" cols="50" rows="5"></textarea>
      </td>
    </tr>
    <tr>
      <td nowrap align="right" valign="top">Título de la publicación</td>
      <td valign="baseline">
        <textarea name="publicTitulo" cols="50" rows="5"></textarea>
      </td>
    </tr>
    <tr>
      <td nowrap align="right" valign="top">Área Temática</td>
      <td valign="baseline">
        <textarea name="publicAreaTematica" cols="50" rows="5"></textarea>
      </td>
    </tr>
    <tr>
      <td nowrap align="right" valign="top">Grupo Generador</td>
      <td valign="baseline">
        <textarea name="publicGrupoGenerador" cols="50" rows="5"></textarea>
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">Fecha de publicación</td>
      <td>
        <input type="text" name="publicFecha" value="" size="32">
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">Nobre de archivo de documento</td>
      <td>
        <input type="text" name="publicNombreDoc" value="" size="32">
      </td>
    </tr>
    <tr valign="baseline">
      <td nowrap align="right">&nbsp;</td>
      <td>
        <input name="Sumit" type="submit" id="Sumit" value="Insertar registro">
      </td>
    </tr>
  </table>
  <input type="hidden" name="MM_insert" value="form1">
</form>
<p>&nbsp;</p>
</body>
</html>
