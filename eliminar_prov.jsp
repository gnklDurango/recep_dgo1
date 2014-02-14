<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
/*----------------------------------------------------------------------------------------------------------------------
Nombre del Archivo:eliminar_prov.jsp
Fecha:2010
Autor: RHW
  ----------------------------------------------------------------------------------------------------------------------*/
String usu_jv="dd";
try {
       		usu_jv=request.getParameter("usu");       			   
	  } catch (Exception e) { }
String ocom_jv="dd";
try {
       		ocom_jv=request.getParameter("ocom");       			   
	  } catch (Exception e) { }

String id_prov_jv="0";
 	  try {
       		id_prov_jv = request.getParameter("id_prov");       			   
	  } catch (Exception e) { }
	  String id_prov2_jv="0";
 	  try {
       		id_prov2_jv = request.getParameter("id_datos");       			   
	  } catch (Exception e) { }
String fol2_jv="";
 	  try {
       		fol2_jv = request.getParameter("fol_vi");       			   
	  } catch (Exception e) { }
	  
	  String provee_jv="";
 	  try {
       		provee_jv = request.getParameter("prove_vi");       			   
	  } catch (Exception e) { }

String folgnk_vi_jv="";
 	  try {
       		folgnk_vi_jv = request.getParameter("fol_gnk_vi");       			   
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

%>
<%!
public int ban=0;
public void eliminarReg(String id_rem,int ban) {
  
  System.out.print("valor"+id_rem);
  //int aux=0;
 //aux=Integer.parseInt(request.getParameter("id_dat_aux"));
 if(ban==1){ 
 System.out.print("dato eliminado"+id_rem);
 String idDS="0";
 idDS=id_rem;
 
 //veces=1;
 
	
	ResultSet rset_elimDS =null;
    Statement stmt_elimDS = null ;
	try {
			
     		Connection conn = 
     		DriverManager.getConnection("jdbc:mysql://localhost/dgo");
			         
     		stmt_elimDS = conn.createStatement();
			System.out.print("id2"+idDS);   		  
     		rset_elimDS = stmt_elimDS.executeQuery(" DELETE FROM datos_prov_1_0807 WHERE id_rem_prov='"+id_rem+"'"); 
			//rset_elimDS = stmt_elimDS.executeQuery(" DELETE FROM datos_inv_cod WHERE id_cap_inv='"+id_rem+"'"); 				  		
			System.out.print("Entra");
			
		while(rset_elimDS.next()){			
			rset_elimDS.deleteRow();
		}
		//conn.close();

	}catch(Exception e){}				  
  
  }
}%>
<%!
public int ban2=0;
public void eliminarReg2(String id_rem2,int ban2) {
  
  System.out.print("valor"+id_rem2);
  //int aux=0;
 //aux=Integer.parseInt(request.getParameter("id_dat_aux"));
 if(ban2==1){ 
 System.out.print("dato eliminado"+id_rem2);
 String idDS2="0";
 idDS2=id_rem2;
 
 //veces=1;
 
	
	ResultSet rset_elimDS2 =null;
    Statement stmt_elimDS2 = null ;
	try {
			
     		Connection conn = 
     		DriverManager.getConnection("jdbc:mysql://localhost/dgo");
			         
     		stmt_elimDS2 = conn.createStatement();
			System.out.print("id2"+idDS2);   		  
     		rset_elimDS2 = stmt_elimDS2.executeQuery(" DELETE FROM datos_inv_cod WHERE id_cap_inv='"+id_rem2+"'"); 				  		
			System.out.print("Entra");
			
		while(rset_elimDS2.next()){			
			rset_elimDS2.deleteRow();
		}
		//conn.close();

	}catch(Exception e){}				  
  
  }
}%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>
<form action="captura_prov-now09Jul09_i.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>&flag_id=1&usu=<%=usu_jv%>&ocom=<%=ocom_jv%>" method="post" name="form" onSubmit="javascript:return ValidateFar1(this)">
<%eliminarReg(id_prov_jv,1);%>
<%eliminarReg2(id_prov2_jv,1);%>
<%
if((!(id_prov_jv.equals("0"))) && (!(id_prov2_jv.equals("0")))){%>
<script>
alert("El dato ha sido Eliminado");
//192.168.1.180
self.location='captura_prov-now09Jul09_i.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>&flag_id=1&usu=<%=usu_jv%>'
</script>
<%}else{%><script>
self.location='captura_prov-now09Jul09_i.jsp?fol_gnk_vi=<%=folgnk_vi_jv%>&fol_vi=<%=fol2_jv%>&prove_vi=<%=provee_jv%>&recib_vi=<%=recibe_jv%>&entreg_vi=<%=entrega_jv%>&captu_vi=<%=capturar_jv%>&ubic_vi=<%=ubic_jv%>&orig_vi=<%=origen_jv%>&obser_vi=<%=obser_jv%>&boolDocRem_vi=<%=boolDocRem_jv%>&flag_id=1&usu=<%=usu_jv%>'
</script>
<%}%>

</form>
</body>

</html>
