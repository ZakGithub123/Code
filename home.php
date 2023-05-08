<?php
session_start();
if(!isset($_SESSION['email'])){
    header("Location:./index.html");
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link href="./assets/css/home.css" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script defer src="./assets/js/home.js"></script>
  <title>Quiz App</title>
</head>
<body>
    <nav>
        <ul>
  <li><a href="#">Math Quiz</a></li>
  <li style="float:right"><a class="active" href="./auth/logout.php">Logout</a></li>
</ul>

    </nav>
    <div class="main">
  <div class="container">
    <div id="question-container" class="hide">
      <div id="question">Question</div>
      <div id="answer-buttons" class="btn-grid">
        <button class="btn">Answer 1</button>
        <button class="btn">Answer 2</button>
        <button class="btn">Answer 3</button>
        <button class="btn">Answer 4</button>
      </div>
    </div>
    <h1 style="text-align:center;" id="score_box"></h1>
    <div class="controls">
        
      <button id="start-btn" class="start-btn btn">Start</button>
      <button id="next-btn" class="next-btn btn hide">Next</button>
    </div>
  </div>
  </div>
</body>
</html>