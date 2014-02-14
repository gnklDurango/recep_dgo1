<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="" %>

<% 
/*----------------------------------------------------------------------------------------------------------------------
Nombre del Archivo:captura_prove.jsp
Fecha:2010
Autor: RHW
  ----------------------------------------------------------------------------------------------------------------------*/

Class.forName("org.gjt.mm.mysql.Driver");
     int tam=0,tam2=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
	 String clave_jv="";
     String mail[]=new String[10];
	 String meses[]=new String[12];
	 meses[0]="Enero";
	 meses[1]="Febrero";
	 meses[2]="Marzo";
	 meses[3]="Abril";
	 meses[4]="Marzo";
	 meses[5]="Abril";
	 meses[6]="Mayo";
	 meses[7]="Junio";
	 meses[8]="Julio";
	 meses[9]="Agosto";
	 meses[10]="Septiembre";
	 meses[11]="Octubre";
	 meses[0]="Noviembre";
	 meses[1]="Diciembre";
	 
     String but="r";
	 String clave="";

	 
	 String check=request.getParameter("txtf_5");
	 int c=0;
	
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
//variables para captura

//
     
%>
<% /*
try {

Properties props = new Properties(); 
props.put("mail.smtp.host", "localhost");//smtp.mail.yahoo.com
Session s = Session.getInstance(props,null); 


InternetAddress from = new InternetAddress("lasalle_tur@yahoo.com"); 
InternetAddress to = new InternetAddress("lasalle_tur@yahoo.com"); 

MimeMessage message = new MimeMessage(s); 
message.setFrom(from); 
message.addRecipient(Message.RecipientType.TO, to); 

message.setSubject("Your subject"); 
message.setText("Your text"); 
Transport.send(message); 
 } catch (MessagingException ex) {
     // while ((ex = (MessagingException) ex.getNextException()) != null) {
       // ex.printStackTrace();
	   System.err.println("Cannot send email. " + ex);
      }


*/
%> 






<%
  int altaOK=0;
   try{
        altaOK=Integer.parseInt(request.getParameter("altaOK"));   
		//val=request.getParameter("txtf_pass");
		//user=request.getParameter("txtf_user");
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
  
  try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}
  
  if(but.equals("Validar y Capturar"))
{
   //out.print("test");
   check=request.getParameter("txtf_7");
   System.out.print("VALUE FOR NAME:"+check);
   clave_jv=request.getParameter("txtf_nocot");
   int c1=0;
		String clave1="";
		//String usua="";
		//código que conecta un codigo con una bdd usando jdbc
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost/dgo");
		Statement stmt=conn.createStatement();
		out.print("ttt"+check);	System.out.print("GNK");
		ResultSet rset=stmt.executeQuery("select F_nomprov from provee_all");
		while(rset.next())
		{
		 clave1=rset.getString("F_nomprov");
		 System.out.println("NAME FROM THE DATABASE"+clave1);
		 if(clave1.equals(check))
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
		   response.sendRedirect("error_prov.jsp");
         else
		   
 	   {
	     //insertar el valor de los campos en HTML y pasarlos a MySQL por medio del método getParameter
	    
		//realizas la toma de valores de los textfields
		
		
		// tienes que concatenar y el ti y el tf
		
		
		
		//insertar datos a la base dd
		stmt.execute("insert into provee_all values ('"+clave_jv+"','"+check+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"','"+clave_jv+"')");
		 stmt.execute("insert into folio_med values(null,'morelia')");
                      stmt.execute("commit");    
		 
		   response.sendRedirect("exito_prov.jsp");
		   System.out.print("hola");
	   
	   }
}//if´s end
  
  
  String folio_jv= request.getParameter("txtf_folio");
  String date_jv= request.getParameter("txtf_date");
  String cli_jv= request.getParameter("txtf_cli");
  String imp_jv= request.getParameter("txtf_imp");
  String dlls_jv= request.getParameter("txtf_dlls");
  String tc_jv= request.getParameter("txtf_tc");
  String mn_jv= request.getParameter("txtf_mn");
  String np_jv= request.getParameter("txtf_np");
  String impu_jv= request.getParameter("txtf_impuestos");
  String prev_jv= request.getParameter("txtf_prev");
  String igi_jv= request.getParameter("txtf_igi");
  String dta_jv= request.getParameter("txtf_dta");
  String iva_jv= request.getParameter("txtf_iva");
  String otros_jv= request.getParameter("txtf_otros");
  String honag_jv= request.getParameter("txtf_honag");
  String honcom_jv= request.getParameter("txtf_honcom");
  String rev_jv= request.getParameter("txtf_rev");  
  String fle_jv= request.getParameter("txtf_fle");
  String visad_jv= request.getParameter("txtf_visad");
  String esti_jv= request.getParameter("txtf_esti");
  String shp_jv= request.getParameter("txtf_shp");
  String etiq_jv= request.getParameter("txtf_etiq");
  String otr_jv= request.getParameter("txtf_otr");
  String totald_jv= request.getParameter("txtf_totald"); 
  String bank_jv= request.getParameter("txtf_bank");
  String account_jv= request.getParameter("txtf_acount");
  String obs_jv= request.getParameter("txtf_obs");
  String dir_jv= request.getParameter("txtf_dir");  
  



//here was the code try
 

             if(altaOK==1)
               
%>






<% java.util.Calendar currDate = new java.util.GregorianCalendar();
   // add 1 to month because Calendar's months start at 0, not 1
   int month = currDate.get(currDate.MONTH)+1;
   int day = currDate.get(currDate.DAY_OF_MONTH);
   int year = currDate.get(currDate.YEAR);
   
   String date=" "+year;
   date= date+"/"+month;
   date= date+"/"+day;  
  // out.println(altaOK);
 
%>

<%! public int customerId=0;
  public int regulaCont2()
      {
                      
             try { 
                           
                  Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt = conn.createStatement();
                
                  //stmt.execute("insert into tab_clave values(null,'morelia')");
                  //stmt.execute("commit"); 
                  ResultSet rset = stmt.executeQuery("select no_rec from folio_med");
                  while(rset.next())
                       customerId = rset.getInt("no_rec");
                  
                 System.out.print("halo");           
                } catch (Exception e)
                     {  
                       System.out.print("haloja");  
                     }
             System.out.print("halo"+customerId);
  return customerId;
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
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style2 {color: #333333}
.style3 {color: #B70632}
-->
</style>
</head>
<body bgcolor="#ffffff" onLoad="fillCategory_Area();">
<% 
  //val=request.getParameter("txtf_pass");
  //out.print(""+val+" "+altaOK);
  if(!(val.equals("judith") && user.equals("JUDITH ANGELES BAUTISTA") || (val.equals("francisco") && user.equals("FRANCISCO SOTO HERNANDEZ") )))  
    {
 %>
<form action="captura_prove.jsp" method="get" name="form1" >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr bgcolor="#99ccff">
	  <td nowrap="nowrap" bgcolor="#FFFFFF" >&nbsp;</td>
	  <td height="60" colspan="3" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><div align="center"><img src="logo_conjun.jpg" width="343" height="91" /></div></td>
	  <td bgcolor="#FFFFFF">&nbsp;</td>
	  <td bgcolor="#FFFFFF">&nbsp;</td>
    </tr>
	<tr background="fondo.jpg">
	<td width="19" nowrap="nowrap" bgcolor="#FFFFFF" >&nbsp;</td>
	<td height="38" colspan="3" nowrap="nowrap" background="fondo.jpg" class="logo"><div align="right"><br />
	</div>
	  <div align="center"><span class="pageHeader">CAPTURA NOMBRE DE PROVEEDOR</span>	  <span class="pageHeader">| INTRODUZCA EL NOMBRE </span></div></td>
	<td width="5" bgcolor="#FFFFFF">&nbsp;</td>
	<td width="235" bgcolor="#FFFFFF">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td width="19" nowrap="nowrap">&nbsp;</td>
	<td height="29" colspan="3" nowrap="nowrap" id="navigation"><a href="catalogo_provee.jsp">Regresar a Cat&aacute;logo de Proveedores </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="menu_mainAR.jsp">Regresar a Menú </a></td>
	  <td width="5">&nbsp;</td>
	<td width="235">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="2" valign="top" bgcolor="#ffffff"><table border="0" cellspacing="0" cellpadding="0" width="230">
		<tr>
		<td width="15">&nbsp;</td>
		<td width="200" class="smallText" id="padding"><p align="center">&nbsp;</p>
		   <p><strong><br />
		    <a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></strong></p>
		  <p><br />
  &nbsp;<br />		
	      </p></td>
		<td width="15">&nbsp;</td>
		</tr>
	</table>	
	  </td>
	<td width="74" valign="top"><img src="mm_spacer.gif" alt="" width="50" height="1" border="0" /></td>
	<td width="522" valign="top">
	  <table width="461" height="214" border="2" bordercolor="#003300">
        <tr>
          <th height="37" scope="col"><span class="logo style2">Introduzca el Nombre del Proveedor </span></th>
        </tr>
        <tr>
          <td height="167"><table width="450" border="0" bordercolor="#7D1425">
            <tr>
              <td class="bodyText">CLAVE:</td>
              <td colspan="2"><input name="txtf_nocot" type="text" size="4" value="<%=regulaCont2()%>-"/></td>
            </tr>
            <tr>
              <td width="74" class="bodyText">NOMBRE:</td>
              <td width="335"><input name="txtf_7" type="text" size="60" onkeypress="capLock(event)" onchange="toUppercaseMP()"/></td>
              <td width="19">&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input name="Submit" type="submit" class="smallText" value="Validar y Capturar" />
              <input type="hidden" value="1" name="altaOK" />
              <a href="menu_mainARdgo.jsp">Regresar</a></td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
      </table>
	  <p><br />
	    </p>
	  <table border="0" cellspacing="0" cellpadding="0" width="440">
        <tr>
          <td colspan="3" class="bodyText"><p>&nbsp;</p>
              <br />          </td>
        </tr>
      </table></td>
	<td width="5">&nbsp;</td>
	<td width="235">&nbsp;</td>
	</tr>

	<tr bgcolor="#ffffff">
	<td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
	</tr>

	<tr>
	<td height="26" colspan="6" bordercolor="#FFFFFF">&nbsp;</td>
	</tr>


	<tr bgcolor="#003399">
	<td colspan="6" bordercolor="#FFFFFF"></td>
	</tr>

	<tr>
	<td height="16" colspan="6" bordercolor="#FFFFFF"></td>
	</tr>

	<tr bgcolor="#003399">
	<td colspan="6" bordercolor="#FFFFFF"></td>
	</tr>


	<tr>
	<td width="19" bordercolor="#FFFFFF">&nbsp;</td>
	<td width="257" bordercolor="#FFFFFF">&nbsp;</td>
	<td width="74" bordercolor="#FFFFFF">&nbsp;</td>
	<td width="522" bordercolor="#FFFFFF">&nbsp;</td>
	<td width="5" bordercolor="#FFFFFF">&nbsp;</td>
	<td width="235" bordercolor="#FFFFFF">&nbsp;</td>
	</tr>
</table>
</form>
<%
  }else
    {
%>
	
<%
    }
	 if (altaOK==1 && (val.equals("judith") && (user.equals("JUDITH ANGELES BAUTISTA"))) )
       { 
	  
        out.print("Estamos en este IF");
		session.setAttribute("username",user);
		response.sendRedirect("menu_cap.jsp");
       }
	 else
	   if(altaOK==1 && (val.equals("francisco") && (user.equals("FRANCISCO SOTO HERNANDEZ"))) )
	     { 
	  
        out.print("Estamos en este IF jacinto");
		session.setAttribute("username",user);
		response.sendRedirect("index_acdiarias.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("mon")  && (user.equals("CP RAMON HERNANDEZ WENCE"))) )
	     { 
	  
        out.print("Estamos en este IF ramon");
		session.setAttribute("username",user);
		response.sendRedirect("index_cont.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("jamyjamy") && (user.equals("OMAR GONZALEZ FREGOSO"))) )
	     { 
	  
        out.print("Estamos en este IF salvador");
		session.setAttribute("username",user);
		response.sendRedirect("index_gen.jsp");
       }
	  else
	   if(altaOK==1 && (val.equals("omar1") && (user.equals("OMAR GONZALEZ FREGOSO"))) )
	     { 
	  
        out.print("Estamos en este IF salvador");
		session.setAttribute("username",user);
		response.sendRedirect("index_ggen.jsp");
       }
	  else
	   if(altaOK==1 && (val.equals("felipe") && (user.equals("C.P. FELIPE DE JESUS JACOBO"))) )
	     { 
	  
        out.print("Estamos en este IF felipe");
		session.setAttribute("username",user);
		response.sendRedirect("index_tesor.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("gisela") && (user.equals("GISELA"))) )
	     { 
	  
        out.print("Estamos en este IF omar");
		session.setAttribute("username",user);
		response.sendRedirect("index_docu1.jsp");
       }
	    else
	   if(altaOK==1 && (val.equals("raul") && (user.equals("RAUL MURILLO"))) )
	     { 
	  
        out.print("Estamos en este IF raul");
		session.setAttribute("username",user);
		response.sendRedirect("index_docu2.jsp");
       }
	    else
	   if(altaOK==1 && (val.equals("abel") && (user.equals("ABEL QUEZADA"))) )
	     { 
	  
        out.print("Estamos en este IF abel");
		session.setAttribute("username",user);
		response.sendRedirect("index_almacen.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("dalila") && (user.equals("DALILA FREGOSO"))) )
	     { 
	  
        out.print("Estamos en este IF dalila");
		session.setAttribute("username",user);
		response.sendRedirect("index_rec.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("marce") && (user.equals("LIC. MARCELA HERNANDEZ C."))) )
	     { 
	  
        out.print("Estamos en este IF marce");
		session.setAttribute("username",user);
		response.sendRedirect("index_prod.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("marce2") && (user.equals("LIC. MARCELA HERNANDEZ C. 2"))) )
	     { 
	  
        out.print("Estamos en este IF marce");
		session.setAttribute("username",user);
		response.sendRedirect("index_rh.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("raul2") && (user.equals("RAUL QUINONEZ"))) )
	     { 
	  
        out.print("Estamos en este IF raul2");
		session.setAttribute("username",user);
		response.sendRedirect("index_tran.jsp");
       }
	   
	   else
	   if(altaOK==1 && (val.equals("juan") && (user.equals("JUAN LUIS A I"))) )
	     { 
	  
        out.print("Estamos en este IF juan");
		session.setAttribute("username",user);
		response.sendRedirect("index_rojo.jsp");
       }
%>

</body>
</html>
