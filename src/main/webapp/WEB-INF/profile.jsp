<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="/css/profile-cards.css">
    <link rel="stylesheet" href="landing-page.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/profile.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <section>
<%--            <div class="card">--%>
                <div class="nr_cards profile-card">
                    <img src="/img/welcome-preview-01.png" style="height: 50%; width: 100%"/>
                    <div class="content">
                        <h1>Welcome, ${sessionScope.user.username}!</h1>
                        <br>
                        <p><b>Email:</b> ${sessionScope.user.email}</p>
                        <p><b>Cat Preference:</b> ${sessionScope.user.preferences}</p>
                        <br>
                        <a href="/update-profile" class="button button-primary .nr_secondary_buttons">Update Profile</a>
                    </div>
                </div>
<%--            </div>--%>
        </section>
    </div>

<%--        <section>--%>
<%--            <div class="card-container">--%>
<%--                <c:forEach var="ad" items="${ads}">--%>
<%--                    <div class="card text-center">--%>
<%--                        <img src="${ad.images}"/>--%>
<%--                        <div class="content">--%>
<%--                            <h3>${ad.title}</h3>--%>
<%--                            <p>${ad.description}</p>--%>
<%--                            <br>--%>
<%--                            <a href="#" class="btn btn-danger">Adopt me!</a>--%>
<%--                            <br>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </c:forEach>--%>
<%--            </div>--%>
<%--        </section>--%>
</body>
</html>
