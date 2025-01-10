<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.webjsp.models.User" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des utilisateurs</title>
</head>
<body>
<h2>Liste des utilisateurs</h2>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nom</th>
        <th>Âge</th>
    </tr>
    <%
        List<User> users = (List<User>) request.getAttribute("usersList");
        if (users != null) {
            for (User user : users) {
    %>
    <tr>
        <td><%= user.getId() %></td>
        <td><%= user.getName() %></td>
        <td><%= user.getAge() %></td>
    </tr>
    <%
            }
        }
    %>
</table>
</body>
</html>
