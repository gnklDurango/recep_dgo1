<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%
String usu_jv="dd";
try {
       		usu_jv=request.getParameter("usu");       			   
	  } catch (Exception e) { }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>Bienvenido :: SISTEMA DE CAPTURA DE MEDICAMENTO ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_travel2.css" type="text/css" />
<script language="JavaScript" type="text/javascript">
//--------------- LOCALIZEABLE GLOBALS ---------------
var d=new Date();
var monthname=new Array("January","February","March","April","May","June","July","August","September","October","November","December");
//Ensure correct for language. English is "January 1, 2004"
var TODAY = monthname[d.getMonth()] + " " + d.getDate() + ", " + d.getFullYear();
//---------------   END LOCALIZEABLE   ---------------
</script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
body {
	background-color: #E6E6E6;
}
.style2 {
	color: #333333;
	font-size: 10px;
}
.style3 {font-family: Arial, Helvetica, sans-serif}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #000033;
}
a:visited {
	color: #990000;
}
.Estilo1 {color: #990000}
.Estilo2 {
	color: #0000CC;
	font-size: 14px;
}
.Estilo3 {
	font-size: 16px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<p>
  <%
String usuario="";
usuario=""+(session.getAttribute("username"));
if(usuario.equals("null") || usuario.equals("")){
%>
  
  <%}%>
</p>
<table width="1326" height="449" border="6" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
    <td width="1304" height="445"><table width="100%" height="435" border="0" cellpadding="0" cellspacing="0">
      <tr bgcolor="#3366CC">
        <td colspan="3" rowspan="2" bgcolor="#FFFFFF"><div align="center"><img src="logo_conjun.jpg" width="189" height="67" /></div></td>
        <td height="63" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="left">MEN&Uacute; DE OPCIONES-FORMATO DE RECEPCI&Oacute;N </div></td>
        <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr bgcolor="#3366CC">
        <td height="64" colspan="3" align="center" valign="top" bgcolor="#FFFFFF" id="tagline"><div align="justify"><strong><span class="style1"><span class="Estilo1">Bienvenido(a)</span> <span class="Estilo2"><%=usu_jv%></span></span></strong></div></td>
        <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
      </tr>
      <tr bgcolor="#CCFF99">
        <td height="25" bgcolor="#009999" id="dateformat" >&nbsp;&nbsp;
            <script language="JavaScript" type="text/javascript">
      	</script>
          <a href="index_mainARdgo.jsp">Regresar a Men&uacute; Principal</a></td>
        <td height="25" bgcolor="#009999" id="dateformat" >&nbsp;</td>
        <td width="4" height="25" bgcolor="#009999" id="dateformat" >&nbsp;</td>
        <td width="383" height="25" bgcolor="#009999" id="dateformat" >&nbsp;</td>
        <td height="25" bgcolor="#009999" id="dateformat" >&nbsp;</td>
        <td height="25" bgcolor="#009999" id="dateformat" >&nbsp;</td>
        <td height="25" bgcolor="#FFFFFF" id="dateformat" >&nbsp;</td>
      </tr>
      <tr>
        <td colspan="7" bgcolor="#FFFFFF"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
      </tr>
      <tr>
        <td width="225" valign="top" bgcolor="#E6F3FF"><table border="0" cellspacing="0" cellpadding="0" width="165" id="navigation">
            <tr>
              <td width="165">&nbsp;<br />
                &nbsp;<br /></td>
            </tr>
            <tr>
              <td width="165"><a href="captura_provdgo.jsp" class="navText">Capturar</a></td>
            </tr>
            <tr>
              <td width="165"><a href="captura_provedgo.jsp" class="navText">Altas Proveedor </a></td>
            </tr>
            <tr>
              <td width="165"><a href="reg_nuevadgo.jsp" class="navText">Agregar Lote</a></td>
            </tr>
            <tr>
              <td width="165"><a href="consulta_prov1.jsp" class="navText">Consultar</a></td>
            </tr>
          </table>
           
          <div align="center" class="style3"><strong><span class="style2">Calle Cali S/N esq. Av. Las Américas <br />
           Fracc. Guadalupe <br />
            CP 34220, DURANGO, DGO<br />
            Tel 01 618 810 3716<br />
          <a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></span></strong></div></td>
        <td width="63"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
        <td colspan="2" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" /><br />
          &nbsp;<br />
          &nbsp;<br />
          <table border="0" cellspacing="0" cellpadding="0" width="305">
            <tr>
              <td class="pageName Estilo3">Men&uacute; de Opciones </td>
            </tr>
            <tr>
              <td class="bodyText"><br />
              <p><a href="captura_prov-now09Jul09_i.jsp?usu=<%=usu_jv%>&ocom=">Capturar Medicamento </a></p>
                <p><a href="catalogo_proveedgo.jsp">Proveedores</a></p>
                <p><a href="reg_nuevadgo.jsp">Agregar Lotes</a></p>
                <p><a href="consulta_prov1dgo.jsp">Consultar Recepci&oacute;n de Proveedores</a></p>
                </p></td>
            </tr>
          </table>
           <br />        </td>
        <td width="62"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
        <td width="563" valign="top"><br />
          &nbsp;<br />
          <table border="0" cellspacing="0" cellpadding="0" width="145">
            <tr>
              <td colspan="3" class="subHeader" align="center">&nbsp;</td>
            </tr>
            <tr>
              <td width="40"><img src="mm_spacer.gif" alt="" width="40" height="1" border="0" /></td>
              <td width="110" id="sidebar" class="smallText"><br />
              <p align="center"><br />
                .<br />
                <a href="javascript:;"></a></p>
                <p><br />
              </p>
                 <br />
                &nbsp;<br />
                &nbsp;<br />              </td>
              <td width="13">&nbsp;</td>
            </tr>
          </table></td>
        <td width="4">&nbsp;</td>
      </tr>

    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
