<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Register an account!"/>
    </jsp:include>
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/skeleton.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/register.css">
</head>
<body>
<jsp:include page="partials/navbar.jsp"/>
<section class="register-section">

    <div class="container">

        <div class="login-form-container">

            <div class="row">
                <div class="six columns left-side-form">
                    <img src="/img/cat-vs-man.png" alt="login-cat">
                </div>
                <div class="six columns right-side-form">
                    <form action="/register" method="post">
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input id="username" name="username" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input id="email" name="email" class="form-control" type="text">
                        </div>
                        <div class="form-group">
                            <label for="select-preference">Personality Type</label>
                            <select name="" id="select-preference">
                                <option name="preference" value="active">Active<br>
                                <option name="preference" value="chill">Chill<br>
                                <option name="preference" value="zoomies">Zoomies<br>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input id="password" name="password" class="form-control" type="password">
                        </div>
                        <div class="form-group">
                            <label for="confirm_password">Confirm Password</label>
                            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
                        </div>
                        <input type="submit" class="btn btn-primary btn-block">
                    </form>
                </div>
            </div>
        </div>
    </div>

</section>
<jsp:include page="partials/footer.jsp"/>
</body>
</html>
