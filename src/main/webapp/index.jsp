<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="CATalist: The best cat + human dating website!"/>
    </jsp:include>
    <link rel="stylesheet" href="landing-page.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>

<!--Landing Splash Screen-->
<div class="row">
    <div class="nr_landing nr_section_shadow_bottom">
        <div class="container">
            <div class="four columns landing_message">
                <h4>Still fishing for the perfect one?</h4>
                <h6>CATalist is here to help</h6>
                <button class="nr_main_buttons"><a href="/register">Join today!</a></button>
            </div>

            <div class="eight columns landing_image">
                <img src="img/fishing.jpg" alt="cat fishing image">
            </div>
        </div>
    </div>
</div>

<section class="cat_science">
    <div class="container">
        <div class="row">
            <div class="six columns">
                <div class="cat_find nr_landing_page_my_way">
                    <img src="img/choose.jpg" alt="">
                </div>
            </div>
            <div class="six columns">
                <h4>We use science to find your perfect match!</h4>
                <p><b>CATalist</b> is the first service within the online pet adoption to use a scientific approach
                    to matching highly compatible cats and hoomans. Catalist's matching is based on using our proprietary AI
                    to match cats and humans based on features of compatibility found in thousands of successful adoptions</p>
            </div>
        </div>
    </div>
</section>

<section class="cat_how_it_works">
    <div class="container">
        <h4>How does it work?</h4>
        <div class="row">
            <div class="four columns">
                <h6>Step 1: We look for cats!
                </h6>
                <img src="img/cat_alone.jpg" alt="" class="cat_step_1">
            </div>
            <div class="four columns">
                <h6>Step 2: You look for cats!
                </h6>
                <img src="img/found.jpg" alt="" class="cat_step_2">
            </div>
            <div class="four columns">
                <h6>Step 3: You find each other!
                </h6>
                <img src="img/love.jpg" alt="" class="cat_step_3">
            </div>
        </div>
    </div>
</section>

<footer class="nr_section_shadow_top">

</footer>


</body>
</html>
