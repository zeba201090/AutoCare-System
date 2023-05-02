<?php
    session_start();
    unset($_SESSION["name"]);
    unset($_SESSION["number"]);
    unset($_SESSION["car"]);
    session_abort();
    header("Location:landing.php");
?>