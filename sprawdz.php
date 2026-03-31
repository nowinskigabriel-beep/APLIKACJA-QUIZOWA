<?php
session_start();
$conn = mysqli_connect("localhost", "root", "", "quiz");

if (isset($_POST['wybor']) && isset($_SESSION['user_nick'])) {
    $nick = $_SESSION['user_nick'];
    $wybor = $_POST['wybor'];
    $id_pytania = $_SESSION['aktualne_id'];

    $sql = "SELECT poprawna FROM poprawna_odpowiedz WHERE id_pytania = $id_pytania";
    $zap = mysqli_query($conn, $sql);
    $poprawna = mysqli_fetch_assoc($zap)['poprawna'];

    if ($wybor == $poprawna) {
        $_SESSION['punkty']++;
        $_SESSION['wykorzystane'][] = $id_pytania;
        
        if ($_SESSION['punkty'] == 10) {
            $wynik_str = "10/10";
            $save = "INSERT INTO gracze (Imię, Wynik, DATA) VALUES ('$nick', '$wynik_str', NOW()) 
                     ON DUPLICATE KEY UPDATE Wynik = '$wynik_str', DATA = NOW()";
            mysqli_query($conn, $save);
        }
        header("Location: quiz.php");
    } else {
        $wynik_finalny = $_SESSION['punkty'] . "/10";
        $save = "INSERT INTO gracze (Imię, Wynik, DATA) VALUES ('$nick', '$wynik_finalny', NOW()) 
                 ON DUPLICATE KEY UPDATE Wynik = '$wynik_finalny', DATA = NOW()";
        mysqli_query($conn, $save);
        
        session_destroy();
        echo "<script>alert('Koniec gry! Twój wynik: $wynik_finalny'); window.location.href='index.php';</script>";
    }
}
exit;