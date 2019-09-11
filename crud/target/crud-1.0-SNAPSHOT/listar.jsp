<%-- 
    Document   : listar
    Created on : 11/09/2019, 09:03:00
    Author     : Florincy
--%>
<%@page import="java.util.List"%>
<%@page import="crud.utilidades.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="crud.entidades.*"/>
<jsp:directive.page import="java.util.*"/>
<%@taglib uri="http://displaytag.sf.net" prefix="display"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lista dos usuários</title>
    </head>
    <body>
        <h1>Lista</h1>
        <%
            Session session1 = HibernateUtil.getSession();
            Transaction tr = session1.beginTransaction();
            List<Usuario> lista = (List)session1.createQuery("from Usuario u").list();
            tr.commit();
            request.setAttribute("usuarios", lista);
        %>
        <display:table name="usuarios">
            <display:column property="cdUsuario" title="ID"/>
            <display:column property="nome" title="Nome"/>
        </display:table>
    </body>
</html>
