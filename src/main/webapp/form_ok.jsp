<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/11/2023
  Time: 8:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fun Facts Form</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<%
    request.setCharacterEncoding("UTF-8");
    // Retrieve the image URL from the form data
    String imageUrl = request.getParameter("image-url");

    // Display the image from the provided URL
    if (imageUrl != null && !imageUrl.isEmpty()) {
%>
<img src="<%= imageUrl %>" alt="Profile Picture" style="max-width: 100%;">

<%
    }
%>

<%
    // Retrieve form data

    String name = request.getParameter("name");
    String birthDate = request.getParameter("birth-date");
    String phoneNumber = request.getParameter("phone-number");
    String favoriteColor = request.getParameter("favorite-color");
    String mbti = request.getParameter("mbti");
    String moodLevel = request.getParameter("mood-level");
    String[] descriptors = request.getParameterValues("descriptors[]");
    String funFact = request.getParameter("fun-fact");

    // Print form data
%>

<h2><strong>About </strong> <%= name %></h2>
<p><strong>Birthdate:</strong> <%= birthDate %></p>
<p><strong>Phone Number:</strong> <%= phoneNumber %></p>
<p><strong>Favorite Color:</strong> <%= favoriteColor %></p>
<p><strong>MBTI Type:</strong> <%= mbti %></p>
<p><strong>Mood Level:</strong> <%= moodLevel %></p>
<p><strong>Descriptors:</strong> <%= (descriptors != null && descriptors.length > 0) ? String.join(", ", descriptors) : "None selected" %></p>
<p><strong>Fun Fact:</strong> <%= funFact %></p>

</body>

</html>
