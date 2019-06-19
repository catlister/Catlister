<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
        <h1>Create a new Ad</h1>
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
                <p><b>Choose Cat Personality Type</b></p>
                <input type="radio" name="personality_type" value="active"> Active<br>
                <input type="radio" name="personality_type" value="chill"> Chill<br>
                <input type="radio" name="personality_type" value="zoomies"> Zoomies<br>
            </div>
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description" class="form-control" type="text"></textarea>
            </div>
            <input type="submit" class="btn btn-block btn-primary">
        </form>
    </div>
</body>
</html>
