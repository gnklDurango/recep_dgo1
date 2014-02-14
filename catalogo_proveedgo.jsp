<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>
<% 
String modificar_jv="";
Class.forName("org.gjt.mm.mysql.Driver"); 
   Connection conne_1 = DriverManager.getConnection
                         ("jdbc:mysql://localhost/dgo");
   Statement stmt_2 = conne_1.createStatement();
   ResultSet rset_2 = stmt_2.executeQuery("select distinct * from provee_all order by F_nomprov;");
   //rset_2.execute("commit");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>

<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: Reporte de Salidas por Fechas ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
a:visited {
	color: #990000;
}
a:hover {
	color: #FFFFFF;
}
body {
	background-color: #E6E6E6;
}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #000033;
}
.style2 {color: #000000}
body,td,th {
	color: #000000;
}
-->
</style>
</head>
<body>
<form action="catalogo_provee.jsp" method="post" name="form">
  <table width="837" border="6" align="center" cellpadding="2">
    <tr>
      <td width="815"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#99ccff">
          <td width="15" nowrap="nowrap" bgcolor="#FFFFFF">&nbsp;</td>
          <td height="60" colspan="2" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><div align="right"><br />
              <img src="logo_conjun.jpg" width="249" height="47" /></div>
            <span class="style2">CAT&Aacute;LOGO DE PROVEEDORES</span></td>
          <td width="19" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr bgcolor="#003399">
          <td width="15" nowrap="nowrap" bgcolor="#009999">&nbsp;</td>
          <td height="14" colspan="2" nowrap="nowrap" bgcolor="#009999" class="navText" id="navigation">&nbsp;&nbsp;<a href="menu_mainAR.jsp">Regresar a Men&uacute;</a></td>
          <td bgcolor="#009999">&nbsp;</td>
        </tr>
        <tr bgcolor="#ffffff">
          <td width="15" valign="top"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
          <td width="35" valign="top"><img src="mm_spacer.gif" alt="" width="35" height="1" border="0" /></td>
          <td width="746" valign="top"><br />
              <table width="710" cellpadding="2" cellspacing="01" border="0" id="calendar">
                <tr id="noborder">
                  <td colspan="7" class="subHeader style2">CAT&Aacute;LOGO DE PROVEEDORES </td>
                </tr>
                <tr id="weekdays" bgcolor="#003399">
                  <th width="70%" align="center" bgcolor="#001E5B" class="smallText">NOMBRE DEL PROVEEDOR</th>
                  <th width="30%" align="center" bgcolor="#003366" class="smallText"></th>
                </tr>
                <% while (rset_2.next()) 
                  { %>
                <tr id="calheader" bgcolor="#ffffcc">
                  <td valign="top" align="center" class="smallText"><%= rset_2.getString("F_nomprov") %></td>
                  <% 
	  		modificar_jv=rset_2.getString("F_ClaPrv");
	  		//out.print("valor "+modificar_jv);
%>
                  <td valign="top" align="center" class="smallText"><input type="button" name="btn_<%=modificar_jv%>" class="subHeader" value="Modificar" onclick='location.href=&quot;modifica_provee.jsp?id_provee=<%=modificar_jv%>&quot;'/></td>
                </tr>
                <%    	 
           }%>
                <tr>
                  <td height="50" colspan="2" valign="top" class="smallText"><label>
                    <input name="btn_nuevo" type="button" class="subHeader" value="Nuevo" onclick='location.href=&quot;captura_prove.jsp&quot;'/>
                  </label></td>
                </tr>
              </table>
             <br />
            &nbsp;<br />
          </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td width="15">&nbsp;</td>
          <td width="35">&nbsp;</td>
          <td width="746">&nbsp;</td>
          <td width="19">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>
