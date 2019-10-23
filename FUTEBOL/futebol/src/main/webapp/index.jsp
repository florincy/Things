<%-- 
    Document   : index
    Created on : 21/10/2019, 18:09:35
    Author     : aluno
--%>
<%@page import="classes.*"%>
<jsp:directive.page import="java.util.*" />
<%@page import="java.util.List"%>
<%@page import="util.HibernateUtil"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Avaliacao</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            #block{
                display: table-cell;
                position: relative;
                left: 15%;

            }

            .blockescudo{
                float:left;
                margin: 10px;

            }
            
            h1{
                font-size: 50px;
            }
        </style>
    </head>
    <body>
        
        <div id="block" align="center">
            <h1>Avalie as equipes:</h1><br>
            <div class="blockescudo">
                <button onclick="document.getElementById('flamengo').style.display = 'block'" class="w3-button w3-large" id="botao1">
                    <img style="width:100px; height: 120px;" src="https://upload.wikimedia.org/wikipedia/commons/9/93/Flamengo-RJ_%28BRA%29.png">
                </button>
                <div id="flamengo" class="w3-modal">
                    <div style="border-width: 4px; border-style: inset; border-color: black; border-radius: 10px; padding:15px;" class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                        <div class="w3-center">
                            <br>
                            <span onclick="document.getElementById('flamengo').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">
                                X
                            </span>
                        </div>
                        <%
                            Session session2 = HibernateUtil.getSession();
                            String hql = "select count(*) from Flamengo";
                            Query query = session2.createQuery(hql);
                            List listResult = query.list();

                            String busca = "from Flamengo";
                            List<Flamengo> lista = (List) session2.createQuery(busca).list();
                            System.out.println(listResult);
                            Integer somaAtaqueFla = 0;
                            Integer somaDefesaFla = 0;
                            Integer somaLateralFla = 0;
                            Number rows = (Number) listResult.get(0);
                            String a = rows.toString();
                            Float divisor = Float.parseFloat(a);
                            /// Integer divisor = Integer.parseInt(a);
                            for (Iterator it = lista.iterator(); it.hasNext();) {
                                Flamengo fla = (Flamengo) it.next();
                                somaAtaqueFla += fla.getAtaque();
                                somaDefesaFla += fla.getDefesa();
                                somaLateralFla += fla.getLateral();

                            }
                            Float mediaAtaqueFla = somaAtaqueFla / divisor;
                            Float mediaDefesaFla = somaDefesaFla / divisor;
                            Float mediaLateralFla = somaLateralFla / divisor;

                        %>
                        <form action="ServletFlamengo" method="post">
                            <h2>Avaliação Flamengo</h2>
                            <label for="ataque">Ataque</label>
                            <input type="range" name="ataque" class="ataque" min="1" max="10" value="1" oninput="document.getElementById('valorataquefla').innerHTML = this.value"/>
                            <label id="valorataquefla"></label> <br>
                            <label for="defesa">Defesa</label>
                            <input type="range" name="defesa" class="defesa" min="1" max="10" value="1" oninput="document.getElementById('valordefesafla').innerHTML = this.value"/>
                            <label id="valordefesafla"></label> <br>
                            <label for="lateral">Lateral</label>
                            <input type="range" name="lateral" class="lateral" min="1" max="10" value="1" oninput="document.getElementById('valorlateralfla').innerHTML = this.value"/>
                            <label id="valorlateralfla"></label> <br> <br>
                            <input type="submit" value="Enviar">
                        </form>

                    </div>
                </div>
                <h2>Médias de <%=a%> avaliações</h2>
                Ataque: <%=mediaAtaqueFla%>
                <br>
                Defesa: <%=mediaDefesaFla%>
                <br>
                Lateral: <%=mediaLateralFla%>
                <br>
            </div>

            <div class="blockescudo">
                <button onclick="document.getElementById('fluminense').style.display = 'block'" class="w3-button w3-large" id="botao1">
                    <img style="width:100px; height: 120px;" src="https://upload.wikimedia.org/wikipedia/commons/a/ad/Fluminense_FC_escudo.png">
                </button>
                <div id="fluminense" class="w3-modal">
                    <div style="border-width: 4px; border-style: inset; border-color: black; border-radius: 10px; padding:15px;" class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                        <div class="w3-center">
                            <br>
                            <span onclick="document.getElementById('fluminense').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">
                                X
                            </span>
                        </div>

                        <%
                            Session session3 = HibernateUtil.getSession();
                            String hql2 = "select count(*) from Fluminense";
                            Query query2 = session3.createQuery(hql2);
                            List listResult2 = query2.list();
                            String busca2 = "from Fluminense";
                            List<Fluminense> lista2 = (List) session3.createQuery(busca2).list();
                            System.out.println(listResult2);
                            Integer somaAtaqueFlu = 0;
                            Integer somaDefesaFlu = 0;
                            Integer somaLateralFlu = 0;
                            Number rows2 = (Number) listResult2.get(0);
                            String a2 = rows2.toString();
                            Float divisor2 = Float.parseFloat(a2);
                            /// Integer divisor = Integer.parseInt(a);
                            for (Iterator it = lista2.iterator(); it.hasNext();) {
                                Fluminense flu = (Fluminense) it.next();
                                somaAtaqueFlu += flu.getAtaque();
                                somaDefesaFlu += flu.getDefesa();
                                somaLateralFlu += flu.getLateral();
                            }
                            Float mediaAtaqueFlu = somaAtaqueFlu / divisor2;
                            Float mediaDefesaFlu = somaDefesaFlu / divisor2;
                            Float mediaLateralFlu = somaLateralFlu / divisor2;
                        %>


                        <form action="ServletFluminense" method="post">
                            <h2>Fluminense</h2>
                            <label for="ataque">Ataque</label>
                            <input type="range" name="ataque" class="ataque" min="1" max="10" value="1" oninput="document.getElementById('valorataqueflu').innerHTML = this.value"/>
                            <label id="valorataqueflu"></label> <br>
                            <label for="defesa">Defesa</label>
                            <input type="range" name="defesa" class="defesa" min="1" max="10" value="1" oninput="document.getElementById('valordefesaflu').innerHTML = this.value"/>
                            <label id="valordefesaflu"></label> <br>
                            <label for="lateral">Lateral</label>
                            <input type="range" name="lateral" class="lateral" min="1" max="10" value="1" oninput="document.getElementById('valorlateralflu').innerHTML = this.value"/>
                            <label id="valorlateralflu"></label> <br> <br>
                            <input type="submit" value="Enviar">
                        </form>
                    </div>
                </div>
                <h2>Médias de <%=a2%> avaliações</h2>
                Ataque: <%=mediaAtaqueFlu%>
                <br>
                Defesa: <%=mediaDefesaFlu%>
                <br>
                Lateral: <%=mediaLateralFlu%>
                <br>
            </div>

            <div class="blockescudo">
                <button onclick="document.getElementById('ceara').style.display = 'block'" class="w3-button w3-large" id="botao1">
                    <img style="width:100px; height: 120px;" src="https://upload.wikimedia.org/wikipedia/commons/0/01/Cear%C3%A1_Sporting_Club_logo.png">
                </button>
                <div id="ceara" class="w3-modal">
                    <div style="border-width: 4px; border-style: inset; border-color: black; border-radius: 10px; padding:15px;" class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                        <div class="w3-center">
                            <br>
                            <span onclick="document.getElementById('ceara').style.display = 'none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">
                                X
                            </span>
                        </div>
                        <%
                            Session session4 = HibernateUtil.getSession();
                            String hql3 = "select count(*) from Ceara";
                            Query query3 = session4.createQuery(hql3);
                            List listResult3 = query3.list();
                            String busca3 = "from Ceara";
                            List<Ceara> lista3 = (List) session4.createQuery(busca3).list();
                            System.out.println(listResult3);
                            Integer somaAtaqueCe = 0;
                            Integer somaDefesaCe = 0;
                            Integer somaLateralCe = 0;
                            Number rows3 = (Number) listResult3.get(0);
                            String a3 = rows3.toString();
                            Float divisor3 = Float.parseFloat(a3);
                            /// Integer divisor = Integer.parseInt(a);
                            for (Iterator it = lista3.iterator(); it.hasNext();) {
                                Ceara ce = (Ceara) it.next();
                                somaAtaqueCe += ce.getAtaque();
                                somaDefesaCe += ce.getDefesa();
                                somaLateralCe += ce.getLateral();

                            }
                            Float mediaAtaqueCe = somaAtaqueCe / divisor3;
                            Float mediaDefesaCe = somaDefesaCe / divisor3;
                            Float mediaLateralCe = somaLateralCe / divisor3;
                        %>
                        <form action="ServletCeara" method="post">
                            <h2>Ceará</h2>
                            <label for="ataque">Ataque</label>
                            <input type="range" name="ataque" class="ataque" min="1" max="10" value="1" oninput="document.getElementById('valorataqueceara').innerHTML = this.value"/>
                            <label id="valorataqueceara"></label> <br>
                            <label for="defesa">Defesa</label>
                            <input type="range" name="defesa" class="defesa" min="1" max="10" value="1" oninput="document.getElementById('valordefesaceara').innerHTML = this.value"/>
                            <label id="valordefesaceara"></label> <br>
                            <label for="lateral">Lateral</label>
                            <input type="range" name="lateral" class="lateral" min="1" max="10" value="1" oninput="document.getElementById('valorlateralceara').innerHTML = this.value"/>
                            <label id="valorlateralceara"></label> <br> <br>
                            <input type="submit" value="Enviar">
                        </form>
                    </div>
                </div>
                <h2>Médias de <%=a3%> avaliações </h2>
                Ataque: <%=mediaAtaqueCe%>
                <br>
                Defesa: <%=mediaDefesaCe%>
                <br>
                Lateral: <%=mediaLateralCe%>
                <br>
            </div>
        </div>
    </body>
</html>