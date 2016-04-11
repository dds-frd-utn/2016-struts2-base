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
		<s:textfield label="Nombre" name="name" requiredLabel="true"></s:textfield>
		<s:textfield label="Edad" name="age"></s:textfield>
		<s:radio label="Genero" name="gender" requiredLabel="true"
		list="#{'Femenino':'Femenino','Masculino':'Masculino'}" />
		<s:submit></s:submit>
		<s:actionerror/>
	</s:form>
	<table>
		<tr>
			<th>ID</th>
			<th>NOMBRE</th>
			<th>EDAD</th>
			<th>GENERO</th>
			<th>EDITAR</th>
		</tr>
	<s:iterator value="personas" var="p">
		<s:if test="editbool">
			<tr>
				<td><s:property value="#p.id"/></td>
				<td><s:property value="#p.name"/></td>
				<td><s:property value="#p.age"/></td>
				<td><s:property value="#p.gender"/></td>
				<td><a href="<s:url action='modoedit'>
								<s:param name="editid" value="#p.id" />
							</s:url>">EDITAR</a></td>
				<td><a href="<s:url action='delete'/>">X</a></td>
			</tr>
		</s:if>
		<s:else>
			<s:if test="#p.id == editid">
				<tr>
					<td><s:property value="#p.id"/></td>
					<td><s:textfield theme="simple" name="name" /></td>
					<td><s:textfield theme="simple" name="age" /></td>
					<td><s:radio theme="simple" name="gender" list="#{'Femenino':'Femenino','Masculino':'Masculino'}" /></td>
					<td><a href="<s:url action='lalala'>
									<s:param name="editid" value="#p.id" />
								</s:url>">Guardar</a></td>
				</tr>
			</s:if>
			<s:else>
				<tr>
					<td><s:property value="#p.id"/></td>
					<td><s:property value="#p.name"/></td>
					<td><s:property value="#p.age"/></td>
					<td><s:property value="#p.gender"/></td>
				</tr>
			</s:else>
		</s:else>
	</s:iterator>
	</table>
</body>
</html>