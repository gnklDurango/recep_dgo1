<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error_000.html" %>
<% Class.forName("org.gjt.mm.mysql.Driver");
     int tam=0,tam2=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
     String mail[]=new String[10];
	 
	 
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1=stmt1.executeQuery("select encar1 from datos_far");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("encar1");     
                     tam2++;
                   }
		rset1=stmt1.executeQuery("select encar2 from datos_far");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("encar2");     
                     tam2++;
                   }
		rset1=stmt1.executeQuery("select encar3 from datos_far");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("encar3");     
                     tam2++;
                   }
			
     rset1=stmt1.executeQuery("select encar4 from datos_far");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("encar4");     
                     tam2++;
                   }
	rset1=stmt1.executeQuery("select encar5 from datos_far");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("encar5");     
                     tam2++;
                   }
			
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
		val=request.getParameter("txtf_pass");
		user=request.getParameter("txtf_user");
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
  
  
  
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

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>VALIDACION USUARIO - Sistema de Captura de Medicamento</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
body,td,th {
	color: #333333;
	font-weight: bold;
}
body {
	background-color: #FFFFFF;
}
.style1 {color: #333333}
.style4 {
	color: #FF6600;
	font-weight: bold;
}
.style5 {color: #000000}
.style8 {font-size: 5px; color: #FF9933; }
a:link {
	color: #333333;
}
a:visited {
	color: #990000;
}
a {
	font-weight: bold;
}
.style10 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style11 {font-size: 14px}
.style12 {font-size: 14}
.style13 {
	font-family: "Times New Roman", Times, serif;
	font-weight: bold;
}
-->
</style></head>
<body>
<% 
  //val=request.getParameter("txtf_pass");
  //out.print(""+val+" "+altaOK);
  if(!(val.equals("judith") && user.equals("JUDITH ANGELES BAUTISTA") || (val.equals("francisco") && user.equals("FRANCISCO SOTO HERNANDEZ") )))  
    {
 %>
<br />
<form action="index_mainARdgo.jsp" method="post" name="form1" >
<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
	<tr bgcolor="#99ccff">
	  <td width="147" nowrap="nowrap" bgcolor="#FFFFFF" ><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="123" height="130">
        <param name="movie" value="anima1.swf" />
        <param name="quality" value="high" />
        <embed src="anima1.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="123" height="130"></embed>
      </object></td>
	  <td height="135" colspan="3" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><div align="right"><span class="style1"><br />
          <img src="logo_soriana2.jpg" width="190" height="73" /><br />
      <span class="style13">FORMATO DE RECEPCIÓN</span> <span class="tagline">| <span class="style4">CAPTUR<span class="style12">A DE M</span>EDICAMENTO</span> </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>
	</tr>

	<tr background="fondo.jpg">
	<td width="147" nowrap="nowrap" bgcolor="#0066CC">&nbsp;</td>
	<td height="21" colspan="3" nowrap="nowrap" bgcolor="#0066CC" class="navText" id="navigation"><span class="style10"><a href="javascript:;">CONTACTANOS</a>&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;</td>
    </tr>

	<tr bgcolor="#ffffff">
	<td height="5" colspan="4" bgcolor="#FF9933"><span class="style8">oo</span></td>
	</tr>

	<tr>
	<td height="262" bgcolor="#DADADA"><p align="center"><img src="gnk_toluca.jpg" width="103" height="86" /></p>
	  <p align="center"><strong><span class="style1">Calle Cali S/N Esq. Av. Las Américas </span><span class="style1"><br />
	    Fracc. Guadalupe <br />
	    CP 34220<br />
	    Tel 01 618 8103716<br />
  <a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></span></strong></p>
	  <p><span class="style1"><br />
      </span></p></td>
	<td colspan="2" bgcolor="#FFFFFF">&nbsp;</td>
	<td bgcolor="#FFFFFF"><table border="0" cellspacing="0" cellpadding="0" width="487">
      <tr>
        <td width="487" class="pageName style5">Introduzca Usuario y Contrase&ntilde;a </td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF" class="bodyText"><table width="461" border="0">
            <tr>
              <td width="64">USUARIO:</td>
              <td width="180"><input name="txtf_user" type="text"  class="navText" value="" size="45" /></td>
              <td width="203">
			  <select name="slct_nombres" class="navText" onchange="SelectSubCat_NameGTO(this.form)">
                  <option selected="selected">-- SELECCIONE USUARIO --</option>
                  <%
		     
             for(int x=0;x<5;x++)
                {
                   
           %>
                  <option value="<%=cad1[x]%>"><%=cad1[x]%></option>
                  <%
                }
           %>
                    </select>
                  </select></td>
            </tr>
            <tr>
              <td>PASSWORD:</td>
              <td><input name="txtf_pass" id="txtf_pass" type="password" class="navText" size="45"/>              </td>
              <td><label></label></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="Submit" value="Validar" />
                  <input type="hidden" value="1" name="altaOK" /></td>
              <td>&nbsp;</td>
            </tr>
          </table>
            <p>&nbsp;</p>
          <br />        </td>
      </tr>
    </table></td>
	</tr>


	<tr bgcolor="#003399">
	<td height="8" colspan="4" bgcolor="#FF9933" class="style8"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" />oo</td>
	</tr>

	<tr>
	<td height="14" colspan="4" bgcolor="#0066CC"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" /></td>
	</tr>


	<tr>
	<td width="147">&nbsp;</td>
	<td width="7">&nbsp;</td>
	<td width="47">&nbsp;</td>
	<td width="587">&nbsp;</td>
	</tr>
</table>
</form>
<%
  }else
    {
	conn1.close();
%>
	
<%
    }
	 if (altaOK==1 && (val.equals("gnklsandra2012") && (user.equals(cad1[0]) )))
       { 
	  
        out.print("Estamos en este IF");
		session.setAttribute("username",user);
		response.sendRedirect("menu_mainARdgo.jsp?usu=SANDRA LILIANA ZAMARRIPA MONREAL");
       }
	 else
	 if (altaOK==1 && (val.equals("gnklasor2012") && (user.equals(cad1[1]) )))
       { 
	  
        out.print("Estamos en este IF");
		session.setAttribute("username",user);
		response.sendRedirect("menu_mainARdgo.jsp?usu=ALEJANDRO GOMEZ FUENTES");
       }
	   else
	 if (altaOK==1 && (val.equals("sistemasgnkl") && (user.equals(cad1[2]) )))
       { 
	  
        out.print("Estamos en este IF");
		session.setAttribute("username",user);
		response.sendRedirect("menu_mainARdgo.jsp?usu=SISTEMAS");
       }
	 
%>

</body>
</html>
