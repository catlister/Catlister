<%--
  Created by IntelliJ IDEA.
  User: nadiabotello
  Date: 2019-06-20
  Time: 14:01
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <section>
        <div class=".nr_cards">
            <div class=".nr_cards">
                <img src="https://i.pinimg.com/736x/4a/be/d0/4abed082f43ef08ce5082d0820bc21c7.jpg"/>
                <div class="content">
                    <h1>Welcome, ${sessionScope.user.username}!</h1>
                    <br>
                    <p><b>Email:</b> ${sessionScope.user.email}</p>
                    <p><b>Cat Preference:</b> ${sessionScope.user.preferences}</p>
                    <br>
                    <a href="/update-profile" class=".nr_secondary_buttons">Update Profile</a>
                </div>
            </div>

        </div>
    </section>
</div>
