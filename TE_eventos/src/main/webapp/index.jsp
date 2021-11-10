<%-- 
    Document   : index libro
    Created on : 26 oct. 2021, 20:48:00
    Author     : WINDOWS 10
--%>
<%@page import="com.emergentes.modelo.Seminarios"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%
List<Seminarios> lista=(List<Seminarios>) request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr> 
                <td>SEGUNDO PARCIAL TEM-742
                    <br>
                NOMBRE:MARELYN ROSE SOTO PALMA
                <br>
                CI: 9901243</td>
            </tr>
        </table>
        <h1>Registro  de Seminarios</h1>
        
        <p> <a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Titulo</th>
                <th>Expositor</th>
                <th>Fecha</th>
                <th>Hora</th>
                <th>Cupos</th>
                <th></th>
                <th></th>
            </tr>    
                <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                     <td>${item.titulo}</td>
                     <td>${item.expositor}</td>
                     <td>${item.fecha}</td>
                     <td>${item.hora}</td>
                     <td>${item.cupo}</td>
                     <td><a href="MainController?op=editar&id=${item.id}">Editar</a></td>
                     <td><a href="MainController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Esta Seguro de Eliminar???..'))" >Eliminar</a></td> 
                </tr>
                </c:forEach>
        </table>
    </body>
</html>
