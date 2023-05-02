<?php
    session_start();
    include("dbcon/conn.php");

    $title=$POST['title'];
    $garage=$POST['garage'];
    echo $title;
    echo $garage;
?>