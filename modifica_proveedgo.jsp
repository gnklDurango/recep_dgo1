<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>

<% Class.forName("org.gjt.mm.mysql.Driver");
	 String nombre="";
     String but="r";
	 try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
	
	 String clave="";	 
	 
	 String user="h";
		
		String id_prov_jv="0";
 	  try {
       		id_prov_jv = request.getParameter("id_provee");       			   
	  } catch (Exception e) { }
	if(but.equals("Modificar"))
     {
	 nombre =  request.getParameter("txtf_7");
	 
	 int c1=0;
		String clave1="";
		//String usua="";
		//código que conecta un codigo con una bdd usando jdbc
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/gnk");
		Statement stmt=conn.createStatement();
		//out.print("ttt"+check);	System.out.print("GNK");
		ResultSet rset=stmt.executeQuery("select F_nomprov from provee_all");
		while(rset.next())
		{
		 clave1=rset.getString("F_nomprov");
		 System.out.println("NAME FROM THE DATABASE"+clave1);
		 if(clave1.equals(nombre))
		 {
		    //out.print("existe");
			//response.sendRedirect("exito_cap.jsp"); 
		 c1=1;
		 }
		   //else
		    //response.sendRedirect("error_clave.jsp");
		    //out.print("no existe");
		    //response.sendRedirect("menu_cap.jsp"); 
		 }
		 if(c1==1)
		   response.sendRedirect("error_provmod.jsp?id_provee="+id_prov_jv);
		 	 
	 //Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/gnk");    
     //Statement stmt = conn.createStatement();				  
     stmt.execute("commit"); 
 	 if(!(nombre.equals("")) && !(nombre.equals("0")) && c1==0){ 
 	
			//stmt_fol.execute("update datos_small_fol set status=status+1 where folio_rece='"+folio+"'");
			//update bdd_prov set nombre_provee='DIMESA' where id_prove='1';
			 
	 		stmt.execute("update provee_all set F_nomprov='"+nombre+"' where F_ClaPrv='"+id_prov_jv+"'");	
				 
	 		%>
			<script>			
			 		alert("Los datos han sido guardados");
  			</script>
  				<%
  				}else{
  				%>
  			<script>
  			alert("NECESITAS INGRESAR EL NOMBRE DE MANERA CORRECTA, intentalo nuevamente");
  </script>
  <%
  }  
     }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: Alta de Proveedor ::</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #E6E6E6;
}
a:link {
	color: #000066;
}
a:visited {
	color: #990000;
}
.style2 {color: #000000}
.style3 {color: #333333}
-->
</style>
</head>
<body onLoad="fillCategory_Area();">
<form action="modifica_provee.jsp?id_provee=<%=id_prov_jv%>" method="post" name="form1" >
  <table width="1083" border="6" align="center" cellpadding="2">
    <tr>
      <td width="1061" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr bgcolor="#99ccff">
          <td width="47" nowrap="nowrap" bgcolor="#FFFFFF" ><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
          <td height="60" colspan="3" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><div align="right"><img src="logo_conjun.jpg" width="191" height="52" /><br />
            </div>
            EDICI&Oacute;N DEL NOMBRE DEL PROVEEDOR <span class="tagline">| EDITE EL NOMBRE </span></td>
          <td width="76" bgcolor="#FFFFFF">&nbsp;</td>
          <td width="203" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr bgcolor="#003399">
          <td width="47" nowrap="nowrap" bgcolor="#009999">&nbsp;</td>
          <td height="18" colspan="3" nowrap="nowrap" bgcolor="#009999" class="style2" id="navigation"><span class="style2"><a href="catalogo_proveedgo.jsp">Regresar a Cat&aacute;logo de Proveedores |</a> <a href="menu_mainAR.jsp">Regresar a Men&uacute; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a></span></td>
          <td width="76" bgcolor="#009999">&nbsp;</td>
          <td width="203" bgcolor="#009999">&nbsp;</td>
        </tr>
        <tr bgcolor="#ffffff">
          <td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
        <tr bgcolor="#ffffff">
          <td colspan="2" valign="top" bgcolor="#ffffcc"><table border="0" cellspacing="0" cellpadding="0" width="230">
              <tr>
                <td width="15">&nbsp;</td>
                <td width="200" class="smallText" id="padding"><p align="center"><img src="gnk_toluca.jpg" width="103" height="86" /></p>
                    <p align="center"><strong><span class="style3">Av. Emiliano Zapata lote 2 </span><span class="style3"><br />
Parque Industrial Lerma <br />
CP 52050<br />
Tel 01 800 465 2222<br />
                    </span><a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></strong><br />
                    &nbsp;<br />
                  </p>
                  </td>
                <td width="15">&nbsp;</td>
              </tr>
          </table></td>
          <td width="50" valign="top" bgcolor="#ffffff"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
          <td width="501" valign="top" bgcolor="#ffffff"><br />
            &nbsp;<span class="pageName">Edite el Nombre del Proveedor </span><br />
            <table border="0" cellspacing="0" cellpadding="0" width="440">
              <%
  			Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/gnk");
  			Statement stmt__001 = conn__001.createStatement();  
  			ResultSet rset__001=null;
  			//select distinct * from bdd_prov where id_prove='1';
  				rset__001=stmt__001.executeQuery("select distinct * from provee_all where F_ClaPrv='"+id_prov_jv+"'");
  			
  //out.print("clave"+folgnk_jv);
   			while(rset__001.next()) 
                  {
				  	nombre=rset__001.getString("F_nomprov");							   
				  }
%>
              <tr>
                <td colspan="3" class="bodyText"><table width="442" border="0">
                  <tr>
                    <td>CLAVE:</td>
                    <td colspan="2"><input name="txtf_nocot" type="text" size="4" value="<%=id_prov_jv%>"/></td>
                  </tr>
                  <tr>
                    <td width="74">NOMBRE:</td>
                    <td width="335"><input name="txtf_7" type="text" size="60" onKeyPress="capLock(event)" onChange="toUppercaseMP()" value="<%=nombre%>"/></td>
                    <td width="19">&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><input name="Submit" type="submit" class="subHeader" value="Modificar" /></td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
              <p>&nbsp;</p>
                  <br />
                </td>
              </tr>
            </table></td>
          <td width="76" bgcolor="#ffffff">&nbsp;</td>
          <td width="203">&nbsp;</td>
        </tr>
        <tr bgcolor="#ffffff">
          <td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
        <tr>
          <td height="18" colspan="6">&nbsp;</td>
        </tr>
        <tr bgcolor="#003399">
          <td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
        <tr>
          <td height="20" colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
        </tr>
        <tr bgcolor="#003399">
          <td colspan="6" bgcolor="#FFFFFF"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
        <tr>
          <td width="47">&nbsp;</td>
          <td width="184">&nbsp;</td>
          <td width="50">&nbsp;</td>
          <td width="501">&nbsp;</td>
          <td width="76">&nbsp;</td>
          <td width="203">&nbsp;</td>
        </tr>
      </table></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  </form>
</body>
</html>
