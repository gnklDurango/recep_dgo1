<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.text.*" import="java.lang.*" import="java.util.*" import= "javax.swing.*" import="java.io.*" import="java.text.DateFormat" 
import="java.text.ParseException" import="java.text.SimpleDateFormat" import="java.util.Calendar" import="java.util.Date" 
import="java.util.Locale"  import="java.awt.print.*" import="java.awt.Component" import="java.awt.image.BufferedImage" import="net.sourceforge.barbecue.*" import="net.sourceforge.barbecue.BarcodeException" import="net.sourceforge.barbecue.BarcodeException" import="net.sourceforge.barbecue.BarcodeImageHandler" import="net.sourceforge.barbecue.output.OutputException" errorPage="error_000.html" %>

<% Class.forName("org.gjt.mm.mysql.Driver");
   Class.forName("net.sourceforge.barbecue.Barcode");
   Class.forName("net.sourceforge.barbecue.BarcodeException");
   Class.forName("net.sourceforge.barbecue.BarcodeFactory");
        //connection for check if exist de clave...
		Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/gnk");
        Statement stmt_001 = conn_001.createStatement();
        ResultSet rset_001=null;
		 int bansicaptu =1;
		 String max_jv="";
		 int cb1_jv=0;
		//-----------
	Barcode barcode = null; 
    String codigo="";
     int tam=0,tam2=0;
     String cad1[]=new String[1000];  //array for show clients 
     String arr[]= new String[5000];     //array for the importadores
     String name="";
     String service_jv="";
	 File f=null;
	 File a=null;
 //Toma los valores que vuelan desde captura_prov-now09Jul09.jsp
 String clave_jv="";
 	  try {
       		clave_jv = request.getParameter("id_cve");       			   
	  } catch (Exception e) { }
 String lote_jv="";
 	  try {
       		lote_jv = request.getParameter("id_lote");       			   
	  } catch (Exception e) { }   
	  String descri_jv="";
 	  try {
       		descri_jv = request.getParameter("id_descri");       			   
	  } catch (Exception e) { }  
 String cadu_jv="";
 	  try {
       		cadu_jv = request.getParameter("id_cadu");       			   
	  } catch (Exception e) { } 
	  
	   String resto_jv="";
 	  try {
       		resto_jv = request.getParameter("id_resto");       			   
	  } catch (Exception e) { } 
 int altaOK=0;
 String altas="";
   try {
       		altaOK = Integer.parseInt(request.getParameter("id_alta"));       			   
	  } catch (Exception e) { }  
//out.print("recibidos:"+clave_jv+lote_jv+cadu_jv);

     //Class.forName("org.gjt.mm.mysql.Driver"); 
       String cajas_jv="";
   try {
       		cajas_jv = request.getParameter("id_nocajas");          			   
	  } catch (Exception e) { }
	  String imaname_jv="";
   try {
       		imaname_jv = request.getParameter("id_name");          			   
	  } catch (Exception e) { }    
        String value_cb="";
		int ban=0;
		
		//--routine for know if some clave, lote, cadu exists in datos_inv_cb_t if not, is gonna be added
		rset_001=stmt_001.executeQuery("select * from datos_inv_cb_t where clave='"+clave_jv+"' and lote='"+lote_jv+"'and cadu='"+cadu_jv+"'"); 
                   while(rset_001.next()){
                       bansicaptu =0;
	               }
				  // out.print(""+bansicaptu);
			if(bansicaptu==1){
 //if(!(clave_jv.equals("")) && !(descrip_jv.equals("")) && !(lote2_jv.equals("")) && !(cad2_jv.equals(""))){  
 
        rset_001=stmt_001.executeQuery("select MAX(cb) from datos_inv_cb_t"); 
					while(rset_001.next()){   
			max_jv=rset_001.getString("MAX(cb)");
			      }  
			cb1_jv=Integer.parseInt(max_jv);
			cb1_jv+=1;
			
	 		stmt_001.execute("insert into datos_inv_cb_t values ('"+clave_jv+"','"+lote_jv+"','"+descri_jv+"','"+cadu_jv+"','"+cb1_jv+"')");		 
	 		}
		//-
		
	//	 Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/gnk");
      //  Statement stmt_001 = conn_001.createStatement();
        rset_001=stmt_001.executeQuery("select cb from datos_inv_cb_t where clave='"+clave_jv+"' and lote='"+lote_jv+"' and cadu='"+cadu_jv+"';");
          while (rset_001.next()) 
                  { 
                    value_cb=rset_001.getString("cb");  
				  }
				  //PreparedStatement ps = conn_001.prepareStatement("select * from datos_inv_cb");
        //out.print(""+value_cb);
		 try {
            
             a = new File("C:\\jakarta-tomcat-4.1.31\\webapps\\gnk\\ima");
             //a.delete(); 
                   } catch (Exception e) {
            e.printStackTrace();
        }	
		
		codigo=value_cb;
	 try {
             barcode = BarcodeFactory.createCode128B(codigo);
             barcode.setBarWidth(1);

             barcode.setBarHeight(5);
             a = new File("C:\\jakarta-tomcat-4.1.31\\webapps\\gnk\\ima");
             //a.delete(); 
             f = new File("C:\\Program Files\\Apache Group\\Tomcat 4.1\\webapps\\gnk\\ima\\t_erchi.jpg");
             
            // Let the barcode image handler do the hard work
            BarcodeImageHandler.savePNG(barcode, f);
        } catch (Exception e) {
            e.printStackTrace();
        }	
	
%>


<%


  //int altaOK=0;
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
  String des_jv="";
  String id="";
  
  String totald_jv= "";
  String bank_jv= "";
  String account_jv= "";
  String obs_jv= "";
  String dir_jv= "";
  




  /*try{
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
						  
				//		}
         System.out.print("COUNT:"+count);
  
               }*/
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
.style23 {font-size: 16px}
.style27 {font-size: 36px; font-weight: bold; }
.style38 {font-size: 30px; font-weight: bold; }
.style39 {font-size: 30px}
.style41 {font-size: 8px}
-->
</style>
</head>
<body bgcolor="#ffffff" onload="loadCB()">

<%
    
	 if (altaOK==0)
       { 
	  
      
%>

<form action="eti2.jsp" method="post" name="form">
  <table width="107%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td width="15" nowrap="nowrap">&nbsp;</td>
      <td height="86" colspan="9" class="logo" nowrap="nowrap"><div align="LEFT"></div>
        <div align="left"><img src="GNKL_Small.JPG" width="92" height="56" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
       
      </div></td>
      <td width="61">&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td colspan="11"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
    </tr>
    <tr bgcolor="#a4c2c2">
      <td width="15" nowrap="nowrap">&nbsp;</td>
      <td height="25" colspan="8" id="navigation" class="navText"><div align="center" class="style7 style16">
        <div align="left">INTRODUZCA LOS DATOS<a name="tag" id="tag"></a> </div>
      </div></td>
      <td>&nbsp;</td>
      <td width="61">&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td colspan="11"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td colspan="4" valign="top" bgcolor="#ffffff">&nbsp;</td>
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
      <td colspan="2" valign="top"><strong>CLAVE:</strong></td>
      <td colspan="3"><label>
        <input name="txtf_cs" type="text" onkeypress="return handleEnter(this, event)" size="60" onChange="toUppercasePaq1();" value="104"/>
      </label></td>
      <td width="184" valign="top"><label></label></td>
      <td width="96" valign="top"><label></label></td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><strong>LOTE:</strong></td>
      <td colspan="3" valign="top"><input name="txtf_folio" type="text" onkeypress="return handleEnter(this, event)" size="60" value="2193829"/></td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top"><label></label></td>
      <td colspan="2" valign="top"><strong>CADUCIDAD:</strong></td>
      <td colspan="3" valign="top"><label></label>        <label>
        <input name="txtf_id" type="text" onkeypress="return handleEnter(this, event)" size="60" value="01/10/2010"/>
      </label></td>
      <td colspan="2" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><strong>DESCRIPICI&Oacute;N:</strong></td>
      <td valign="top"><input name="txtf_des" type="text" onkeypress="return handleEnter(this, event)" size="60" value="ACIDO ACETILSALICILICO"/></td>
      <td colspan="4" valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr bgcolor="#ffffff">
      <td valign="top">&nbsp;</td>
      <td valign="top">&nbsp;</td>
      <td colspan="2" valign="top"><strong>NO. DE PAQUETES:</strong></td>
      <td valign="top"><input name="txtf_np" type="text" onkeypress="return handleEnter(this, event)" size="60"/></td>
      <td colspan="4" valign="top">&nbsp;</td>
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
			
			 /*folios_jv=request.getParameter("txtf_folio");
			 cs_jv=request.getParameter("txtf_cs");
			 npaq_jv=request.getParameter("txtf_np");
			 id=request.getParameter("txtf_id");
			 des_jv=request.getParameter("txtf_des");*/
			//flag=4;
			//JOptionPane.showInputDialog("The value of flag is"+num1);
               //clvLinea=request.getParameter("clvLinea");Show the other part
 %>
<form action="eti2_cb.jsp" method="post" name="form" >
<input type="button" name="imprimir" value="Imprimir" onclick="window.print();"><input type="button" name="imprimir" value="Generar Código de Barras" onclick="location.reload();">
<a href="javascript:history.back(1)">Desea regresar e imprimir otra Clave?</a>
<table width="964" height="226" border="0">
     <%
	 if(cajas_jv.equals("0"))
	  {
	 %> 
	 <table>
 <tr>
       <td width="258" height="24">&nbsp;</td>
       <td width="164"><span class="style23"><img src="ima/t_erchi.jpg"   /></span></td>
     </tr>
    <tr>
    <td colspan="2"><div align="center"><strong><span class="style16"><%=descri_jv%></span></strong></div></td>
    </tr>
  <tr>
    <td height="36"><span class="style23">CLAVE</span></td>
    <td><span class="style23">LOTE</span></td>
  </tr>
  <tr>
    <td><span class="style38">&nbsp;<%=clave_jv%></span></td>
    <td><span class="style38">&nbsp;<%=lote_jv%></span></td>
  </tr>
  <tr>
    <td><span class="style23">CADUCIDAD</span></td>
    <td><div align="center">RESTO</div></td>
  </tr>
  <tr>
    <td height="45"><span class="style39">&nbsp;<%=cadu_jv%></span><br />
	<div align="right"><span class="style41">&nbsp;Version: 0 </span></div>
	<div align="right"><span class="style41">&nbsp;FECHA:30/04/2010</span></div>	</td>
    <td><div align="center"><span class="style27"><%=resto_jv%></span></div><br />
	<div align="right"><span class="style41">GNKL-T- 7 F 02 A </span></div>
	<div align="right"><span class="style41">&nbsp;</span></div>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><span class="style23">&nbsp;</span></td>
  </tr>
</table>

	 <%
	   }
	  else
	    {
	     int var=1,npaqI_jv=0,izq=1,der=2;
		 npaqI_jv=Integer.parseInt(cajas_jv);
		 
		 if(cajas_jv.equals("1") && resto_jv.equals("0"))
		  {
		  %>
		  <table>
 <tr>
       <td width="258" height="24">&nbsp;</td>
       <td width="164"><span class="style23"><img src="ima/t_erchi.jpg"   /></span></td>
     </tr>
    <tr>
    <td colspan="2"><div align="center"><strong><span class="style16"><%=descri_jv%></span></strong></div></td>
    </tr>
  <tr>
    <td height="36"><span class="style23">CLAVE</span></td>
    <td><span class="style23">LOTE</span></td>
  </tr>
  <tr>
    <td><span class="style38">&nbsp;<%=clave_jv%></span></td>
    <td><span class="style38">&nbsp;<%=lote_jv%></span></td>
  </tr>
  <tr>
    <td><span class="style23">CADUCIDAD</span></td>
    <td><div align="center"><span class="style23">NO. CAJAS</span></div></td>
  </tr>
  <tr>
    <td height="45"><span class="style39">&nbsp;<%=cadu_jv%></span><br />
	<div align="right"><span class="style41">&nbsp;Version: 0 </span></div>
	<div align="right"><span class="style41">&nbsp;FECHA:30/04/2010</span></div>	</td>
    <td><div align="center"><span class="style27"><%=izq%>/<%=cajas_jv%></span></div><br />
	<div align="right"><span class="style41">GNKL-T- 7 F 02 A </span></div>
	<div align="right"><span class="style41">&nbsp;</span></div>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><span class="style23">&nbsp;</span></td>
  </tr>
</table>

		 <%
		  }
		  else
		  {
		 while(var<=npaqI_jv)
		   {
		     if(der<=npaqI_jv+1)
			  {
			     
	  %>
     <tr>
       <td width="258" height="24">&nbsp;</td>
       <td width="164"><span class="style23"><img src="ima/t_erchi.jpg"   /></span></td>
       <td>&nbsp;</td>
       <td width="166">&nbsp;</td>
       <td width="218"><span class="style16"><img src="ima/t_erchi.jpg"  /></span></td>
     </tr>
    <tr>
    <td colspan="2"><div align="center"><strong><span class="style16"><%=descri_jv%></span></strong></div></td>
    <td width="136"><span class="style23">&nbsp;</span></td>
    <td colspan="2"><div align="center" class="style16"><strong>&nbsp;<%=descri_jv%></strong>&nbsp;</div></td>
    </tr>
  <tr>
    <td height="36"><span class="style23">CLAVE</span></td>
    <td><span class="style23">LOTE</span></td>
    <td>&nbsp;</td>
    <td>&nbsp;<span class="style23">CLAVE</span></td>
    <td>&nbsp;<span class="style23">LOTE</span></td>
  </tr>
  <tr>
    <td><span class="style38">&nbsp;<%=clave_jv%></span></td>
    <td><span class="style38">&nbsp;<%=lote_jv%></span></td>
    <td>&nbsp;</td>
    <td><span class="style38">&nbsp;<%=clave_jv%></span></td>
    <td><span class="style38">&nbsp;<%=lote_jv%></span></td>
  </tr>
  <tr>
    <td><span class="style23">CADUCIDAD</span></td>
    <td><div align="center"><span class="style23">NO. CAJAS </span></div></td>
    <td><span class="style23">&nbsp;</span></td>
    <td><span class="style23">&nbsp;CADUCIDAD</span></td>
    <td><div align="center"><span class="style23">&nbsp;NO. CAJAS </span></div></td>
  </tr>
  <tr>
    <td height="45"><span class="style39">&nbsp;<%=cadu_jv%></span><br />
	<div align="right"><span class="style41">&nbsp;Version: 0 </span></div>
	<div align="right"><span class="style41">&nbsp;FECHA:30/04/2010</span></div>	</td>
    <td><div align="center"><span class="style27"><%=izq%>/<%=cajas_jv%></span></div><br />
	<div align="right"><span class="style41">&nbsp;GNKL-T- 7 F 02 A&nbsp; </span></div>
	<div align="right"></div>	</td>
    <td><span class="style23">&nbsp;</span></td>
    <td><span class="style39"><%=cadu_jv%></span><br />
	<div align="right"><span class="style41">&nbsp;Version: 0 </span></div>
	<div align="right"><span class="style41">&nbsp;FECHA:30/04/2010</span></div>	</td>
    <td><div align="center"><span class="style27">&nbsp;<%=der%>/<%=cajas_jv%></span></div>
    <br />
	<div align="right"><span class="style41">GNKL-T- 7 F 02 A&nbsp; </span></div>
	<div align="right"><span class="style41">&nbsp;</span></div>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><span class="style23">&nbsp;</span></td>
    <td><span class="style23">&nbsp;</span></td>
    <td><span class="style23">&nbsp;</span></td>
    <td><span class="style23">&nbsp;</span></td>
  </tr>
  <% }// del if
  //if(cajas_jv.equals("1"))
	//	{npaqI_jv=-1;}
  var++;
  izq++;izq++;
  der++;der++;  
     
	
	}//llave del while
	if (!(resto_jv.equals("0")))
	 {
	 %>
	 <table>
 <tr>
       <td width="258" height="24">&nbsp;</td>
       <td width="164"><span class="style23"><img src="ima/t_erchi.jpg"   /></span></td>
     </tr>
    <tr>
    <td colspan="2"><div align="center"><strong><span class="style16"><%=descri_jv%></span></strong></div></td>
    </tr>
  <tr>
    <td height="36"><span class="style23">CLAVE</span></td>
    <td><span class="style23">LOTE</span></td>
  </tr>
  <tr>
    <td><span class="style38">&nbsp;<%=clave_jv%></span></td>
    <td><span class="style38">&nbsp;<%=lote_jv%></span></td>
  </tr>
  <tr>
    <td><span class="style23">CADUCIDAD</span></td>
    <td><div align="center">RESTO</div></td>
  </tr>
  <tr>
    <td height="45"><span class="style39">&nbsp;<%=cadu_jv%></span><br />
	<div align="right"><span class="style41">&nbsp;Version: 0 </span></div>
	<div align="right"><span class="style41">&nbsp;FECHA:30/04/2010</span></div>	</td>
    <td><div align="center"><span class="style27"><%=resto_jv%></span></div><br />
	<div align="right"><span class="style41">GNKL-T- 7 F 02 A </span></div>
	<div align="right"><span class="style41">&nbsp;</span></div>	</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><span class="style23">&nbsp;</span></td>
  </tr>
</table>

	 <%
	 }
	
  }
}//llave del else
  %>  
</table>
</form>
<%
  a.delete();
    }
%>
</body>
</html>
