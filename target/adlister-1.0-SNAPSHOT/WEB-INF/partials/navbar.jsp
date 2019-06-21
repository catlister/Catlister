<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="top_nav_container">
    <div class="container">
        <c:if test="${user.username == null}">
        <ul id = "default" class="nav navbar-nav navbar-right default">
            <!-- logged out USER nav bar -->
            <li><a href="/ads">View Cats</a></li>
            <li><a href="/login">Login</a></li>
        </ul>
        </c:if>

        <c:if test="${user.username != null}">
        <ul id = "logged-in-user" class="nav navbar-nav navbar-right logged-in-user">
            <!-- logged in USER nav bar -->
            <li><a href="/ads">View All</a></li>
            <li><a href="/match">Match*</a></li>
            <li><a href="/update-profile">Update Profile</a></li>
            <li><a href="/logout">Logout</a></li>
        </ul>
        </c:if>

<%--        <c:if test="${isAdmin}">--%>
<%--        <ul id = "logged-in-admin" class="nav navbar-nav navbar-right logged-in-admin">--%>
<%--            <!-- logged in ADMIN nav bar -->--%>
<%--            <li><a href="/ads">View All</a></li>--%>
<%--            <li><a href="/match">Match*</a></li>--%>
<%--            <li><a href="/update-profile">Update Profile</a></li>--%>
<%--            <li><a href="/edit">Edit*</a></li>--%>
<%--            <li><a href="/logout">Logout</a></li>--%>
<%--        </ul>--%>
<%--        </c:if>--%>

    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
