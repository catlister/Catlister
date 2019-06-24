<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="All The Cats"/>
    </jsp:include>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/skeleton.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/all-cards.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container all_cat_view">
    <h3>Find your match today!</h3>
    <c:forEach var="ad" items="${ads}">
        <div class="cat_card_container animated fadeInLeft">
            <div class="cat_card_img_container">
                <img src="${ad.images}" alt="Cat Image">
            </div>
            <div class="cat_card_information">
                <h5 class="cat_name">${ad.title}</h5>
                <p class="cat_description">${ad.description}</p>
                <form action="/profile">
                <button class="nr_main_buttons" type="submit">Adopt</button>
                </form>
            </div>
        </div>
    </c:forEach>
</div>
</body>
</html>
