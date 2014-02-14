<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" errorPage="error_000.html" %>
<% Class.forName("org.gjt.mm.mysql.Driver");
     int tam=0,tam2=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
 
     


     //Class.forName("org.gjt.mm.mysql.Driver"); 
        
        String value="";
		int ban=0;
        
%>


<%


  int altaOK=0;
  String cs_jv="";
  String folios_jv="";
  String npaq_jv="1";
  String fol_jv="";
  String nom_jv="";
  String folio_jv= "";
  String date_jv= "";
  String cli_jv= "";
  String imp_jv= "";
  String dlls_jv= "";
  String tc_jv= "";
  String mn_jv= "";
  String np_jv= "";
  String impu_jv= "";
  String prev_jv= "";
  String igi_jv= "";
  String dta_jv= "";
  String iva_jv= "";
  String otros_jv= "";
  String honag_jv= "";
  String honcom_jv= "";
  String rev_jv= "";
  String fle_jv= "";
  String visad_jv= "";
  String esti_jv= "";
  String shp_jv= "";
  String etiq_jv= "";
  String otr_jv= "";
  String otr2_jv= "";
  
  String totald_jv= "";
  String bank_jv= "";
  String account_jv= "";
  String obs_jv= "";
  String dir_jv= "";
  




  try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }

             if(altaOK==1)
               {
           
                  //nord_jv=request.getParameter("t");
                 //System.out.print("siii\n"+key_jv+"halo ");
                 fol_jv=request.getParameter("slct_imp");
				 nom_jv=request.getParameter("slct_cli");
				 System.out.print("Variables:"+fol_jv+" "+nom_jv);
          //       ResultSet rset = stm.executeQuery("select * from pre_presu where pp_date between '" + fol_jv+ "' and '" +nom_jv+ "'");//SELECT * FROM pre_presu WHERE pp_folio ='" + fol_jv+ "' and pp_cli='" +nom_jv+ "'"'6'");
//select pp_folio,pp_cli,pp_date from pre_presu where pp_date between '2008-05-01' and '2008-05-02'               
			      int count=0; 
				    
			//		 while(rset.next()) 
              /*         {
						  count++;
                          folio_jv= rset.getString("pp_folio");
                          date_jv= rset.getString("pp_date");
                          cli_jv= rset.getString("pp_cli");
                          imp_jv= rset.getString("pp_imp");
                          dlls_jv= rset.getString("pp_dlls");
                          tc_jv= rset.getString("pp_tc");
                          mn_jv= rset.getString("pp_mn");
                          np_jv= rset.getString("pp_np");
                          impu_jv= rset.getString("pp_impues");
                          prev_jv= rset.getString("pp_prev");
                          igi_jv= rset.getString("pp_igi");
                          dta_jv= rset.getString("pp_dta");
                          iva_jv= rset.getString("pp_iva");
                          otros_jv= rset.getString("pp_otros");
                          honag_jv= rset.getString("pp_honag");
                          honcom_jv= rset.getString("pp_honcom");
                          rev_jv= rset.getString("pp_rev");
                          fle_jv= rset.getString("pp_fle");
                          visad_jv= rset.getString("pp_visad");
                          esti_jv= rset.getString("pp_esti");
                          shp_jv= rset.getString("pp_shp");
                          etiq_jv= rset.getString("pp_etiq");
                          otr_jv= rset.getString("pp_otr");
						  otr2_jv= rset.getString("pp_otr2");
                          totald_jv= rset.getString("pp_totald");
                          bank_jv= rset.getString("pp_bank");
                          account_jv= rset.getString("pp_account");
                          obs_jv= rset.getString("pp_obs");
                          dir_jv= rset.getString("pp_dir");
				*/		  
				//		}
         System.out.print("COUNT:"+count);
  
               }
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
<title>Imprimiendo No. Paquetes</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mm_lodging1.css" type="text/css" />
<style type="text/css">
<!--
.style6 {font-size: 24px}
.style7 {
	color: #CC3300;
	font-weight: bold;
}
.style16 {font-size: 18px}
.style18 {font-size: 36px}
.style19 {
	font-size: 26px;
	font-weight: bold;
}
-->
</style>
</head>
<body bgcolor="#999966">

<%
    
	 if (altaOK==0)
       { 
	  
      
%>

<form action="varios_paq.jsp" method="post" name="form">
  <table width="107%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="15" nowrap="nowrap">&nbsp;</td>
      <td colspan="9" class="logo" nowrap="nowrap"><div align="LEFT"></div>
        <div align="left"><img src="GNKL_Small.JPG" width="92" height="56" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
       
      </div></td>
      <td width="61">&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td colspan="11"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
    </tr>
    <tr bgcolor="#a4c2c2">
      <td width="15" nowrap="nowrap">&nbsp;</td>
      <td height="26" colspan="8" id="navigation" class="navText"><div align="center" class="style7 style16">
        <div align="left">INTRODUZCA LOS DATOS </div>
      </div></td>
      <td>&nbsp;</td>
      <td width="61">&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td colspan="11"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td width="148" valign="top" class="pageName"><div align="center"></div></td>
      <td width="136" valign="top" class="pageName">&nbsp;</td>
      <td valign="top" class="pageName">&nbsp;</td>
      <td valign="top" >&nbsp; </td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td width="91" valign="top"><label></label>
      &nbsp;</td>
      <td colspan="2" valign="top"><strong>CENTRO DE SALUD</strong></td>
      <td colspan="3"><label>
        <input name="txtf_cs" type="text" onkeypress="return handleEnter(this, event)" size="60" onChange="toUppercasePaq1();"/>
      </label></td>
      <td width="184" valign="top"><label></label></td>
      <td width="96" valign="top"><label></label></td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><strong>FOLIO:</strong></td>
      <td colspan="3" valign="top"><input name="txtf_folio" type="text" onkeypress="return handleEnter(this, event)" size="60"/></td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top"><label></label></td>
      <td colspan="2" valign="top"><strong>NO. DE PAQUETES:</strong></td>
      <td colspan="3" valign="top"><label></label>        <label>
        <input name="txtf_np" type="text" onkeypress="return handleEnter(this, event)" size="60"/>
      </label></td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><label></label></td>
      <td width="119" valign="top">&nbsp;</td>
      <td colspan="4" valign="top"><label></label></td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><label></label></td>
      <td valign="top"><input name="Submit" type="submit" class="style7" value="MOSTRAR" />
      <input type="hidden" name="altaok" value="1"/></td>
      <td valign="top"><input type="reset" class="style7" value="BORRAR" /></td>
      <td valign="top"><div align="right"></div></td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><div align="left"><a href="pre_presumon.jsp"></div></td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="9" valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="baseline">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td height="26" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td width="145" valign="top">&nbsp;</td>
      <td width="8" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="8" valign="top">&nbsp;</td>
      <td valign="top" >&nbsp;</td>
      <td bgcolor="#999999">&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="3" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="3" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="3" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="7" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><div align="right"></div></td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top" width="15"><img src="mm_spacer.gif" alt="" width="15" height="1" border="0" /></td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><label></label></td>
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td width="61">&nbsp;</td>
    </tr>
    <tr>
      <td width="15">&nbsp;</td>
      <td colspan="4">&nbsp;</td>
      <td colspan="4">&nbsp;</td>
      <td width="74">&nbsp;</td>
      <td width="61">&nbsp;</td>
    </tr>
  </table>
</form>
<%
    }
      else
         if (altaOK == 1 )
            { 
			
			 folios_jv=request.getParameter("txtf_folio");
			 cs_jv=request.getParameter("txtf_cs");
			 npaq_jv=request.getParameter("txtf_np");
			
			//flag=4;
			//JOptionPane.showInputDialog("The value of flag is"+num1);
               //clvLinea=request.getParameter("clvLinea");Show the other part
 %>

<form action="varios_paq.jsp" method="post" name="form" >
<input type="button" name="imprimir" value="Imprimir" onclick="window.print();">
<table width="100%" height="600" border="1" cellpadding="0" cellspacing="0">
	 <%
	     int var=1,npaqI_jv=0;
		 npaqI_jv=Integer.parseInt(npaq_jv);
		 while(var<=npaqI_jv)
		   {
	  %>
	
	<tr>
	
	  <td colspan="4" bgcolor="#FFFFFF"><img src="soriana2.png" width="187" height="55" />
	    <div align="right" class="style6">
	      <div align="center" class="style19">UNIDAD DE ATENCI&Oacute;N </div>
        </div>	    <div align="center" class="style18"><br />
      </div>        <div align="right" class="style6">
          <div align="center" class="style18"><%=cs_jv%></div>
      </div></td>
    </tr>
	
	<tr>
	  <td colspan="2" bgcolor="#FFFFFF" class="style18"><div align="center">FOLIO</div>	    <div align="center" class="style18"><%=folios_jv%>
	  <br />
	  </div>
        <div align="right">
          <p class="navText">VERSIÓN 0 </p>
          <p class="navText">FECHA:30/04/2010</p>
        </div></td>
	  <td width="48%" colspan="2" bgcolor="#FFFFFF"><div align="center" class="style18"># DE PAQUETES </div>	    <div align="center" class="style18">
	    <p><%=var%>/<%=npaq_jv%>            </p>
	    <p class="navText" align="right">GNKL-T-7 F 14 </p>
            
	  </div></td>
    
	<%
	
	    var++;
	}
	  %> 
</table>
</tr>
	
</form>
<%

    }
%>

</body>
</html>
