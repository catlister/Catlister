<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="top_nav_container">
    <div class="container">
        <c:if test="${user.username == null}">
        <ul id = "default" class="nav navbar-nav navbar-right default">
            <!-- logged out USER nav bar -->
            <li><a href="/">Home</a></li>ss
            <li><a href="/ads">Adopt</a></li>
            <li><a href="/register">Register</a></li>
            <li class="cat_nav_right"><a href="/login">Login</a></li>
        </ul>
        </c:if>

        <c:if test="${user.username != null}">
        <ul id = "logged-in-user" class="nav navbar-sav navbar-right logged-in-user">
            <!-- logged in USER nav bar -->
            <li><a href="/">Home</a></li>
            <li><a href="/ads">Adopt</a></li>
            <li><a href="/profile">Profile</a></li>
            <li class="cat_nav_right"><a href="/logout">Logout</a></li>
        </ul>
        </c:if>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
