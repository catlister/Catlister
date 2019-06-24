<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/css/profile-cards.css">
    <link rel="stylesheet" href="landing-page.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/profile.css">

    <script>
        $(document).ready(function(){
            $(".update-profile-btn").click(function(){
                $(".update-profile").toggle();
            });
        });
    </script>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<div class="container">
    <div class="row">

        <%--     Show Matches --%>

        <div class="eight columns">
            <section>
                <div class="card-container">
                    <h3 class="matched-cats">Your matched Cats!</h3>
                    <c:forEach var="ad" items="${ads}">
                        <div class="card text-center">
                            <img src="${ad.images}"/>
                            <div class="content">
                                <h3>${ad.title}</h3>
                                <p>${ad.description}</p>
                                <br>
                                <a href="#" class="button button-primary adopt-button">Adopt me!</a>
                                <br>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </div>

        <!-- Show Profile Card -->

        <div class="four columns">
            <section>
                <div class="card-container">
                    <div class="profile-card">
                        <img src="/img/welcome-preview-01.png" class="profile-card-image"/>
                        <div class="content nr_cards">
                            <h5>Welcome, ${sessionScope.user.username}!</h5>
                            <p><b>Email:</b> ${sessionScope.user.email}</p>
                            <p><b>Cat Preference:</b> ${sessionScope.user.preferences}</p>
                            <form action="/profile" method="post">
                                <jsp:include page="/WEB-INF/partials/user-information.jsp"/>
                                <button type="submit" class="nr_secondary_buttons">Get my matches</button>
                            </form>
                        </div>
                    </div>
                </div>
            </section>

            <section>
             <div class="card-container">
<%--                 <div class="card">--%>
                     <div class="content nr_cards">
            <button class="update-profile-btn">Update Profile</button>
            <div class="update-profile">
                <jsp:include page="/WEB-INF/partials/update-form.jsp"/>
            </div>
                 </div>
             </div>
<%--             </div>--%>
            </section>

        </div>
    </div>
</div>
</div>

<footer>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
</footer>
</body>
</html>
