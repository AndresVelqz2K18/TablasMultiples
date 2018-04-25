<%@include file="templates/header.jsp" %>
<%@include file="templates/menu.jsp" %>
<div class="row">
    <div class="col s6 offset-s3">
        <div class="card-panel">
            <p class="center-align"><span class="red text-darken-2"> Ingresar Nueva Mascota</span></p>
            <form action="control.do" method="post">
<div class="input-field">
                    <input id="nombre" name="nombre" type="text" class="validate">
          <label for="nombre">Nombre:</label>
        </div>
        <div class="input-field">
                    <input id="especie" name="especie" type="text" class="validate">
          <label for="especie">Especie:</label>
        </div>
<div class="input-field">
                    <input id="raza" name="raza" type="text" class="validate">
          <label for="raza">Raza:</label>
        </div>
            <div class="input-field">
                    <input id="edad" name="edad" type="number" class="validate">
          <label for="edad">Edad:</label>
        </div>
            <div class="input-field">
                    <input id="sexo" name="sexo" type="text" class="validate">
          <label for="sexo">Sexo:</label>
        </div>
            <div class="input-field">
                    <input id="fdn" name="fdn" type="text" class="validate">
          <label for="fdn">Fecha de Nacimiento:</label>
        </div>
        <button type="submit" class="btn right">Agregar Nueva Mascota</button>
                    <br/><br/>
            </form>
            

<%@include file="templates/footer.jsp" %>