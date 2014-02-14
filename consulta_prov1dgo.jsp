<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<% Class.forName("org.gjt.mm.mysql.Driver");
//Variables for proveedores
//int ban_cap=0;
String folgnk_jv="";
String folgnk_bus_jv="";
String folrem_bus_jv="";
String folrem_jv="";
String provee_jv="";
String recibe_jv="";
String entrega_jv="";
String capturar_jv="";
String ubic_jv="";
String origen_jv="";
String obser_jv="";

String fol2_vi_jv="";
 	  try {
       		fol2_vi_jv = request.getParameter("fol_vi");       			   
	  } catch (Exception e) { }
String provee_vi_jv="";
 	  try {
       		provee_vi_jv = request.getParameter("prove_vi");       			   
	  } catch (Exception e) { }
	  
	  String recibe_vi_jv="";
 	  try {
       		recibe_vi_jv = request.getParameter("recib_vi");       			   
	  } catch (Exception e) { }
	  
	  String entrega_vi_jv="";
 	  try {
       		entrega_vi_jv = request.getParameter("entreg_vi");       			   
	  } catch (Exception e) { }
	  
	  String capturar_vi_jv="";
 	  try {
       		capturar_vi_jv = request.getParameter("captu_vi");       			   
	  } catch (Exception e) { }
	  
	  String ubic_vi_jv="";
 	  try {
       		ubic_vi_jv = request.getParameter("ubic_vi");       			   
	  } catch (Exception e) { }
	  
	  String origen_vi_jv="";
 	  try {
       		origen_vi_jv = request.getParameter("orig_vi");       			   
	  } catch (Exception e) { }
	  
	  String obser_vi_jv="";
 	  try {
       		obser_vi_jv = request.getParameter("obser_vi");       			   
	  } catch (Exception e) { }
	  
	  String boolDocRem_vi_jv="";
 	  try {
       		boolDocRem_vi_jv = request.getParameter("boolDocRem_vi");       			   
	  } catch (Exception e) { }

//String costo_jv="";
String cost_jv="";
String boolDocRem_jv="";






 String enc_jv="";
 String clagto_jv="";
 String unigto_jv="";
 String juris3_jv="";
 String juris4_jv="";
 
 String edad_jv="";
 String meses_jv="";
 
 String salida1_jv="";
 String salida2_jv="";
 String salida3_jv="";
 int salida_1_jv=0;
 int salida_2_jv=0;
 int salida_3_jv=0;
 
 String encar2_jv="";
 String cuantos_jv="1";
 String exi_jv="0";
 //String cost_jv="";
 
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
 String folgnk1_jv="";
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
 
  
 
 //variable para el segundo Mostrar
 	String clave2_jv="";
	String desc2_jv= "";
	String lote2_jv= "Lote"; 
	String lote22_jv= "";
	String cadu2_jv= "";
	String exis2_jv= "";
	String costo2_jv="";
	String exi2_jv="";
	
	String juris2_jv="";
	String date_jv="";
	String fecha_1="";
	 String fecha_2="";

	String fecha_1_jv="";
	 String fecha_2_jv="";
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
String fol2_jv="";
String med_jv=""; 
String pac_jv=""; 
String tu_jv="";
 
String spss2_jv="";
String fol22_jv="";
String med2_jv=""; 
String pac2_jv=""; 
String tu2_jv="";
//select cve_med,descri,lote,cadu,cr,cs from datos_all where folio_rec='324';
String cve__jv="Clave";
String descri__jv="Descripcion";
String lote__jv="Lote";
String cadu__jv="Caducidad";
String cr__jv="0";
String cs__jv="";
 
cuantos_jv=request.getParameter("txtf_cant");


     //Connection conn_001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        //Statement stmt_001 = conn_001.createStatement();
        //ResultSet rset_001=stmt_001.executeQuery("SELECT folio_gnk, FROM datos_far order by (clave+0)");
          //while (rset_001.next()) 
                  //{ 
                    //clagto_jv=rset_001.getString("clave");  
				    //unigto_jv=rset_001.getString("unidad");	
					//enc_jv=rset_001.getString("encar1");   
					//juris2_jv=rset_001.getString("juris");
                    
                   //}
//cve__jv=request.getParameter("txtf_fol2");
//out.print(""+cve__jv);
/*
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmt__001 = conn__001.createStatement();
  ResultSet rset__001=stmt__001.executeQuery("select cve_med,descri,lote,cadu,cr,cs,exis from datos_all where folio_rec='"+cve__jv+"'");
 
*/ 
  //stmt__001.execute("commit");       






     int tam=0,tam2=0,x1=0,tama=0,tama1=0,tamFG=0,tamFR=0;
     String folgnk1[]=new String[10000];  //array for show key's gnk
	 String folrem1[]=new String[10000];  //array for show key's rem
     String arr[]= new String[5000];     //array for the 
	 String noMed[]= new String[5000];
	 String noPac[]= new String[5000];
	 
	 
	 
	 String lotes[]= new String[5000];
	 String lotes2[]= new String[5000];
	 String lotes3[]= new String[5000];
	 String exis[]= new String[5000];
	 String exis2[]= new String[5000];
	 String exis3[]= new String[5000];
	 
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
	    String clave_jv= "Clave";
		String desc_jv=  "Descripción";		
	    String lote_jv= "";
		String cadu_jv= "Caducidad";
		String exis_jv= "";
		//String exis2_jv= "";
		String costo_jv= "";
int cont=1;
//Rutina para obtener las claves 
	    Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmt1 = conn1.createStatement();
        ResultSet rset1=stmt1.executeQuery("SELECT distinct folio_gnk FROM datos_prov_1_0807 order by (folio_gnk)");
         	
        ResultSet rset2=stmt1.executeQuery("SELECT distinct folio_rem FROM datos_prov_1_0807 order by (folio_rem)");
          while (rset2.next()) 
                  { 
                    
                    folrem1[tamFR]=rset2.getString("folio_rem");     
                     tamFR++;
                   }				   

          rset1=stmt1.executeQuery("SELECT nombre FROM pacientes order by (nombre+0)");
          while (rset1.next()) 
                  { 
                    
                    noPac[tama1]=rset1.getString("nombre");     
                     tama1++;
                   }

rset1=stmt1.executeQuery("SELECT nombre FROM medicos order by (nombre+0)");
          while (rset1.next()) 
                  { 
                    
                    noMed[tama]=rset1.getString("nombre");     
                     tama++;
                   }

Connection connn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        Statement stmtt1 = connn1.createStatement();
        ResultSet rsett1=stmtt1.executeQuery("select cves from cie3;");
          while (rsett1.next()) 
                  { 
                    
                    cie[tam_3]=rsett1.getString("cves");     
                     tam_3++;
                   }
	//int tam=0,tam2=0,x1=0,tama=0,tama1=0;			   
	 //int altaOK=0;
     //int altaOKAY=0;	 
     //String but="r";
	 //String clave="";
     //String clave_jv="";
	 //Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        //Statement stmt1 = conn1.createStatement();
        //ResultSet rset1=stmt1.executeQuery("SELECT clave FROM clav1 order by (clave+0)");
          //while (rset1.next()) 
                  //{                                        
                   //}
 String value="";				   
int ban=0;
         rset1=stmt1.executeQuery("select date from datos_prov_1_0807 order by (date + 0) asc");
          while (rset1.next()) 
                  { 
				  date_jv=rset1.getString("date");
				   Connection conn = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_date = conn.createStatement();
				  ResultSet rset_date = stmt_date.executeQuery("SELECT DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')"); //;SELECT STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
                    while(rset_date.next())
                    date_jv= rset_date.getString("DATE_FORMAT('"+date_jv+"', '%d/%m/%Y')");//STR_TO_DATE('"+date_jv+"', '%m/%d/%Y')
	              
				  //stmt.execute("insert into folio_rec values(null,'morelia')");
                  stmt_date.execute("commit"); 
                    if(ban==0) 
					  { 
                        arr[tam2]=date_jv;// rset1.getString("date")    
                        tam2++; 
						ban=1;
					  }
					else
					  {
					   value=date_jv;//rset1.getString("date")
					   
					      if(value.equals(arr[tam2-1]))
						     tam=tam-1;
						  else
						   {
						     arr[tam2]=value;//rset1.getString("pp_date");
					         tam2++;
					       }
					  }                   
				}
	 
	 

try{
        //altaOK=Integer.parseInt(request.getParameter("altaok"));   
       }catch(Exception e){ System.out.print("Doesn't make the altaOK"); }
	   
   try { 
        but=""+request.getParameter("Submit");
        //altaOK="no";
    }catch(Exception e){System.out.print("not");}

	if(but.equals("Cantidad"))
      {
        cuantos_jv= request.getParameter("txtf_cant");
		loop=Integer.parseInt(cuantos_jv);
		//out.print(""+loop);
      }
	
	if(but.equals("slct"))
      {
	     //out.print("VICTORIA");
      }
	  	if(but.equals("AGREGAR CLAVE"))
			{
				
	 fol2_jv=request.getParameter("txtf_fol2");
	 provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 folgnk_bus_jv=request.getParameter("slct_folgnk");
	 folrem_bus_jv=request.getParameter("slct_folrem");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");
	 boolDocRem_jv=request.getParameter("txtf_coin");
	%>
		<script>			
		 	self.location='http://localhost:8080/gnk/index_rec.jsp?fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>';			
		</script>
	<%	 	 
			}
	if(but.equals("Mostrar Datos"))
{
altaOK=0;
     fol2_jv= request.getParameter("txtf_fol2");
	 fol2_jv= request.getParameter("txtf_fol2");
     provee_jv=request.getParameter("txtf_4");
	 recibe_jv=request.getParameter("txtf_5");
	 entrega_jv=request.getParameter("txtf_8");
	 capturar_jv=request.getParameter("txtf_10");
	 ubic_jv=request.getParameter("txtf_6");
	 folgnk_bus_jv=request.getParameter("slct_folgnk");
	 folrem_bus_jv=request.getParameter("slct_folrem");
	 origen_jv=request.getParameter("txtf_7");
	 obser_jv=request.getParameter("txa_1");	 
	 boolDocRem_jv=request.getParameter("txtf_coin");
	 cve__jv=request.getParameter("txtf_fol2");
     juris_jv= request.getParameter("txtf_3");
   //customerId2=0;   
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from cla_alm where clave='"+juris_jv+"'");
				  ResultSet rset_2 = stmt_1.executeQuery("select * from cla_alm where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  desc_jv=  rset_1.getString("descripcion");
				  lote2_jv=  rset_1.getString("lote");  
				  cadu_jv=  rset_1.getString("caducidad");
				  //exi_jv=  rset_1.getString("exisf");
				  
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
				  fol2_jv= request.getParameter("txtf_fol2");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");
					//boolDocRem_jv=request.getParameter("rad1");
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

if(but.equals("Existencias"))
{
 // out.print("raymond"+cont+lotes[0]);
   cve__jv=request.getParameter("txtf_fol2");
   juris_jv= request.getParameter("txtf_3");
   lote2_jv=  request.getParameter("txtf_lote"); 
   //customerId2=0;   
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from cla_alm where clave='"+juris_jv+"' and lote='"+lote2_jv+"'");
				  ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave_jv=  rset_1.getString("clave");
				  desc_jv=  rset_1.getString("descripcion");
				  lote2_jv=  rset_1.getString("lote");  
				  cadu_jv=  rset_1.getString("caducidad");
				  //exi_jv=  rset_1.getString("exisf");
				  
				  //if(exi_jv.equals("0"))
				     if(juris_jv.equals(clave_jv))
					   {
					   
                         if(!(exi_jv.equals("0")))
						  {					   
					         lotes[pos]=lote2_jv;
						     cad[pos]=cadu_jv;
						     exis[pos]=exi_jv;
							 pos++;
					         cont++;
						  }	 
						    
				        }
                 
	//if(exi_jv.equals("0"))
	  			    
   // lote2_jv=lotes[0];
	//cadu_jv=cad[0];
	//exi_jv=exis[0];
				  
				  
				  //costo_jv=  rset_1.getString("costo");
				  
				 //variables for get the medicine´s values 
				  
				  
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
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
				  
				  edad_jv=request.getParameter("txtf_edad");
				  meses_jv=request.getParameter("txtf_mes");				  				  
}
}			

if(but.equals("Mostrar 2"))
{
  //out.print("enter");
  juris3_jv = request.getParameter("txtf_32");
   //customerId2=0;   
   //out.print("enter"+juris3_jv);
   Connection conn_1 = 
                  DriverManager.getConnection("jdbc:mysql://localhost/dgo");
                  Statement stmt_1 = conn_1.createStatement();
                  
                  //cs_jv= request.getParameter("SubCat");
                  ResultSet rset_1 = stmt_1.executeQuery("select * from cla_alm where clave='"+juris3_jv+"'");
				  ResultSet rset_2 = stmt_1.executeQuery("select * from cla_lotes where clave='"+juris_jv+"'"); 
         /* while(rset_2.next())
				     {
  
		  lote_jv=  rset_1.getString("lote");
                      } 		  
         */
		 
		  while(rset_1.next())
				     {
                  clave2_jv=  rset_1.getString("clave");
				  desc2_jv=  rset_1.getString("descripcion");
				  lote22_jv=  rset_1.getString("lote");  
				  cadu2_jv=  rset_1.getString("caducidad");
				  //exi2_jv=  rset_1.getString("exisf");
				     if(juris3_jv.equals(clave2_jv))
					   {
					     lotes2[pos2]=lote22_jv;
						 cad2[pos2]=cadu2_jv;
						 exis2[pos2]=exi2_jv;
						 pos2++;
					     cont2++;   
				        }
                 
				    

				  
				  exi2_jv=  rset_1.getString("exisf");
				  //costo2_jv=  rset_1.getString("costo");
				  
//variable that get the values from the textfields
				folgnk_bus_jv=request.getParameter("slct_folgnk");
	 folrem_bus_jv=request.getParameter("slct_folrem"); 
				  clave_jv=  request.getParameter("txtf_cla");
				  desc_jv=  request.getParameter("txtf_desc");
				  lote2_jv=  request.getParameter("txtf_lote");  
				  cadu_jv=  request.getParameter("txtf_cad");
                  exis_jv=  request.getParameter("txtf_cr");
				  costo_jv= request.getParameter("txtf_cs");
				  exi_jv= request.getParameter("txtf_exi");
				  
				  //for the top part
				  spss_jv= request.getParameter("txtf_spss");
				  fol2_jv= request.getParameter("txtf_fol2");
                  med_jv= request.getParameter("txtf_med");
                  pac_jv= request.getParameter("txtf_pac");
                  tu_jv= request.getParameter("txtf_tu");
            cie_jv=request.getParameter("txtf_cie");
			 clave_jv=request.getParameter("txtf_cla");
			 desc_jv=  request.getParameter("txtf_desc");
			 edad_jv=request.getParameter("txtf_edad");
			 
			   lote22_jv=lotes2[0];
	           cadu2_jv=cad2[0];
	           exi2_jv=exis2[0];
}
//out.print("raymond"+cont2+lotes2[0]);
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
                  ResultSet rset_01 = stmt_01.executeQuery("select no_rec from folio_prov");
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
<title>:: CAPTURAR MEDICAMENTO Y GENERAR RECIBO ::</title>
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
.style5 {color: #FF0000; font-weight: bold; }
.style7 {color: #000066; font-weight: bold; }
.style11 {color: #003366; font-weight: bold; font-size: 16px; }
.style12 {color: #000066}
.style13 {font-size: 16px}
.style14 {color: #000066; font-weight: bold; font-size: 16px; }
.style15 {color: #FF0000; font-weight: bold; font-size: 16px; }
.style16 {font-size: 16}
.style17 {font-weight: bold; color: #003366;}
.style2 {color: #000033; font-size: 10px; }
.style18 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
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
body {
	background-color: #E6E6E6;
}
-->
</style>
</head>
<body>
<p>
  <script src="scw.js" type="text/javascript"> </script>
  <script src="prototype.js" type="text/javascript"> </script>
  <%

if(but.equals("Por Día"))
      {
	       //altaOK=0;
		   clave_jv= request.getParameter("txtf_pdia");
		   Class.forName("org.gjt.mm.mysql.Driver"); 
   Connection conne_1 = DriverManager.getConnection
                         ("jdbc:mysql://localhost/dgo");
   Statement stmt_2 = conne_1.createStatement();
   ResultSet rset_2 = stmt_2.executeQuery("select cve_med,descri,lote,cadu,date,sum(cs) from datos_small group by (cve_med+0);");

           rset_2 = stmt_2.executeQuery("SELECT STR_TO_DATE('"+clave_jv+"', '%d/%m/%Y')"); 
                    while(rset_2.next())
                    clave_jv= rset_2.getString("STR_TO_DATE('"+clave_jv+"', '%d/%m/%Y')");
					
	                stmt_2.execute("commit"); 
		  //out.print(fecha_1+""+fecha_2);
		  
		    
		   //select distinct folio_gnk from datos_prov_1_0807 where date between '"+fecha_1+"' and '"+fecha_2+"' group by (cve_med + 0)
		   //rset1=stmt1.executeQuery("select distinct folio_gnk from datos_prov_1_0807 where date between '"+fecha_1+"' and '"+fecha_2+"' group by (cve_med + 0);");
		   rset1 = stmt1.executeQuery("select distinct folio_gnk from datos_prov_1_0807 where date='"+clave_jv+"' group by (folio_gnk + 0)"); 
		   int banresult=0;
          while (rset1.next()) 
                  {    
				    banresult=1;               
                    folgnk1[tamFG]=rset1.getString("folio_gnk");     
                    tamFG++;
                   }
 if(banresult==0){
 %>
  <script>					 	
  			alert("En la fecha solicitada no se tuvo ningun registro, Gracias por consultar");
  		</script>
  <%	
 }
		   
	//;
		   //select * from cla_lotes where clave='0106'; select * from cla_lotes where clave='"+clave_jv+"' order by (exis+0)
   	   
		   
       }

if(but.equals("Por Fechas"))
      {
	       altaOK=0;
		   //clave_jv= request.getParameter("txtf_3");
   
           //rset_2 = stmt_2.executeQuery("select * from cla_lotes order by (clave+0);");  
		   //select * from cla_lotes where clave='0106'; 
   	       fecha_1_jv= request.getParameter("slct_f1");
		   fecha_2_jv= request.getParameter("slct_f2");
	   
	   
		   fecha_1= request.getParameter("slct_f1");
		   fecha_2= request.getParameter("slct_f2");
		  out.print(fecha_1+""+fecha_2+"\n"); 
          //date_jv= request.getParameter("txtf_date");
		  Class.forName("org.gjt.mm.mysql.Driver"); 
   Connection conne_1 = DriverManager.getConnection
                         ("jdbc:mysql://localhost/dgo");
   Statement stmt_2 = conne_1.createStatement();
   ResultSet rset_2 = stmt_2.executeQuery("SELECT STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')"); 
                    while(rset_2.next())
                    fecha_1= rset_2.getString("STR_TO_DATE('"+fecha_1+"', '%d/%m/%Y')");
					
	      rset_2 = stmt_2.executeQuery("SELECT STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')"); 
                    while(rset_2.next())
                    fecha_2= rset_2.getString("STR_TO_DATE('"+fecha_2+"', '%d/%m/%Y')");        
				  //stmt.execute("insert into folio_rec values(null,'morelia')");
                  stmt_2.execute("commit"); 
		  out.print(fecha_1+""+fecha_2);
		  //Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
        //Statement stmt1 = conn1.createStatement();
        rset1=stmt1.executeQuery("select distinct folio_gnk from datos_prov_1_0807 where date between '"+fecha_1+"' and '"+fecha_2+"' group by (folio_gnk + 0);");
          while (rset1.next()) 
                  {                     
                    folgnk1[tamFG]=rset1.getString("folio_gnk");     
                    tamFG++;
                   }
		         }
if(but.equals("Folio GNK"))
      {
	 folgnk_bus_jv=request.getParameter("slct_folgnk");
	 folrem_bus_jv=request.getParameter("slct_folrem");	 
 	 Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
  	 Statement stmt__001 = conn__001.createStatement();  
  	 ResultSet rset__001=stmt__001.executeQuery("select distinct * from datos_prov_1_0807 where folio_gnk='"+folgnk_bus_jv+"' or folio_rem='"+folrem_bus_jv+"'");
	 
	  while(rset__001.next()) 
                  {				  
				  folgnk_jv=rset__001.getString("folio_gnk");
				  date_jv=rset__001.getString("date");
				  folrem_jv=rset__001.getString("folio_rem");
				  provee_jv=rset__001.getString("provee");
				  recibe_jv=rset__001.getString("reci");
				  entrega_jv=rset__001.getString("entrega");
				  ubic_jv=rset__001.getString("ubicacion");				 
				  origen_jv=rset__001.getString("origen");
				  obser_jv=rset__001.getString("obser");
				  cadu_jv=rset__001.getString("descri");
				  cadu_jv=rset__001.getString("cincDocRem");				  				  			  				  		
				  }
	 }
	 if(but.equals("Folio Remision"))
      {
	 folgnk_bus_jv=request.getParameter("slct_folgnk");
	 folrem_bus_jv=request.getParameter("slct_folrem");	 
 	 Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
  	 Statement stmt__001 = conn__001.createStatement();  
  	 ResultSet rset__001=stmt__001.executeQuery("select distinct * from datos_prov_1_0807 where folio_gnk='"+folgnk_bus_jv+"' or folio_rem='"+folrem_bus_jv+"'");
	 
	  while(rset__001.next()) 
                  {				  
				  folgnk_jv=rset__001.getString("folio_gnk");
				  date_jv=rset__001.getString("date");
				  folrem_jv=rset__001.getString("folio_rem");
				  provee_jv=rset__001.getString("provee");
				  recibe_jv=rset__001.getString("reci");
				  entrega_jv=rset__001.getString("entrega");
				  ubic_jv=rset__001.getString("ubicacion");				 
				  origen_jv=rset__001.getString("origen");
				  obser_jv=rset__001.getString("obser");
				  cadu_jv=rset__001.getString("descri");
				  cadu_jv=rset__001.getString("cincDocRem");				  				  			  				  		
				  }
	 }				  				  
 %>
</p>
<table width="100" border="6" align="center" cellpadding="2" bgcolor="#FFFFFF">
  <tr>
    <td><p>&nbsp;</p>
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr bgcolor="#3366CC">
          <td colspan="3" rowspan="2" bgcolor="#FFFFFF"><div align="center"><img src="gnk_toluca.jpg" width="81" height="60" vspace="0" /></div></td>
          <td height="63" colspan="3" align="center" valign="bottom" nowrap="nowrap" bgcolor="#FFFFFF" id="logo"><div align="right" class="style18">
            <div align="center">
              <table width="406" height="35" border="0" align="center" cellpadding="2">
                <tr>
                  <td height="33">Acuse de Recepci&oacute;n de Proveedores</td>
                </tr>
              </table>
              </div>
          </div></td>
          <td width="69" bgcolor="#FFFFFF"><img src="logo_conjun.jpg" width="183" height="44" vspace="0" /></td>
        </tr>
        <tr bgcolor="#3366CC">
          <td height="19" colspan="3" align="center" valign="top" bgcolor="#FFFFFF" id="tagline">&nbsp;</td>
          <td width="69" bgcolor="#FFFFFF">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
        <tr bgcolor="#CCFF99">
          <td height="25" colspan="7" bgcolor="#009999" id="dateformat">&nbsp;&nbsp;
              <script language="JavaScript" type="text/javascript">
      //document.write(TODAY);	</script>
              <a href="menu_mainARdgo.jsp">Regresar a Men&uacute; Principal </a></td>
        </tr>
        <tr>
          <td colspan="7" bgcolor="#003366"><img src="mm_spacer.gif" alt="" width="1" height="1" border="0" /></td>
        </tr>
      </table>
      <table width="934" border="0" bgcolor="#FFFFFF">
        <tr>
          <td colspan="3" id="noMostrar" name="noMostrar"><p><strong>Buscar por:</strong> </p>
              <p><span class="style12">POR D&Iacute;A:</span>
                <label>
                  <input type="text" name="txtf_pdia2" />
                  <img src="ico_calendario.gif" width="27" height="26" border="0" onclick="scwShow(scwID('txtf_pdia'),event);"/> </label>
                  <label>
                  <!--img src="calendar.jpg" width="27" height="26" border="0" onclick="scwShow(scwID('txtf_pdia'),event);"/-->
                  </label>
                  <label>
                  <input name="Submit2" type="submit" class="subHeader" value="Por D&iacute;a" />
                  </label>
              </p>
            <p><span class="style12">PERIODO:</span><span class="style7"></strong></span>
                  <select name="select" class="bodyText">
                    <option>-- Del DIA --</option>
                    <%
	   		     
	                for(int x=0;x<tam2;x++)
	                   {
	                      
	              %>
                    <option value="<%=arr[x]%>"><%=arr[x]%></option>
                    <%
	                   }
	              %>
                  </select>
                  <span class="smallText"> Al</span>
                  <select name="select" class="bodyText">
                    <option>-- DIA --</option>
                    <%
	   		     
	                for(int x=0;x<tam2;x++)
	                   {
	                      
	              %>
                    <option value="<%=arr[x]%>"><%=arr[x]%></option>
                    <%
	                   }
	              %>
                  </select>
                  <input name="Submit2" type="submit" class="subHeader" onkeypress="return handleEnter(this, event)" value="Por Fechas" />
            </p>
            <p><br/>
              FOLIO GNK:</span>
              <select name="select" class="navText" onchange="setClienteDes(this.form)" onkeypress="return handleEnter(this, event)">
                <%
		     
             for(int x=0;x<tamFG;x++)
                {
                   
           %>
                <option value="<%=folgnk1[x]%>"><%=folgnk1[x]%></option>
                <%
                }
           %>
              </select>
              <input name="Submit2" type="submit" class="subHeader" value="Folio GNK"/>
              <a href="#" onclick="$('noMostrar').style.display='none';" class="style23">Ocultar esta infromaci&oacute;n, PARA IMPRIMIR</a> <br/>
              <br/>
              <br/>
              <br/>
            </p></td>
          <td width="128"></div></td>
        </tr>
        <tr>
          <td width="192"><div align="left" class="style7 style13">FOLIO GNK:</div></td>
          <td width="497"><span class="style13">
            <label> <span class="style5"> <%=folgnk_jv%></span><span class="style7">FECHA :</span> <span class="style5"><%=date_jv%></span></label>
          </span></td>
          <td width="99"><label> &nbsp;
                <!--onSubmit="javascript:return ValidateFormCant(this)"-->
          </label></td>
        </tr>
        <tr>
          <td><div align="left" class="style14">FOLIO DE LA REMISION:</div></td>
          <td class="style15"><%=folrem_jv%> </td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">PROVEEDOR:</td>
          <td><span class="style13">
            <label class="style5"> <%=provee_jv%></label>
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">RECIBIDO POR: </td>
          <td><span class="style15"><%=recibe_jv%>
                <label></label>
            </span> <span class="style13">
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">ENTREGADO POR: </td>
          <td><span class="style15"><%=entrega_jv%>
                <label></label>
            </span> <span class="style13">
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">UBICACI&Oacute;N: </td>
          <td><span class="style15"><%=ubic_jv%>
                <label></label>
            </span> <span class="style13">
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">ORIGEN: </td>
          <td><span class="style15"><%=origen_jv%>
                <label></label>
            </span> <span class="style13">
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td class="style14">OBSERVACIONES: </td>
          <td><span class="style15"><%=obser_jv%>
                <label></label>
            </span> <span class="style13">
            <label></label>
          </span></td>
          <td>&nbsp;</td>
        </tr>
      </table>
      <table width="485" border="1" bgcolor="#FFFFFF">
        <tr>
          <td colspan="4"><div align="center" class="style14">DATOS DEL MEDICAMENTO REGISTRADOS POR GNKL </div></td>
        </tr>
        <tr>
          <td colspan="7"><div align="right"><span class="style16"><span class="style13"></span></span> </div></td>
        </tr>
        <tr>
          <td width="78"><div align="center" class="style13"><strong>CLAVE</strong></div></td>
          <td width="143"><div align="center" class="style13"><strong>LOTE</strong></div></td>
          <td width="109"><div align="center" class="style13"><strong>CADUCIDAD</strong></div></td>
          <td width="127" class="style13"><div align="center" class="style24"><strong>CAJAS</strong></div></td>
          <td width="127"><div align="center" class="style13"><strong>NO.PIEZAS</strong></div></td>
          <td width="127"><div align="center" class="style13"><strong>RESTO</strong></div></td>
          <td width="127"><div align="center" class="style13"><strong>EXISTENCIA</strong></div></td>
        </tr>
        <%
Connection conn__001 = DriverManager.getConnection("jdbc:mysql://localhost/dgo");
  Statement stmt__001 = conn__001.createStatement();
  //out.print("clave"+folgnk_jv);
  ResultSet rset__001=stmt__001.executeQuery("select distinct * from datos_prov_1_0807 where folio_gnk='"+folgnk_bus_jv+"' or folio_rem='"+folrem_bus_jv+"'");
  while(rset__001.next()) 
                  {	
	 			  //clave_jv=rset__001.getString("cve_med");
				  //lote2_jv=rset__001.getString("lote");
				  //cadu_jv=rset__001.getString("cadu");
				  //desc_jv=rset__001.getString("cant");
				  
	%>
        <tr>
          <td><div align="center" class="style15"><a href="http://201.122.132.241:8080/gnk/eti2_cb.jsp?id_cve=<%=rset__001.getString("cve_med")%>&amp;id_lote=<%=rset__001.getString("lote") %>&amp;id_cadu=<%=rset__001.getString("cadu") %>&amp;id_nocajas=<%=rset__001.getString("cant") %>&amp;id_descri=<%=rset__001.getString("descri") %>&amp;id_name=<%=folgnk_jv%>&amp;id_resto=<%=rset__001.getString("pais")%>&amp;id_alta=1"><%=rset__001.getString("cve_med") %></a></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("lote")%></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("cadu")%></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("cant") %></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("lab") %></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("pais") %></div></td>
          <td><div align="center" class="style15"><%=rset__001.getString("reg_san")%></div></td>
        </tr>
        <%
  }
  %>
      </table>
      <div class="style11">COINCIDE EL DOCUMENTO CON LA REMISION: <%=boolDocRem_jv%></div>
      <span class="style13"><br />
      <strong>&quot;<span class="style17">RECIBIDO POR CUENTA DE <%=origen_jv%> PARA CUSTOD&Iacute;A, CONTROL Y DISTRIBUCI&Oacute;N.<br/>
LA MERCANC&Iacute;A ENLISTADA ES PROPIEDAD DE <%=origen_jv%>&quot;</span></strong><br />
<br />
      </span>
      <table>
        <tr>
          <td colspan="2" class="style13">________________________________</td>
          <td colspan="2" class="style13">__________________________________</td>
        </tr>
        <tr>
          <td colspan="2" class="style13"><div align="center"><span class="style7">FIRMA DE RECIBIDO </span><br />
                  <span class="style7"><%=recibe_jv%></span></div></td>
          <td colspan="2" class="style13"><div align="center" class="style7">FIRMA DE QUIEN ENTREGA<br />
                  <%=entrega_jv%></div></td>
        </tr>
        <tr>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13"><p>&nbsp; </p>
              <p>
                <input type="button" name="Submit32" class="subHeader" value="Imprimir" onclick="window.print();"/>
                <input type="hidden" name="altaok2" value="1"/>
            </p></td>
        </tr>
        <tr>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
        </tr>
        <tr>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="4" class="style13"><div align="center"><a href="captura_prov-now09Jul09.jsp">REALIZAR OTRA CAPTURA ?</a></div></td>
        </tr>
        <tr>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
          <td class="style13">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="4" class="style13"><table width="891" height="65" border="0">
              <tr>
                <td width="290"><span class="style2">PROHIBIDA SU REPRODUCCI&Oacute;N PARCIAL O TOTAL, SI REQUIERE LA INFORMACI&Oacute;N RECURRA CON EL POSEEDOR DEL DOCUMENTO ORIGINAL </span></td>
                <td width="289"><p align="center" class="style2">VERSI&Oacute;N 0 </p>
                    <p align="center" class="style2">FECHA:30/04/2010 </p></td>
                <td width="290"><div align="right" class="style2"><strong>GNKL-T-7 F 02 </strong></div></td>
              </tr>
          </table></td>
        </tr>
      </table>
      <p>&nbsp;</p>
    <p>&nbsp;</p></td>
  </tr>
</table>
<p>&nbsp;</p>
<td colspan="2" valign="top" bgcolor="#FFFFFF">

</body>
</html>
