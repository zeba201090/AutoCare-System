
<?php
            
            session_start();
            $con = mysqli_connect("localhost","root","",'car_management_system');
        
            $name=$_SESSION['name'];
            $number=$_SESSION['number'];
            $own_id=$_SESSION['owner_id'];

foreach($_SESSION["cart"] as $cart) {
    print_r($cart);
    $id= $cart["id"];

    extract($cart);
    echo $name;
    echo $number;

    $sql="INSERT INTO customer_order (title,price,owner_phone,vendor_id,customer_name) 
			VALUES ('$title','$price','$number','1','$name')";

	$run= mysqli_query($con,$sql);

	if ($run){
		echo "yay"	;
        echo $name;
        echo $number;
	}
	else {
		echo "unsuccessful" ;
	}

} 

?>
