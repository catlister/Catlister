<%--
  Created by IntelliJ IDEA.
  User: nadiabotello
  Date: 2019-06-24
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <%--    <h1>Update your info</h1>--%>
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
            <label for="email">Update Profile Image</label>
            <input id="profile_image" name="profile_image" class="form-control" type="text"
                   placeholder="http://www.img/img.jpg">
        </div>

        <div class="form-group">
            <label for="user-pref"></label>
            <select name="preference" id="user-pref">
                <option value="active">Active</option>
                <option value="chill">Chill</option>
                <option value="zoomies">Zoomies</option>
            </select>

        </div>

        <input type="hidden" name="user-id" value="${user.id}">
        <input type="submit" class="btn btn-primary btn-block">
    </form>
</div>
