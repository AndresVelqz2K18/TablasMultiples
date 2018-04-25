<%@include file="templates/header.jsp" %>
<%@include file="templates/menu.jsp" %>
 <div class="row">
     <form class="col s12" action="procesar.do" method="post">
      <div class="row">
        <div class="input-field col s6">
            <input id="first_name" type="text" class="validate" name="nombre">
          <label for="first_name">Nombre</label>
        </div>
        <div class="input-field col s6">
          <input id="last_name" type="text" class="validate" name="apellido">
          <label for="last_name">Apellido</label>
        </div>
      </div>
 </div>
 
     <button type="submit" name="boton" value="Personas" class="btn-floating btn-large"
             <i class="material-icons">OK</i>
         
 
</form>
 <p>
         ${requestScope.msg}
 </p>

     




<%@include file="templates/footer.jsp" %>
