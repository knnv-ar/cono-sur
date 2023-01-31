<%@LANGUAGE="JAVASCRIPT" CODEPAGE="1252"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Documento sin t&iacute;tulo</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_jumpMenuGo(selName,targ,restore){ //v3.0
  var selObj = MM_findObj(selName); if (selObj) MM_jumpMenu(targ,selObj,restore);
}
//-->
</script>
</head>

<body>

<p>&nbsp;</p>
<p>&nbsp;</p>
<form name="form1">
  B&uacute;squeda
  <select name="publicBusqueda" onChange="MM_jumpMenu('parent',this,0)">
    <option value="srchpublautor.asp" selected>por Autor</option>
    <option value="srchtitulo.asp">por Título</option>
    <option value="srchtema.asp">por Temática</option>
    <option value="srchinstgen.asp">por Institución generadora</option>
    <option value="srchfecha.asp">por Fecha de publicación</option>
    <option value="srchisarg.asp">por Informes semanales ARGENTINA</option>
    <option value="srchisbra.asp">por Informes semanales BRASIL</option>
    <option value="srchischi.asp">por Informes semanales CHILE</option>
    <option value="srchisuru.asp">por Informes semanales URUGUAY</option>
    <option value="srchisesp.asp">por Informes semanales ESPECIALES</option>
  </select>
  <input type="button" name="Button1" value="Realizar b&uacute;squeda" onClick="MM_jumpMenuGo('publicBusqueda','parent',0)">
</form>
</body>
</html>
