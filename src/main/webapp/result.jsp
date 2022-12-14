<%--
  Created by IntelliJ IDEA.
  User: oleg
  Date: 04.10.2022
  Time: 17:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="itmo.web2.weblab2.model.CollectionWithDataPoints"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/forResult.css">
</head>
<body>
<div class="link">
    <a href="${pageContext.request.contextPath}/"><h1>Ссылка на главную страницу</h1></a>
</div>
<section class="table-with-fields">
    <div class="wrapper">
        <table>
            <thead id="thead">
            <tr>
                <th colspan="4">XYR</th>
                <th>PHP-script</th>
            </tr>
            <tr>
                <th>X</th>
                <th>Y</th>
                <th>R</th>
                <th>entry</th>
                <th>ScriptTime</th>
            </tr>
            </thead>
            <tbody id="tbody">
            <% CollectionWithDataPoints data = (CollectionWithDataPoints) session.getAttribute("shots");
                for (CollectionWithDataPoints.DataWithPoints dataWithPoints:data.getCollectionWithDataPoints()) {%>
                    <tr>
        <td><%= dataWithPoints.getX()%></td>
            <td><%= dataWithPoints.getY()%></td>
            <td><%= dataWithPoints.getR()%></td>
            <td><%= dataWithPoints.getEntry()%></td>
            <td><%= dataWithPoints.getTimeOfScript()%></td>
            </tr>
                }
            <%}%>
            </tbody>
        </table>
    </div>
    <div id="messageFromServer"></div>
</section>
</body>
</html>
