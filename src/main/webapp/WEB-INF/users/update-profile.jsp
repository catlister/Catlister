<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Update your profile." />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<div class="container">
    <h1>Please fill in your updated information.</h1>
    <form action="/update-profile" method="post">
        <div class="form-group">
            <label for="email">Update Email</label>
            <input id="email" name="email" class="form-control" type="text">
        </div>
        <div class="form-group">
            <input type="radio" id="preference" name="preference" value="active">Active<br>
            <input type="radio" name="preference" value="chill">Chill<br>
            <input type="radio" name="preference" value="in-between">In Between<br>
        </div>
        <div class="form-group">
            <label for="password">Update Password</label>
            <input id="password" name="password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Update Password</label>
            <input id="confirm_password" name="confirm_password" class="form-control" type="password">
        </div>
        <div class="form-group">
            <label for="profile_image">Update Profile Image (link)</label>
            <input id="profile_image" name="profile_image" class="form-control" type="text">
        </div>
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
</body>
</html>