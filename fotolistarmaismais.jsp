<%-- 
    Document   : fotolistar
    Created on : 06/10/2019, 23:07:39
    Author     : Daniel
--%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.ByteArrayInputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="entidades.Usuario"%>
<%@page import="java.util.List"%>
<%@page import="controles.FotoControle"%>
<%@page import="entidades.Foto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud</title>
        <link rel="stylesheet" href="css/ibagens.css" type="text/css" >
    </head>
    <body>
        <h1>Ibagens++</h1>
        <ul>
        <li>
        <div id="divao">
            <%
                Usuario usuario = new Usuario(201);
                List<Foto> lista = FotoControle.listar(usuario);

                for(Foto foto: lista){                
                    byte[] imagem = foto.getFoto();
                    String encodedImage = Base64.getEncoder().encodeToString(imagem);
                    String idFoto = foto.getId().toString();
            %>
            <div class="ibagem">
                <img src="data:image/png;base64,<%=encodedImage%>">
                <form method="GET" action="FotoServletD">
                    <div hidden>
                        ID<input type="text" name="pid" value="<%=idFoto%>">
                    </div>
                    <button type="submit" class="delete"><img src="imagens/delete.png" style="width:90px;"></button>
                </form>
            </div>
            <%
                }
            %>
        </div>
        </li>
        <li>
        <div id="btninserir">
            <a href="fotoinserir.jsp" ><input type="button" value="Enviar foto"></a>
        </div>
        </li>
        </ul>
    </body>
</html>
