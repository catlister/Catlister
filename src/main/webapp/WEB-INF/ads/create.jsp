<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad" />
    </jsp:include>
</head>
<body>
    <div class="container">
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
                        <option value="active"> Active</option>
                        <option value="chill"> Chill</option>
                        <option value="zoomies"> Zoomies</option>
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
</body>
</html>
