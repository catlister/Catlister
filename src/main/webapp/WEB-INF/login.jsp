<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <link rel="stylesheet" href="landing-page.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/skeleton.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/styles.css">
    <link rel="stylesheet" href="css/login.css">
</head>
<body>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="row">
    <div class="nr_landing nr_section_shadow_bottom">
        <div class="container cat_login-cat">
            <div class="four columns cat_login">
                <div class="container">
                    <h1>Log In</h1>
                    <form action="/login" method="POST">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input id="username" name="username" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input id="password" name="password" class="form-control" type="password">
                        </div>
                        <input type="submit" class="nr_main_buttons" value="Log In">
                    </form>
                </div>
            </div>
            <div class="eight columns">
                <img src="img/login-img.png" alt="cat supreme image">
            </div>
        </div>
    </div>
</div>
</body>
</html>