<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sistemaadmin.entidades.Usuario" %>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/Views/Shared/title.jsp" />
        <title>Nuevos Usuario</title>
        <link href="wwwroot/css/estilo2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <jsp:include page="/Views/Shared/headerBody.jsp" />
        <main class="container" style="margin-top: 40px">
            <h3 style="color: white; font-weight: bold">Agregar Nuevo Usuario</h3>
            <form action="Usuario" method="post" onsubmit="return validarFormulario()">
                <input type="hidden" name="accion" 
                       value="<%=request.getAttribute("accion")%>" id="txtHidden">
                <div class="row" style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtNombre" name ="nombre" required 
                               class="validate" maxlength="30">
                        <label for="txtNombre">Nombre</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtApellido" name ="apellido" required 
                               class="validate" maxlength="30">
                        <label for="txtApellido">Apellido</label>
                    </div>
                </div>
                <div class="row" style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="text" id="txtLogin" name ="login" required 
                               class="validate" maxlength="25">
                        <label for="txtLogin">UserName</label>
                    </div>
                    <div class="input-field col 14 s12">
                        <input type="password" id="txtPassword" name ="password" required 
                               class="validate" minlength="5" maxlength="32">
                        <label for="txtPassword">Contraseña</label>
                    </div>
                </div>
                <div class="row" style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <input type="password" id="txtConfirmPassword_aux" 
                               name ="confirmPassword_aux" 
                               required class="validate" minlength="5" maxlength="32">
                        <label for="txtConfirmPassword_aux">Confirmar contraceña</label>
                        <span id="txtConfirmPassword_aux_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                    </div>
                </div>
                <div class="row"style="margin: 50px">
                    <div class="input-field col 14 s12">
                        <select id="slEstatus" name="estatus" class="validate">
                            <option value="0" selected>--SELECCIONAR--</option>
                            <option value="1">ACTIVO</option>
                            <option value="2">INACTIVO</option>
                        </select>
                        <label for="slEstatus" >Estatus</label>
                        <span id="slEstatus_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                    </div>
                    <div class="input-field col 14 s12">
                       <jsp:include page="/Views/Rol/select.jsp" >
                           <jsp:param name="id" value="0"/>
                       </jsp:include>
                        <span id="slRol_error" 
                              style="color:red;font-weight: bold" class="helper-text">
                        </span>
                   </div>
                </div>
                <div class="row" style="margin: 50px">
                    <div class="col 112 s12" >
                        <button type="submit" class="btn btn-info">
                            <i class="material-icons right">save</i>Guardar
                        </button>
                        <a href="Usuario" class="btn btn-danger" style="margin-left: 30px">
                            <i class="material-icons right">highlight_off</i>Cancelar
                        </a>
                    </div>
                </div>
            </form>
        </main>
        <jsp:include page="/Views/Shared/footerBody.jsp" />
        <script>
            function validarFormulario()
            {
                var result = true;
                var txtPassword = $("#txtPassword").val();
                var txtConfirmPassword = $("#txtConfirmPassword_aux").val();
                var txtEstatus = $("#slEstatus").val();
                var txtRol = $("#slRol").val();
                
                if(txtPassword != txtConfirmPassword)
                {
                    $("#txtConfirmPassword_aux_error").empty();
                    $("#txtConfirmPassword_aux_error")
                    .append("El Password y Confirmar password deben ser iguales");
                    result = false;
                }
                else
                {
                    $("#txtConfirmPassword_aux_error").empty();
                }
                
                if(parseInt(txtEstatus) == 0)
                {
                    $("#slEstatus_error").empty();
                    $("#slEstatus_error")
                    .append("El estatus el Obligatorio");
                    result = false;
                }
                else
                {
                    $("#slEstatus_error").empty();
                }
                
                if(parseInt(txtRol) == 0)
                {
                    $("#slRol_error").empty();
                    $("#slRol_error")
                    .append("El Rol el Obligatorio");
                    result = false;
                }
                else
                {
                    $("#slRol_error").empty();
                }
                return result;
            }
        </script>
    </body>
</html>
