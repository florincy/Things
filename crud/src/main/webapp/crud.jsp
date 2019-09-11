<%-- 
    Document   : index
    Created on : 11/09/2019, 00:01:49
    Author     : florincy
--%>



<%@page import="org.hibernate.Transaction"%>
<%@page import="crud.utilidades.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="crud.entidades.*"/>
<jsp:directive.page import="java.util.*"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h1>Salva</h1>
        <form method="POST"action="Salva">
            <label for="codigo">ID:</label>  
            <input type="text" id="codigo" id="codigo" name="codigo">
            <label for="nome">Nome:</label>  
            <input type="text" id="nome" id="nome" name="nome">
            <input type="submit" id="botao1">
        </form>
        <h1>Busca e Atualiza</h1>
        <%
        String idUsuario = "111";
        String hql = "from Usuario u where u.id='"+idUsuario+"'";
        Session session1 = HibernateUtil.getSession();
        Transaction tr = session1.beginTransaction();
        Usuario user = (Usuario) session1.createQuery(hql).uniqueResult();
        tr.commit();
        Integer id = user.getCdUsuario();
        String nome = user.getNome();
        %>
        <form method="POST" action="Atualiza">
            <input type="text" name="codigo" value="<%=id%>">
            <input type="text" name="nome" value="<%=nome%>">
            <input type="submit" id="botao2">
        </form>
    </body>
</html>
