<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <link rel="stylesheet" href="/css/profile-cards.css">
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <section>
            <div class="card-container">
                    <div class="card">
                        <img src="https://i.pinimg.com/736x/4a/be/d0/4abed082f43ef08ce5082d0820bc21c7.jpg"/>
                        <div class="content">
                            <h1>Welcome, ${sessionScope.user.username}!</h1>
                            <p>Email: ${sessionScope.user.email}</p>
                            <p>Selected Preference: ${sessionScope.user.preferences}</p>
                        </div>
                    </div>

            </div>
        </section>
    </div>


</body>
</html>
