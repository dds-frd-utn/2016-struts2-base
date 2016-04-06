<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<s:form action="save">
		<s:textfield label="Nombre" name="name"></s:textfield>
		<s:textfield label="Edad" name="age"></s:textfield>
		<s:textfield label="Genero" name="gender" list="#{'Femenino':'Femenino','Masculino':'Masculino'}">
		</s:textfield>
		<s:submit></s:submit>
		<s:actionerror/>
	</s:form>
	<table>
		<tr>
			<th>ID</th>
			<th>NOMBRE</th>
			<th>EDAD</th>
			<th>GENERO</th>
		</tr>
		<s:iterator>
			<tr>
				<td><s:property value="#p.id"/></td>
				<td><s:property value="#p.name"/></td>
				<td><s:property value="#p.age"/></td>
				<td><s:property value="#p.gender"/></td>
			</tr>
		</s:iterator>
	</table>
</body>
</html>