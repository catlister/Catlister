<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="/landing-page.css">
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/skeleton.css">
    <link rel="stylesheet" href="/css/profile-cards.css">
    <link rel="stylesheet" href="/css/profile.css">
    <link rel="stylesheet" href="/css/cards.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/register.css">
    <link rel="stylesheet" href="/css/navbar.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/profile.css">
    <link rel="stylesheet" href="/css/all-cards.css">

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div class="row">
        <%--     Show Matches --%>
        <section class="matched_cats_section">
            <div class="eight columns">
                <div class="all_cat_view">
                    <c:forEach var="ad" items="${ads}">
                        <div class="matched_cats_container animated fadeIn">
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
            </div>
        </section>
        <!-- Show Profile Card -->
        <div class="four columns">
            <section class="user-profile-wrapper">
                <div class="">
                    <div class="profile-card">
                        <h6>Welcome, ${sessionScope.user.username}!</h6>
                        <div class="user_img_container">
                            <img class="user_profile_img" src="/img/welcome-preview-01.png">
                        </div>
                        <div class="content">
                            <span><b>Email:</b> ${sessionScope.user.email}</span>
                            <span><b>Cat Preference:</b> ${sessionScope.user.preferences}</span>
                            <form action="/profile" method="post">
                                <jsp:include page="/WEB-INF/partials/user-information.jsp"/>
                                <button type="submit" class="nr_secondary_buttons">Match Me!</button>
                            </form>
                            <button class="update-profile-btn">Profile Update</button>
                        </div>
                    </div>
                </div>
            </section>

            <section>
                <div class="card-container">
                    <div>
                        <div class="update-profile">
                            <jsp:include page="/WEB-INF/partials/update-form.jsp"/>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>
</div>

<footer>
</footer>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script>
    $(document).ready(function () {
        $(".update-profile-btn").click(function () {
            $(".update-profile").toggle();
        });
    });
</script>
</body>
</html>
