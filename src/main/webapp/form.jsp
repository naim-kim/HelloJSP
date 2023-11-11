<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 11/11/2023
  Time: 8:05 PM
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

<form action="form_ok.jsp" method="post">

  <!-- Text Input -->
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required>

  <!-- Date Input -->
  <label for="birth-date">Birthdate:</label>
  <input type="date" id="birth-date" name="birth-date" required>

  <br>

  <!-- Phone Number Input -->
  <label for="phone-number">Phone Number:</label>
  <input type="tel" id="phone-number" name="phone-number" pattern="010[0-9]{8}" placeholder="01012345678"
         required>

  <br>

  <!-- Image url Input -->
  <label for="image-url">Image URL:
    <input type="url" id="image-url" name="image-url" required>
  </label>

  <br>

  <!-- Color Input -->
  <label>Favorite Color:
    <input type="color" id="favorite-color" name="favorite-color" value="#ff0000">
  </label>

  <!-- Dropdown -->
  <label for="mbti">Choose Your MBTI Type:
    <select id="mbti" name="mbti">
      <option value="ISTJ">ISTJ</option>
      <option value="ISFJ">ISFJ</option>
      <option value="INFJ">INFJ</option>
      <option value="INTJ">INTJ</option>
      <option value="ISTP">ISTP</option>
      <option value="ISFP">ISFP</option>
      <option value="INFP">INFP</option>
      <option value="INTP">INTP</option>
      <option value="ESTP">ESTP</option>
      <option value="ESFP">ESFP</option>
      <option value="ENFP">ENFP</option>
      <option value="ENTP">ENTP</option>
      <option value="ESTJ">ESTJ</option>
      <option value="ESFJ">ESFJ</option>
      <option value="ENFJ">ENFJ</option>
      <option value="ENTJ">ENTJ</option>
    </select>
  </label>

  <br>
  <!-- Range -->
  <label for="mood-level">How is Your Mood Today? (1 - Bad, 10 - Good):
    <input type="range" id="mood-level" name="mood-level" min="0" max="10">
  </label>
  <br>
  <!-- Checkbox -->
  <label>Words That Describe You Best:</label>
  <div class="checkbox-group">
    <div class="checkbox-column">
      <label>
        <input type="checkbox" id="creative" name="descriptors[]" value="creative">
        Creative
      </label>

      <label>
        <input type="checkbox" id="adventurous" name="descriptors[]" value="adventurous">
        Adventurous
      </label>

      <label>
        <input type="checkbox" id="optimistic" name="descriptors[]" value="optimistic">
        Optimistic
      </label>

      <label>
        <input type="checkbox" id="fun-loving" name="descriptors[]" value="fun-loving">
        Fun-loving
      </label>

      <label>
        <input type="checkbox" id="organized" name="descriptors[]" value="organized">
        Organized
      </label>
    </div>

    <div class="checkbox-column">
      <label>
        <input type="checkbox" id="easy-going" name="descriptors[]" value="easy-going">
        Easy-going
      </label>

      <label>
        <input type="checkbox" id="energetic" name="descriptors[]" value="energetic">
        Energetic
      </label>

      <label>
        <input type="checkbox" id="analytical" name="descriptors[]" value="analytical">
        Analytical
      </label>

      <label>
        <input type="checkbox" id="social" name="descriptors[]" value="social">
        Social
      </label>

      <label>
        <input type="checkbox" id="introspective" name="descriptors[]" value="introspective">
        Introspective
      </label>
    </div>
  </div>
  <br>
  <!-- Textarea -->
  <label for="fun-fact">Fun Fact:</label>
  <textarea id="fun-fact" name="fun-fact" rows="4" cols="50" required></textarea>

  <!-- Submit Button -->
  <input type="submit" value="Submit">

</form>

</body>

</html>