<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads"/>
    </jsp:include>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato|Source+Code+Pro:400,700,900">
    <link rel="stylesheet" href="/css/normalize.css">
    <link rel="stylesheet" href="/css/skeleton.css">
    <link rel="stylesheet" href="/css/animate.css">
    <link rel="stylesheet" href="/css/styles.css">
    <link rel="stylesheet" href="/css/cards.css">

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<section class="admin-dashboard">
    <div class="container">
        <h5>User logged in: ${user.username}</h5>
        <%--  Cats Table --%>

        <div class="row">
            <div class="six columns">
                <div class="table-wrapper">
                    <h4>Cats Table</h4>

                    <table class="fl-table">
                        <thead>
                        <tr>
                            <th>Cat ID</th>
                            <th>Name</th>
                            <th>Personality</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="ad" items="${ads}">
                        <tr>
                            <td>${ad.id}</td>
                            <td>${ad.title}</td>
                            <td>${ad.personality_type}</td>
                            <td>
                                <form class="table-form" action="/dashboard" method="post">
                                    <button type="submit" value="${ad.id}" name="cat-id" class="table-delete">Remove
                                    </button>
                                </form>
                            </td>
                        </tr>
                        </c:forEach>
                        <tbody>
                    </table>
                </div>
            </div>

            <%--        User's Table--%>

            <div class="six columns">
                <div class="table-wrapper">
                    <h4>Users Table</h4>
                    <table class="fl-table">
                        <thead>
                        <tr>
                            <th>Uer ID</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Preference</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td>${user.preferences}</td>
                            <td>
                                <form class="table-form" action="/dashboard" method="post">
                                    <button type="submit" value="${user.id}" name="user-id" class="table-delete">Remove
                                    </button>
                                </form>
                            </td>
                        </tr>
                        </c:forEach>
                        <tbody>
                    </table>
                </div>
            </div>
        <%-- Add Cat--%>
        </div>
    </div>
</section>



<div class="row">
    <div class="container">
        <div class="six columns">
            <section class="add-cat-section">
                <h5>Add A Cat</h5>
                <form action="/ads/create" method="post">
                    <div class="form-group">
                        <label for="title">Title</label>
                        <input id="title" name="title" class="form-control" type="text">
                    </div>
                    <div class="form-group">
                        <label for="image-link">Image URL</label>
                        <input type="text" id="image-link" name="image-link" class="form-control" placeholder="">
                    </div>
                    <div class="form-group">
                        <select name="personality_type" id="cat-personality">
                            <option value="active">Active</option>
                            <option value="chill">Chill</option>
                            <option value="zoomies">Zoomies</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea id="description" name="description" class="form-control" type="text"></textarea>
                    </div>
                    <input type="submit" class="btn btn-block btn-primary">
                </form>
            </section>
        </div>
    </div>
</div>

</body>
</html>
