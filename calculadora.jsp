<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
%>
<%
    float resultado = 0;
    float numero1 = 0;
    float numero2 = 0;
    
    if(request.getParameter("operacao") != null){
    	if(request.getParameter("operacao").equals("Somar")){
        	numero1 = Float.parseFloat(request.getParameter("numero1"));
    		numero2 = Float.parseFloat(request.getParameter("numero2"));
        	resultado = numero1 + numero2;
        }else{
        	numero1 = Float.parseFloat(request.getParameter("numero1"));
    		numero2 = Float.parseFloat(request.getParameter("numero2"));
        	resultado = (numero1 + numero2) / 2;
        }
    }
%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Calculadora</title>
	</head>
	<body>
		<h1>Calculadora</h1>
		<form action="NewFile.jsp" method="GET">
			Primeiro Número: <br />
			<input type="number" required name="numero1" value="<%= numero1 %>" /><br />
			Segundo Número: <br />
			<input type="number" required name="numero2" value="<%= numero2 %>" /><br /><br />
			
		
			
			<input type="radio" id="somar" name="operacao" value="Somar" checked>
			<label for="somar">Soma</label>
			<br />
			
			<input type="radio" id="media" name="operacao" value="Media">
		  	<label for="media">Média</label>
		  	
			<br />
			<br />
			
			
			<input type="submit" value="Calcular" />
			<br />
			<br />
			
			Resultado: <%=resultado%>
		</form>
	</body>
</html>