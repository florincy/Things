<%-- 
    Document   : index
    Created on : 21/10/2019, 18:09:35
    Author     : aluno
--%>
<jsp:directive.page import="java.util.*" />
<%@page import="java.util.List"%>
<%@page import="util.HibernateUtil"%>
<%@page import="javax.persistence.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Avaliacao</title>
        <meta charset="utf-8">
    </head>
    <body>
        <%
            Session session2 = HibernateUtil.getSession();
            String hql = "select count(*) from Flamengo";
           // Query query = session2.createQuery(hql);
           // List listResult = query.list();
            //Number rows = (Number) listResult.get(0);
        %>
        <form action="ServletFlamengo" method="post">
            <h2>Flamengo</h2>
            <label for="ataque">Ataque</label>
            <input type="range" name="ataque" class="ataque" min="1" max="100" value="1">
            <label for="defesa">Defesa</label>
            <input type="range" name="defesa" class="defesa" min="1" max="100" value="1">
            <label for="lateral">Lateral</label>
            <input type="range" name="lateral" class="lateral" min="1" max="100" value="1">
            <input type="submit" value="Enviar">
        </form>
        <form action="ServletFluminense" method="post">
            <h2>Fluminense</h2>
            <label for="ataque">Ataque</label>
            <input type="range" name="ataque" class="ataque" min="1" max="100" value="1">
            <label for="defesa">Defesa</label>
            <input type="range" name="defesa" class="defesa" min="1" max="100" value="1">
            <label for="lateral">Lateral</label>
            <input type="range" name="lateral" class="lateral" min="1" max="100" value="1">
            <input type="submit" value="Enviar">
        </form>
        <form action="ServletCeara" method="post">
            <h2>Ceará</h2>
            <label for="ataque">Ataque</label>
            <input type="range" name="ataque" class="ataque" min="1" max="100" value="1">
            <label for="defesa">Defesa</label>
            <input type="range" name="defesa" class="defesa" min="1" max="100" value="1">
            <label for="lateral">Lateral</label>
            <input type="range" name="lateral" class="lateral" min="1" max="100" value="1">
            <input type="submit" value="Enviar">
        </form>
    </body>
</html>