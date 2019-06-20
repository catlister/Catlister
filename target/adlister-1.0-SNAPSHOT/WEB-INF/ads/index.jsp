<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <link rel="stylesheet" href="/css/cards.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <h1>Amazing Cats!</h1>
    <section>
        <div class="card-container">
            <c:forEach var="ad" items="${ads}">
                <div class="card text-center">
                    <img src="${ad.images}"/>
                    <div class="content">
                        <h3>${ad.title}</h3>
                        <p>${ad.description}</p>
                        <br>
                        <a href="#" class="btn btn-danger">Adopt me!</a>
                        <br>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>
</div>
</body>
</html>
