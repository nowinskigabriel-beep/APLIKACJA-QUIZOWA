<?php
session_start();
if (!empty($_POST['user_nick'])) {
    $_SESSION['user_nick'] = $_POST['user_nick'];
    $_SESSION['punkty'] = 0;
    $_SESSION['wykorzystane'] = [];
    header("Location: quiz.php");
} else {
    header("Location: index.php");
}
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $input_nick = trim($_POST['user_nick']);

    if (empty($input_nick)) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyz';
        $random_string = substr(str_shuffle($characters), 0, 5);
        $nick = "Gracz " . $random_string;
    } else {
        $nick = $input_nick;
    }
    
    $_SESSION['user_nick'] = $nick;
    $_SESSION['punkty'] = 0;
    $_SESSION['wykorzystane'] = [];

    header("Location: quiz.php");
    exit;
}
exit;