<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.Estilo1 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.Estilo3 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; }
-->
</style>
</head>

<body>
<form name="form1" method="post" action="">
  <table width="100%"  border="1" cellspacing="2" cellpadding="2">
    <tr>
      <td width="22%"><p class="Estilo1">Apellidos y Nombres de Autor/es<br>
      </p>      </td>
      <td width="56%"><input name="campoApellNombre" type="text" id="campoApellNombre"></td>
      <td width="56%"><span class="Estilo3">ej.:<br>
          <em>Gonz&aacute;lez, Jos&eacute; </em>o<br>
          <em>Gonz&aacute;lez, Jos&eacute; y otros </em>o<br>
          <em>Gonz&aacute;lez, Jos&eacute;; Fern&aacute;ndez, Juan y Ben&iacute;tez, Marcos</em>. </span></td>
    </tr>
    <tr>
      <td class="Estilo1">T&iacute;tulo</td>
      <td><textarea name="campoTitulo" rows="3" id="campoTitulo"></textarea></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="Estilo1">&Aacute;rea Tem&aacute;tica</td>
      <td><textarea name="campoAreaTematica" rows="3" id="campoAreaTematica"></textarea></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="Estilo1">Grupo Generador </td>
      <td><textarea name="campoGrupoGenerador" rows="3" id="campoGrupoGenerador"></textarea></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="Estilo1">Fecha de Publicaci&oacute;n </td>
      <td><input name="campoFecha" type="text" id="campoFecha"></td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td class="Estilo1">Nombre del archivo de documento</td>
      <td><input name="campoNombreArchivo" type="text" id="campoNombreArchivo"></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</body>
</html>
