<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" import="java.util.Date" errorPage="" import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");

String max_jv="";
int cb1_jv=0;

 String enc_jv="";
 String clagto_jv="";
 String unigto_jv="";
 String juris3_jv="";
 String juris4_jv="";
 
 String encar2_jv="";
 String cuantos_jv="1";
 String exi_jv="";
 
 String cie_jv="";
 int loop=0;
 
 String cve11_jv="";
 
 String cveuni_jv="";
 String fecha="";
 String sps_jv="";
 String jurisdi_jv="";
 String folr_jv="";
 String umed_jv="";
 String tusu_jv="";
 String medico_jv="";
 String paciente_jv="";
 String ccie_jv="";
 String cve1_jv="";
 String desc1_jv="";
 String lote1_jv="";
 String cad1_jv="";
 String cr1_jv="";
 String cs1_jv="";
 String exi1_jv="";
 String cve2_jv="";
 String descr2_jv="";
 String llote2_jv="";
 String cad2_jv="";
 String cr2_jv="";
 String cs2_jv="";
 String exxi2_jv="";
 String cve3_jv="";
 String descc3_jv="";
 String lote33_jv="";
 String cad3_jv="";
 String cr3_jv="";
 String cs3_jv="";
 String exi33_jv="";
 
 //variable para el proy captura de cb
 String cb_jv="";
 
 
 
 //variable para el segundo Mostrar
 	String clave2_jv="";
	String desc2_jv= "";
	String lote2_jv= ""; 
	//String cad2_jv= "";
	String lote22_jv= "";
	String cadu2_jv= "";
	String exis2_jv= "";
	String costo2_jv="";
	String exi2_jv="";
	
	String juris2_jv="";
	String date_jv="";
	String day_jv="";
	String mounth_jv="";
	String year_jv="";
//variable for the Captura 3
    String clave3_jv="";
	String desc3_jv= "";
	String lote3_jv= ""; 
	//String lote_3_jv= "";
	String cadu3_jv= "";
	String exis3_jv= "";
	String costo3_jv="";
	String exi3_jv="";
	
	String juris_4_jv="";
	
//variables for get the values of the txtf

String spss_jv="";

String med_jv=""; 
String pac_jv=""; 
String tu_jv="";
 
String spss2_jv="";
String fol22_jv="";
String med2_jv=""; 
String pac2_jv=""; 
String tu2_jv="";

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
	 
 
cuantos_jv=request.getParameter("txtf_cant");
     Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmt_001 = conn_001.createStatement();
        ResultSet rset_001=stmt_001.executeQuery("SELECT * FROM datos_far order by (clave+0)");
          while (rset_001.next()) 
                  { 
                    clagto_jv=rset_001.getString("clave");  
				    unigto_jv=rset_001.getString("unidad");	
					enc_jv=rset_001.getString("encar1");   
					juris2_jv=rset_001.getString("juris");
                    
                   }


     int tam=0,tam2=0,x1=0;
     String cad1[]=new String[10000];  //array for show clients 
     String arr[]= new String[5000];     //array for the 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 
	 String cie[]= new String[5000];
	 
	 String cad[]= new String[5000];
	 String cad2[]= new String[5000];
	 String cad3[]= new String[5000];
	 
	 lotes[0]="";
	 lotes2[0]="";
	 cad[0]="";
	 cad2[0]="";
     String name="";
     String service_jv="";
	 int pos=0;
	 int pos2=0;
	 int pos3=0;
	 int cont2=0;
	 int cont3=0;
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
	 
     int altaOK=0;
     int altaOKAY=0;	 
     String but="r";
	 String clave="";

     String juris_jv="";
	 //String juris2_jv="";
     String cs_jv="";
	 String lotes2_jv="";
	 
	 String check=request.getParameter("txtf_5");
	 int c=0;
	 int tam_3=0;
	 mail[0]="lasalle_tur@yahoo.com";
     String val="h";
	 String user="h";
	 //variables para mostrar en campos
	    String clave_jv= "";
		String descrip_jv= "";
		String desc_jv=  "";
	    String lote_jv= "";
		String cadu_jv= "";
		String exis_jv= "";
		String costo_jv= "";
int cont=1;
//Rutina para obtener las claves 
	    Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1=stmt1.executeQuery("SELECT distinct clave FROM datos_inv_cb_t order by clave+0 asc");
          while (rset1.next()) 
                  { 
                    
                    cad1[tam2]=rset1.getString("clave");     
                     tam2++;
                   }

	 
	 
	 

try{
        altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}

	if(but.equals("Cantidad"))
      {
        cuantos_jv= request.getParameter("txtf_cant");
		loop=Integer.parseInt(cuantos_jv);
		out.print(""+loop);
      }
	
	
	
	if(but.equals("Mostrar"))
{

  juris_jv= request.getParameter("txtf_3");
   //customerId2=0;   
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from claves_alm where clave='"+juris_jv+"'");
				  //ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  descrip_jv=  rset_1.getString("descr");
				  lote2_jv=  rset_1.getString("lote");
				  cad2_jv =  rset_1.getString("txtf_caduc"); 
				  cadu_jv=  rset_1.getString("caducidad");
				  exi_jv=  rset_1.getString("exisf");
				  
				  //if(exi_jv.equals("0"))
				     if(juris_jv.equals(clave_jv))
					   {
					   
                         					   
					         lotes[pos]=lote2_jv;
						     cad[pos]=cadu_jv;
						     exis[pos]=exi_jv;
							 pos++;
					         cont++;
						  	 
						    
				        }
                 
	//if(exi_jv.equals("0"))
	  			    
    lote2_jv=lotes[0];
	cadu_jv=cad[0];
	exi_jv=exis[0];
				  
				  
				  //costo_jv=  rset_1.getString("costo");
				  
				 //variables for get the medicine´s values 
				  
				  
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");

				  clave2_jv=  request.getParameter("txtf_cla2");
				  desc2_jv=  request.getParameter("txtf_desc2");
				  lote22_jv=  request.getParameter("txtf_lote2");  
				  cadu2_jv=  request.getParameter("txtf_cad2");
                  exis2_jv=  request.getParameter("txtf_cr2");
				  costo2_jv= request.getParameter("txtf_cs2");
				  exi2_jv= request.getParameter("txtf_exi2");
				  
				  cie_jv=request.getParameter("txtf_cie");
                  cve11_jv=request.getParameter("txtf_cla");
}
//out.print("raymond"+cont+lotes[0]);
}				
if(but.equals("Mostrar Datos"))
     {	
	 lote2_jv=  request.getParameter("txtf_lote");
	 cad2_jv =  request.getParameter("txtf_caduc");
	 clave_jv=request.getParameter("txtf_2");
	 descrip_jv= request.getParameter("txtf_descrip");
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_1 = conn_1.createStatement();                  
                  ResultSet rset_1 = stmt_1.executeQuery("select * from datos_inv_cb_t where clave='"+clave_jv+"'"); 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  descrip_jv=  rset_1.getString("descr");				  						  	 						
				        }
}
 
 	if(but.equals("Capturar"))
     {
	 
	 java.util.Calendar currDate = new java.util.GregorianCalendar();
	 clave_jv=request.getParameter("txtf_2");
	 lote2_jv=  request.getParameter("txtf_lote");
	 cad2_jv =  request.getParameter("txtf_caduc");
	 Date fecha1=new Date();
	 int bansicadu =1;
	 SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
	 if(!cad2_jv.equals("")){
	 fecha1=df.parse(cad2_jv);
	 int month = currDate.get(currDate.MONTH)+1;
     int month2 = (fecha1.getMonth())+1;	 
	 int difmonth = (month2 - month);
	 
	 int year = currDate.get(currDate.YEAR);
     int year2 = (fecha1.getYear())+1900;
	 int difyear = (year2 - year);
	 
	 //int bansicadu =1;
	 if(difyear==0){
	 	if(difmonth < 6)
			bansicadu=0;		
	 }else if(difyear<0)
	 	bansicadu=0; 
		
	if(difyear>0){
		
		if(difmonth ==0 ){
			if(month2==month);
			else{
			bansicadu=0; 
			}
			}
		}
		//out.print("si o no"+bansicadu);
	 	//out.print("mes"+month);
	    //out.print("num_meses"+difmonth);
		//out.print("meses"+month2);
	}		 	 Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt = conn.createStatement();				  
                  stmt.execute("commit"); 
 
 cb_jv=request.getParameter("txtf_1");
 clave_jv=request.getParameter("txtf_2");
 descrip_jv=request.getParameter("txtf_descrip"); 
 med_jv=request.getParameter("txtf_3");
 lote2_jv=  request.getParameter("txtf_lote");
 int bansicaptu =1;
 
 ResultSet rset_10 = stmt.executeQuery("select * from datos_inv_cb_t where clave='"+clave_jv+"' and lote='"+lote2_jv+"'"); 
                   while(rset_10.next()){
                       bansicaptu =0;
	               }
				   
				  //stmt.execute("insert into folio_rec values(null,'morelia')");
                  //stmt.execute("commit"); 
if(bansicadu==1){
 if(bansicaptu==1){
 if(!(clave_jv.equals("")) && !(descrip_jv.equals("")) && !(lote2_jv.equals("")) && !(cad2_jv.equals(""))){  
 
        rset_10=stmt.executeQuery("select MAX(cb) from datos_inv_cb_t"); 
					while(rset_10.next()){   
			max_jv=rset_10.getString("MAX(cb)");
			      }  
			cb1_jv=Integer.parseInt(max_jv);
			cb1_jv+=1;
			
	 		stmt.execute("insert into datos_inv_cb_t values ('"+clave_jv+"','"+lote2_jv+"','"+descrip_jv+"','"+cad2_jv+"','"+cb1_jv+"')");		 
	 		%>
		<script>			
		 	self.location='http://192.168.1.180:8080/gnk/captura_prov-now09Jul09.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>';			
		
  	alert("Los datos han sido guardados");
  </script>
  <%
  }else{
  %>
  <script>
  	alert("ERROR, Los datos ingresados no son los correctos, intentalo nuevamente");
  </script>
  <%
  }
  }else{
   %>
  <script>
  	alert("ERROR, Esta clave ya existe ingresa otra nuevamente");	
	txtf_2.focus();
  </script>
  <%
    }
  
    }else{
   %>
  <script>
  	alert("ERROR, la fecha ingresada es incorrecta recuerda que debe ser mayor a 6 meses");	
	txtf_2.focus();
  </script>
  <%  
  }
     }    
%>

<%! public int customerIds=0;
  public int regulaCont2()
      {
                      
             try { 
                           
                  Connection conn_01 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_01 = conn_01.createStatement();
                
                  //stmt_01.execute("insert into rec values(null,'morelia')");
                  //stmt_01.execute("commit"); 
                  ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_rec");
                  while(rset_01.next())
                       customerIds = rset_01.getInt("no_rec");
                conn_01.close();
                 System.out.print("halo");           
                } catch (Exception e)
                     {  
                       System.out.print("haloja");  
                     }
             
  return customerIds;
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


<html xmlns="http://www.w3.org/1999/xhtml">
<!-- DW6 -->
<head>
<!-- Copyright 2005 Macromedia, Inc. All rights reserved. -->
<title>:: BASE DE DATOS DE MEDICAMENTOS ::</title>
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
<script language="javascript" src="list02.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-weight: bold;
}
.style4 {color: #FF0000}
.style5 {
	font-size: 12px;
	font-weight: bold;
}
body {
	background-color: #E6E6E6;
}
a {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 11px;
	color: #000033;
	font-weight: bold;
}
a:visited {
	color: #990000;
}
-->
</style>
</head>
<body onload="fillCategoryMed()">
<p>
  <script src="scw.js" type="text/javascript"> </script>
</p>
<table width="100" border="6" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
    <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr bgcolor="#3366CC">
        <td colspan="3" rowspan="2" bgcolor="#FFFFFF"><div align="center"><strong><img src="gnk_toluca.jpg" width="103" height="86" /></strong></div></td>
        <td height="63" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="right">Captura de Base de Datos de Medicamentos </div></td>
        <td height="63" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><img src="logo_conjun.jpg" width="270" height="74" /></td>
        <td height="63" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo">&nbsp;</td>
        <td width="69" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr bgcolor="#3366CC">
        <td height="26" colspan="3" align="center" valign="bottom" bgcolor="#FFFFFF" id="tagline"><div align="justify" class="style1"> GNK Log&iacute;stica &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;GNKL Software </div></td>
        <td width="69" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
      </tr>
      <tr bgcolor="#CCFF99">
        <td height="25" colspan="7" bgcolor="#009999" id="dateformat"><a href="menu_mainARdgo.jsp">&nbsp;&nbsp;
            <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
          Regresar a Men&uacute; Principa</a><a href="menu_mainAR.jsp">l</a></td>
      </tr>
      <tr>
        <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
      </tr>
      <tr>
        <td width="165" valign="top" bgcolor="#E6F3FF">&nbsp;<br />
          &nbsp;<br />
          &nbsp;<br />
          &nbsp;<br />        </td>
        <td>&nbsp;</td>
        <td colspan="2" valign="top"><img src="mm_spacer.gif" alt="" width="305" height="1" border="0" />
            <form action="reg_nuevadgo.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&amp;fol_vi=<%=fol2_jv%>&amp;prove_vi=<%=provee_jv%>&amp;recib_vi=<%=recibe_jv%>&amp;entreg_vi=<%=entrega_jv%>&amp;captu_vi=<%=capturar_jv%>&amp;ubic_vi=<%=ubic_jv%>&amp;orig_vi=<%=origen_jv%>&amp;obser_vi=<%=obser_jv%>&amp;boolDocRem_vi=<%=boolDocRem_jv%>" method="post" name="form" id="form" onsubmit="javascript:return ValidateAbas(this)">
              &nbsp;
              <!--onSubmit="javascript:return ValidateFormCant(this)"-->
              INGRESE LOS DATOS
              <table width="821" border="1">
                <tr>
                  <td>CLAVE:</td>
                  <td colspan="2"><input name="txtf_2" type="text" size="50" onkeypress="<%but="Mostrar Datos";%>" value="<%=clave_jv%>" onchange="toUppercaseCve();"/>
                <select name="slct_des" class="navText" onchange="setClienteDes(this.form)" onkeypress="return handleEnter(this, event)" >
                  <option>-- Clave --</option>
                  <%
		     
             for(int x=0;x<tam2;x++)
                {
                   
           %>
                  <option value="<%=cad1[x]%>"><%=cad1[x]%></option>
                  <%
                }
           %>
                </select>
                <label>
                <input type="submit" name="Submit" value="Mostrar Datos" />
              </label></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>DESCRIPCI&Oacute;N:</td>
                  <td colspan="2"><input name="txtf_descrip" type="text" size="50" onkeypress="return handleEnter(this, event)" value="<%=descrip_jv%>"/></td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>LOTE:</td>
                  <td><input name="txtf_lote" type="text" size="50" value="<%=lote2_jv%>" onchange="toUppercaseLote();" onkeypress="return handleEnter(this, event)"/></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="34">CADUCIDAD:</td>
                  <td><label>
                    <input type='text' name='txtf_caduc' id='txtf_caduc' title='DD/MM/AAAA' size='10' maxlength='10' onclick='scwShow(this, event);' value="<%=cad2_jv%>" readonly="true"/>
                    </label>
                <img src="ico_calendario.gif" width="27" height="26" border="0" onclick="scwShow(scwID('txtf_caduc'),event);"/> </td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="37"><label></label></td>
                  <td height="37"><input type="submit" name="Submit" value="Capturar" /></td>
                  <td height="37"><a href='http://192.168.1.180:8080/gnk/captura_prov-now09Jul09.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&amp;fol_gnk_vi=<%=folgnk_vi_jv%>&amp;fol_vi=<%=fol2_jv%>&amp;prove_vi=<%=provee_jv%>&amp;recib_vi=<%=recibe_jv%>&amp;entreg_vi=<%=entrega_jv%>&amp;captu_vi=<%=capturar_jv%>&amp;ubic_vi=<%=ubic_jv%>&amp;orig_vi=<%=origen_jv%>&amp;obser_vi=<%=obser_jv%>&amp;boolDocRem_vi=<%=boolDocRem_jv%>'>Regresar a Captura de Remisi&oacute;n </a></td>
                  <td height="37">&nbsp;</td>
                </tr>
              </table>
              <table width="877" border="0">
                <tr>
                  <td colspan="3">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="73">&nbsp;</td>
                  <td width="240">&nbsp;</td>
                  <td width="105">&nbsp;</td>
                  <td width="175">&nbsp;</td>
                  <td width="67">&nbsp;</td>
                  <td width="83">&nbsp;</td>
                  <td width="88">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="7">&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="7">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td colspan="3">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
              <p><br />
              </p>
            </form></td>
        <td width="50">&nbsp;</td>
        <td width="225" valign="top"><br />
          &nbsp;<br />
          <table border="0" cellspacing="0" cellpadding="0" width="190">
            <tr>
              <td colspan="3" class="subHeader" align="center">&nbsp;</td>
            </tr>
            <tr>
              <td width="40"><img src="mm_spacer.gif" alt="" width="40" height="1" border="0" /></td>
              <td width="110" id="sidebar" class="smallText"><br />
              <p><br />
                .<br />
                <a href="javascript:;"></a></p>
                <p><br />
              </p>
                 <br />
                &nbsp;<br />
                &nbsp;<br />              </td>
              <td width="40">&nbsp;</td>
            </tr>
          </table></td>
        <td width="69">&nbsp;</td>
      </tr>
      <tr>
        <td width="165">&nbsp;</td>
        <td width="50">&nbsp;</td>
        <td width="6">&nbsp;</td>
        <td width="462">&nbsp;</td>
        <td width="50">&nbsp;</td>
        <td width="225">&nbsp;</td>
        <td width="69">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
<img src="mm_spacer.gif" alt="" width="50" height="1" border="0" />
</body>
</html>
