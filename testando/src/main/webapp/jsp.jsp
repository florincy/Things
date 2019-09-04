<%-- 
    Document   : jsp
    Created on : 04/09/2019, 09:40:25
    Author     : aluno
--%>

<%@page import="br.edu.iff.util.HibernateUtil"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:directive.page import="br.edu.iff.testando.entidades.*"/>
<jsp:directive.page import="java.util.*"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%String nome = request.getParameter("nome");
        nome = "Daniel";
    Session session1 = HibernateUtil.getSession();
    Usuario user = (Usuario) session1.createQuery("from Usuario where nome=?").setString(0, nome).uniqueResult();
    if (user == null) {
        System.out.println("Não achei o usuário"); %>
        <%="Usuário não encontrado"%>
        <%
    } else {
        user.getNome();
        %>
        <%=user.getNome()%>
        <%
    }
        %>
    </body>
</html>
