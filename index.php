<?php

$conn = mysqli_connect("localhost", "root", "", "quiz");
session_start();
if (isset($_SESSION['user_nick'])) {
    header("Location: quiz.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="" content="width=device-width, initial-scale=1.0">
    
    <title>Quiz</title>
    <link rel="stylesheet" href="css.css">
</head>
<body>
<div class="okno">
    <header>
        <strong>Quiz Wiedzy O Filmach</strong>
        <div class="x_">
            <button id ="pod" class = "podłoga">_</button>
            <button id = "ix" class = "X">X</button> 
        </div>
    </header>
    <nav class="naw">
        <span><u>P</u>lik</span>
        <span><u>E</u>dycja</span>
        <span><u>W</u>idok</span>
        <span><u>P</u>omoc</span>
    </nav>
    <div class="pole">
    <h2>WITAM NA APLIKACJI QUIZOWEJ</h2>
    <hr class="pasek"> 
    <p>Proszę podać nazwę Użytkownika:</p>
    <form action="zaloguj.php" method="POST">
    <input type= "text" name="user_nick" id = "Nick"></input>
    <button type="submit" id="logowanie" class="zalogowanie">Zaloguj</button>
    </form>
</div>
</div>
<audio id = "logowanie_dźwięk" src="dzwiekLogowania"></audio>
<audio id = "zła_odpowiedź" src="złaodpowiedz.wav"></audio>
<script src="java.js"></script>
</body>
</html>