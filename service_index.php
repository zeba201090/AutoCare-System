<?php
    session_start();
    include("dbcon/conn.php");
    
    $ocar=$vphone=' ';
    $title=$_POST['title'];

    $ocar=$_SESSION['owner_phone'];
    $vphone=$_POST['vphone'];
    $vid=$_POST['vid'];
    $oid=$_SESSION['owner_id'];

    $sql="INSERT INTO cservice(owner_phone,vphone,title,vendor_id,owner_id) 
			VALUES ('$ocar','$vphone','$title','$vid','$oid')";

	$run=mysqli_query($conn,$sql);

	if ($run){
		header("Location:owner_dashboard.php");	
        echo 'Successful';
	}
	else {
		echo "unsuccessful" ;
	}
?>