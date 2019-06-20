<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="/css/profile-cards.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <jsp:include page="/WEB-INF/partials/profile-card.jsp" />
</body>
</html>
