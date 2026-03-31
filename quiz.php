<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="csss.css">
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
        <?php
        $servername = "localhost";
$username = "username";
$password = "";
$dbname = "quiz";

$conn = mysqli_connect("localhost", "root", "", "quiz");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "";
session_start();
if (!isset($_SESSION['user_nick'])) { header("Location: index.php"); exit; }
       $conn = mysqli_connect("localhost", "root", "", "quiz");

if ($_SESSION['punkty'] >= 10) {
    echo "<h1>10 na 10 Gratulacje znasz się na filmach, " . $_SESSION['user_nick'] . "!</h1>";
    ?>

        <hr class="pasek"> 
        
<?php
    echo '<a href="index.php">Zagraj ponownie</a>';
    echo '<a href="wynik.php">Zobacz wyniki reszty</a>';
    session_destroy();
    exit;
}

// Losowanie pytania (wykluczając wykorzystane)
$ids = !empty($_SESSION['wykorzystane']) ? implode(',', $_SESSION['wykorzystane']) : '0';
$zapytanie = "SELECT p.ID, p.Treść_Pytania, o.a, o.b, o.c, o.d 
              FROM pytania p 
              JOIN odpowiedzi o ON p.ID = o.id_pytania 
              WHERE p.ID NOT IN ($ids) ORDER BY RAND() LIMIT 1";

$wynik = mysqli_query($conn, $zapytanie);
$wiersz = mysqli_fetch_assoc($wynik);

if ($wiersz) {
    $_SESSION['aktualne_id'] = $wiersz['ID'];
    echo "<h3>Gracz: " . $_SESSION['user_nick'] . " | Wynik: " . $_SESSION['punkty'] . "/10</h3>";
    echo '<form action="sprawdz.php" method="POST">';
    foreach(['a'] as $litera) {
        echo "<label><input type='radio' name='wybor' value='".strtoupper($litera)."' required> A: " . $wiersz[$litera] . "</label><br>";
    }
    foreach(['b'] as $litera) {
        echo "<label><input type='radio' name='wybor' value='".strtoupper($litera)."' required> B: " . $wiersz[$litera] . "</label><br>";
    }
    foreach(['c'] as $litera) {
        echo "<label><input type='radio' name='wybor' value='".strtoupper($litera)."' required> C: " . $wiersz[$litera] . "</label><br>";
    }
    foreach(['d'] as $litera) {
        echo "<label><input type='radio' name='wybor' value='".strtoupper($litera)."' required> D: " . $wiersz[$litera] . "</label><br>";
    }
    ?>
    <hr>
    <?php
        echo "<h3>" . $wiersz['Treść_Pytania'] . "</h3>";
    echo "<br><button type='submit'>Zatwierdź</button></form>";
}
    ?>
</div>
</div>
</body>
</html>