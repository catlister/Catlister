<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <jsp:include page="../partials/head.jsp">
        <jsp:param name="title" value="Update your profile."/>
    </jsp:include>
</head>
<body>
<jsp:include page="../partials/navbar.jsp"/>

<div class="container">
    <h1>Updated your information</h1>
    <form action="/update-profile" method="post">

        <div class="form-group">
            <label for="username">Update Username</label>
            <input id="username" name="username" class="form-control" type="text" value="${user.username}">
        </div>

        <div class="form-group">
            <label for="email">Update Email</label>
            <input id="email" name="email" class="form-control" type="text" value="${user.email}">
        </div>

        <div class="form-group">
            <label for="email">Update Profile URL</label>
            <input id="profile_image" name="profile_image" class="form-control" type="text" placeholder="http://www.img/img.jpg">
        </div>

        <div class="form-group">
            <input type="radio" name="preference" value="active">Active<br>
            <input type="radio" name="preference" value="chill">Chill<br>
            <input type="radio" name="preference" value="zoomies">Zoomies<br>
        </div>

        <input type="hidden" name="user-id" value="${user.id}">
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>