<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Liste des utilisateurs</title>
</head>
<body>
<h2>Liste des utilisateurs</h2>
<c:if test="${not empty usersList}">
    <table>
        <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Âge</th>
        </tr>
        <c:forEach var="user" items="${usersList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<c:if test="${empty usersList}">
    <p>Aucun utilisateur trouvé.</p>
</c:if>

</body>
</html>
