<%-- 
    Document   : editar libro
    Created on : 26 oct. 2021, 21:07:57
    Author     : WINDOWS 10
--%>
<%@page import="com.emergentes.modelo.Seminarios"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
Seminarios sem=(Seminarios) request.getAttribute("sem");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><c:if test ="${sem.id == 0}">
                Nuevo Seminario
        </c:if>
                <c:if test ="${sem.id != 0}">
                Editar Seminario
        </c:if>
            </h1>
        <form action="MainController" method="post">
             <input type="hidden" name="id" value="${sem.id}">
            <table>
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${sem.titulo}"></td>
                </tr>
               <tr>
                    <td>Expositor</td>
                    <td><input type="text" name="expositor" value="${sem.expositor}"></td>
                </tr>
                <tr>
                    <td>Fecha</td>
                    <td><input type="text" name="fecha" value="${sem.fecha}"></td>
                </tr>
                <tr>
                    <td>Horas</td>
                    <td><input type="text" name="hora" value="${sem.hora}"></td>
                </tr>
                <tr>
                    <td>Cupos</td>
                    <td><input type="text" name="cupo" value="${sem.cupo}"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value="ENVIAR"></td>
                </tr>
                
            </table>
        </form>
    </body>
</html>
