<%-- Paso 1:Declarar el Servicio --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="modelo.ServicioLocal"%>
<% ServicioLocal servicio; %>

<%-- Paso 2: Crear el Contexto y el Servicio --%>
<% 
    InitialContext ctx=new InitialContext();
    servicio =(ServicioLocal)ctx.lookup("java:global/TablasMultiples/Servicio!modelo.ServicioLocal");
%>   

<%-- Paso 3: Hacer que el Servico sea Visible para El Y JSTL --%>
<c:set var="servicio" scope="page" value="<%=servicio%>"/>

<%@include file="templates/header.jsp" %>
<%@include file="templates/menu.jsp" %>
<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel">
            <p class="center-align"><span class="blue text-darken-2"> Ingresar Productos</span></p>
            <form action="control.do" method="post">
                <div class="input-field">
                    <input id="nombre" name="nombre" type="text" class="validate">
          <label for="nombre">Nombre:</label>
        </div>
                <div class="input-field">
                    <input id="precio" name="precio" type="number" class="validate">
          <label for="precio">Precio:</label>
        </div>
                <button type="submit" class="btn right">Guardar</button>
                    <br/><br/>
            </form>
        </div>
        <table class="bordered highlight">
            <tr>
                <th>Nombre</th>
                <th>Precio</th>
            </tr>
            <c:forEach items="${servicio.productos}" var="p">
                <tr>
                    <td>${p.nombre}</td>
                    <td>${p.precio}</td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>

<%@include file="templates/footer.jsp" %>