<?php
$servername = "localhost";
$username = "username";
$password = "";
$dbname = "quiz";

$conn = mysqli_connect("localhost", "root", "", "quiz");

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "Select 'Wynik', 'Imię'
From gracze
Where Wynik > 0
ORDER BY (wynik + 0) ASC
LIMIT 25
";
?>