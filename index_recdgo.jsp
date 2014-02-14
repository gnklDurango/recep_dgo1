<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="error_000.html" %>
<% Class.forName("org.gjt.mm.mysql.Driver");
     int altaOK=1;
	 //out.print("altaOk"+altaOK);
	 int tam=0,tam2=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
     String mail[]=new String[10];
	 
	  String fol2_jv="";
 	  try {
       		fol2_jv = request.getParameter("fol_vi");       			   
	  } catch (Exception e) { }


String folgnk_vi_jv="";
 	  try {
       		folgnk_vi_jv = request.getParameter("fol_gnk_vi");       			   
	  } catch (Exception e) { }
	  
	  String provee_jv="";
 	  try {
       		provee_jv = request.getParameter("prove_vi");       			   
	  } catch (Exception e) { }
	  
	  String recibe_jv="";
 	  try {
       		recibe_jv = request.getParameter("recib_vi");       			   
	  } catch (Exception e) { }
	  
	  String entrega_jv="";
 	  try {
       		entrega_jv = request.getParameter("entreg_vi");       			   
	  } catch (Exception e) { }
	  
	  String capturar_jv="";
 	  try {
       		capturar_jv = request.getParameter("captu_vi");       			   
	  } catch (Exception e) { }
	  
	  String ubic_jv="";
 	  try {
       		ubic_jv = request.getParameter("ubic_vi");       			   
	  } catch (Exception e) { }
	  
	  String origen_jv="";
 	  try {
       		origen_jv = request.getParameter("orig_vi");       			   
	  } catch (Exception e) { }
	  
	  String obser_jv="";
 	  try {
       		obser_jv = request.getParameter("obser_vi");       			   
	  } catch (Exception e) { }
	  
	  String boolDocRem_jv="";
 	  try {
       		boolDocRem_jv = request.getParameter("boolDocRem_vi");       			   
	  } catch (Exception e) { }
	 
	 
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/gnk");
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
 if (altaOK==1 && (val.equals("Matutino") && (user.equals(cad1[0]) )))
       { 
	  	altaOK=0;
        //out.print("Estamos en este IF");
		//out.print(altaOK);
		session.setAttribute("username",user);
		//response.sendRedirect("menu_indexFar1.jsp");
       }
	 else
	 if (altaOK==1 && (val.equals("Vespertino") && (user.equals(cad1[1]) )))
       { 
	    altaOK=0;
        //out.print("Estamos en este IF");
		session.setAttribute("username",user);
		//response.sendRedirect("menu_indexFar1.jsp");
       }
	 else
	    if(altaOK==1 && (val.equals("Nocturno") && (user.equals(cad1[2]) )))
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF jacinto");
		session.setAttribute("username",user);
		//response.sendRedirect("menu_indexFar1.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("mon")  && (user.equals("CP RAMON HERNANDEZ WENCE"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF ramon");
		session.setAttribute("username",user);
		//response.sendRedirect("index_cont.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("jamyjamy") && (user.equals("OMAR GONZALEZ FREGOSO"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF salvador");
		session.setAttribute("username",user);
		//response.sendRedirect("index_gen.jsp");
       }
	  else
	   if(altaOK==1 && (val.equals("omar1") && (user.equals("OMAR GONZALEZ FREGOSO"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF salvador");
		session.setAttribute("username",user);
		//response.sendRedirect("index_ggen.jsp");
       }
	  else
	   if(altaOK==1 && (val.equals("felipe") && (user.equals("C.P. FELIPE DE JESUS JACOBO"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF felipe");
		session.setAttribute("username",user);
		//response.sendRedirect("index_tesor.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("gisela") && (user.equals("GISELA"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF omar");
		session.setAttribute("username",user);
		//response.sendRedirect("index_docu1.jsp");
       }
	    else
	   if(altaOK==1 && (val.equals("raul") && (user.equals("RAUL MURILLO"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF raul");
		session.setAttribute("username",user);
		//response.sendRedirect("index_docu2.jsp");
       }
	    else
	   if(altaOK==1 && (val.equals("abel") && (user.equals("ABEL QUEZADA"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF abel");
		session.setAttribute("username",user);
		//response.sendRedirect("index_almacen.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("dalila") && (user.equals("DALILA FREGOSO"))) )
	     { 
	    altaOK=0;
        out.print("Estamos en este IF dalila");
		session.setAttribute("username",user);
		//response.sendRedirect("index_rec.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("marce") && (user.equals("LIC. MARCELA HERNANDEZ C."))) )
	     { 
	    altaOK=0;
        out.print("Estamos en este IF marce");
		session.setAttribute("username",user);
		//response.sendRedirect("index_prod.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("marce2") && (user.equals("LIC. MARCELA HERNANDEZ C. 2"))) )
	     { 
	    altaOK=0;
        out.print("Estamos en este IF marce");
		session.setAttribute("username",user);
		//response.sendRedirect("index_rh.jsp");
       }
	   else
	   if(altaOK==1 && (val.equals("raul2") && (user.equals("RAUL QUINONEZ"))) )
	     { 
	    altaOK=0;
        out.print("Estamos en este IF raul2");
		session.setAttribute("username",user);
		//response.sendRedirect("index_tran.jsp");
       }
	   
	   else
	   if(altaOK==1 && (val.equals("juan") && (user.equals("JUAN LUIS A I"))) )
	     { 
	    altaOK=0;
        //out.print("Estamos en este IF juan");
		session.setAttribute("username",user);
		//response.sendRedirect("index_rojo.jsp");
       }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<script language="javascript" src="list02.js"></script>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>VALIDACION USUARIO - Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_restaurant1.css" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #E6E6E6;
}
a:link {
	color: #000033;
	font-weight: bold;
}
a:visited {
	color: #990000;
}
.style2 {color: #333333}
.style4 {color: #FF9933}
.style5 {
	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
}
.style6 {color: #000000}
.style7 {font-size: 5px}
-->
</style></head>
<body>
<p>
  <% 
  //val=request.getParameter("txtf_pass");
  //out.print(""+val+" "+altaOK);
   if(altaOK==1){
  if(!(val.equals("judith") && user.equals("JUDITH ANGELES BAUTISTA") || (val.equals("francisco") && user.equals("FRANCISCO SOTO HERNANDEZ") )))  
    {
 %>
</p>
<table width="837" border="6" align="center" cellpadding="2">
  <tr>
    <td width="815" bgcolor="#FFFFFF"><p align="left">&nbsp;</p>
      <form action="index_rec.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&amp;fol_vi=<%=fol2_jv%>&amp;prove_vi=<%=provee_jv%>&amp;recib_vi=<%=recibe_jv%>&amp;entreg_vi=<%=entrega_jv%>&amp;captu_vi=<%=capturar_jv%>&amp;ubic_vi=<%=ubic_jv%>&amp;orig_vi=<%=origen_jv%>&amp;obser_vi=<%=obser_jv%>&amp;boolDocRem_vi=<%=boolDocRem_jv%>" method="post" name="form1" id="form1" >
        <table border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
          <tr bgcolor="#99ccff">
            <td width="31" nowrap="nowrap" bgcolor="#FFFFFF" >&nbsp;</td>
            <td height="60" colspan="3" nowrap="nowrap" bgcolor="#FFFFFF" class="logo"><div align="left"><img src="logo_conjun.jpg" width="230" height="52" /><br />
              </div>
              <span class="style6">VALIDACI&Oacute;N DE DATOS</span> <span class="tagline"><span class="tagline"><span class="tagline">| FORMATO DE CAPTURA DE MEDICAMENTOS </span></span></span></td>
            <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
            <td width="4" bgcolor="#FFFFFF">&nbsp;</td>
          </tr>
          <tr bgcolor="#003399">
            <td height="18" colspan="6" nowrap="nowrap" bgcolor="#009999">&nbsp;&nbsp;&nbsp;<a href='http://localhost:8080/r_d_2/captura_provdgo.jsp?fol_vi=<%=fol2_jv%>&amp;prove_vi=<%=provee_jv%>&amp;recib_vi=<%=recibe_jv%>&amp;entreg_vi=<%=entrega_jv%>&amp;captu_vi=<%=capturar_jv%>&amp;ubic_vi=<%=ubic_jv%>&amp;orig_vi=<%=origen_jv%>&amp;obser_vi=<%=obser_jv%>&amp;boolDocRem_vi=<%=boolDocRem_jv%>'></a></td>
          </tr>
          <tr bgcolor="#ffffff">
            <td colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
          </tr>
          <tr bgcolor="#ffffff">
            <td height="22" colspan="6" valign="top" bgcolor="#FFFFFF"><table width="791" border="0" cellpadding="2" bgcolor="#FF9933">
              <tr>
                <td width="783"><span class="style4"><span class="style7">000</span></span></td>
              </tr>
            </table>              
              <p><span class="style5"><a href='http://localhost:8080/r_d_2/menu_mainARdgo.jsp'>Regresar a Men&uacute;</a>&nbsp;&nbsp;&nbsp;<span class="style4">&nbsp;<a href='http://localhost:8080/r_d_2/captura_provdgo.jsp?fol_vi=<%=fol2_jv%>&amp;prove_vi=<%=provee_jv%>&amp;recib_vi=<%=recibe_jv%>&amp;entreg_vi=<%=entrega_jv%>&amp;captu_vi=<%=capturar_jv%>&amp;ubic_vi=<%=ubic_jv%>&amp;orig_vi=<%=origen_jv%>&amp;obser_vi=<%=obser_jv%>&amp;boolDocRem_vi=<%=boolDocRem_jv%>'>Regresar a Captura de Remisi&oacute;n</a></span></span></p>
              <p align="justify" class="navText"><span class="style4"><br />
              </span></p>              </td>
          </tr>
          <tr bgcolor="#ffffff">
            <td height="2" colspan="6"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
          </tr>
          <tr>
            <td height="7" colspan="4">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
            <td rowspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td height="8" colspan="4">&nbsp;</td>
          </tr>
          <tr bgcolor="#003399">
            <td height="2" colspan="6" bgcolor="#FFFFFF"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
          </tr>
          <tr>
            <td height="16" colspan="2"><img src="mm_spacer.gif" alt="" width="1" height="2" border="0" />
              <p align="center"><img src="gnk_toluca.jpg" width="90" height="78" /></p>
              <p align="center"><strong><span class="style2">Av. Emiliano Zapata lote 2 </span><span class="style2"><br />
                Parque Industrial Lerma <br />
                CP 52050<br />
                Tel 01 800 465 2222<br />
  <br />
  <a href="http://www.gnklogistica.com.mx" target="_blank">www.gnklogistica.com.mx</a></span></strong></p>
            <p></p></td>
            <td height="16">&nbsp;</td>
            <td height="16"><table border="0" cellspacing="0" cellpadding="0" width="440">
              <tr>
                <td class="pageName">Introduzca Usuario y Contrasena <br />
                  Para dar de Alta el Medicamento </td>
              </tr>
              <tr>
                <td height="195" class="bodyText"><table width="200" border="0">
                    <tr>
                      <td>USUARIO:</td>
                      <td><input name="txtf_user" type="text"  class="navText" value="" size="45" /></td>
                      <td><select name="slct_nombres" class="navText" onchange="SelectSubCat_NameGTO()">
                          <option>-- SELECCIONE USUARIO --</option>
                          <%		     
             for(int x=0;x<tam2;x++)
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
                      <td><input name="txtf_pass" type="text" class="navText" size="45" onkeypress="capLock(event)"/>                      </td>
                      <td><label>
                        <select name="slct_tur" class="navText" onchange="setTurno(this.form)">
                          <option>-- SELECCIONE PASSWORD --</option>
                          <option value="Matutino">Matutino</option>
                          <option value="Vespertino">Vespertino</option>
                          <option value="Nocturno">Nocturno</option>
                        </select>
                      </label></td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="submit" name="Submit" value="Validar" />
                          <input type="hidden" value="1" name="altaOK" /></td>
                      <td>&nbsp;</td>
                    </tr>
                  </table>
                    <p>&nbsp;</p>
                  <br />                </td>
              </tr>
            </table></td>
            <td height="16">&nbsp;</td>
            <td height="16">&nbsp;</td>
          </tr>
          <tr bgcolor="#003399">
            <td colspan="6" bgcolor="#FFFFFF"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
          </tr>
          <tr>
            <td width="31">&nbsp;</td>
            <td width="213">&nbsp;</td>
            <td width="3">&nbsp;</td>
            <td width="567">&nbsp;</td>
            <td width="4">&nbsp;</td>
            <td width="4">&nbsp;</td>
          </tr>
        </table>
      </form>
      <%
//out.print("coincide "+);
}
  }else{
  
   //out.print("coincide2"+boolDocRem_jv);
%>
      <script>
			//alert("valor coincide"+boolDocRem_jv);	    			
		 	self.location='http://192.168.1.180:8080/gnk/reg_nueva.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>';			
		</script>
    <%
	   }	   	 
%></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
