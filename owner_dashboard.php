<?php 
    session_start();
    include("dbcon/conn.php");
    $id=$_SESSION['owner_id'];
    $sql="SELECT * FROM owners_info WHERE owner_id='$id'";
    $result=mysqli_query($conn,$sql);
    if($result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
            $uname=$row['owner_name'];
            $num=$row['owner_phone_number'];
            $email=$row['owner_email'];
            $_SESSION['address']=$row['owner_address'];
        }
      }
      $_SESSION['owner_phone']=$num;
      $_SESSION['owner_email']=$email;
      $suggest=False;
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Owner page</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">


    
    <style>
        body {
            background: cyan;
        }
        .profile-button {
            background: rgb(99, 39, 120);
            box-shadow: none;
            border: none
        }
        .profile-button:hover {
            background: #682773
        }
        .profile-button:focus {
            background: #682773;
            box-shadow: none
        }
        .profile-button:active {
            background: #682773;
            box-shadow: none
        }
        .back:hover {
            color: #682773;
            cursor: pointer
        }
        .labels{
            font-size: 11px
        }
        .add-experience:hover{
            background: #BA68C8;
            color: #fff;
            cursor: pointer;
            border: solid 1px #BA68C8
        }
        .button{
            top:20%;
            left:30%;
            width:130px;
            height:90px;
            margin-right:40px; 
            margin-bottom:20px; 
            border: none;
            color:#00008b;
            background-color:#46C6CE;
            border-radius: 5px;
            box-shadow: 0 4px 10px 0 rgba(0,0,0,0.2);
        }
        .button2{
            margin-right:10px; 
            margin-bottom:10px; 
            width:120px;
            height:50px;
            color:#00008b;
            background-color:orange;
            border:none;
            border-radius:15px;
        }
    </style>
</head>
<body>
<div class="container-fluid position-relative nav-bar p-0">
        <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-white navbar-light py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="" class="navbar-brand">
                    <h1 class="m-0 text-secondary"><span class="text-primary">AUTO</span>CARE</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                    <div class="navbar-nav ml-auto py-0">
                        <a href="shopping.php" class="nav-item nav-link">Marketplace</a> 
                    </div>
                    <div class="navbar-nav ml-auto py-0">
                        <a href="speciallist.php" class="nav-item nav-link">Special Services</a> 
                    </div>
                </div>
            </nav>
        </div>
    </div>
<div class="container rounded bg-white mt-5 mb-5">
    <div class="row">
        <div class="col-md-3 border-right">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                <span class="font-weight-bold">
                    <?php echo $uname?>
                    <br>
                    <?php echo $num ?>
                    <br>
                    <?php echo $email ?>
                </span>
            </div>
                <div class="px-3 p-1 add-experience" style="text-decoration:none;">
                    <form action="odash_index.php" method="Post">
                        <button name="submit" type="submit">Logout</button>
                    </form>
                </div>
                <br><br><br>
                <div class="px-3 p-1 add-experience" style="text-decoration:none;">
                    <a href="ownerupdate.php"><Button>Update Profile</Button></a>
                </div>     
        </div>
        <div class="col-md-5 border-right">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">Order services</h4>
                </div>
                <div class="row mt-2">
                    <button class="button" onclick="location.href='vswash.php'">CAR WASH</button>
                    <button class="button" onclick="location.href='brake.php'">BRAKE CHANGE</button>
                    <button class="button" onclick="location.href='oil.php'">OIL CHANGE</button>
                </div>
                <div class="row mt-3">
                    <button class="button" onclick="location.href='tire.php'">TIRE CHANGE</button>
                    <button class="button" onclick="location.href='battery.php'">BATTERY REPLACE</button>
                    <button class="button" onclick="location.href='spark.php'">SPARK PLUG CHANGE</button>  
                </div>
                <div class="row mt-3">
                    <button class="button" onclick="location.href='wax.php'">WAX VEHICLE</button>
                    <button class="button" onclick="location.href='filter.php'">AIR FILTER REPLACE</button>
                    <button class="button" onclick="location.href='shock.php'">INSPECT SHOCKS AND STRUTS</button>    
                </div>
                <div class="row mt-3">
                    <button class="button" onclick="location.href='wiper.php'">REPLACE WINDSHIELD WIPERS</button>
                    <button class="button" onclick="location.href='wheel.php'">WHEEL ALIGN</button>
                    <button class="button" onclick="location.href='engine.php'">ENGINE DIAGNOSIS</button>    
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center experience"><span>Car details</span><span class="border px-3 p-1 add-experience"><a href="addcar.php" style="text-decoration:none; color:black;">Add a car</a>
                <br>   
            </span></div>
            <br>
                <div>
                    <?php
                        $sql="SELECT * FROM vehicle_info 
                        WHERE owner_id IN (SELECT owner_id From owners_info WHERE owner_id=$id)";
                        $result=mysqli_query($conn,$sql);

                        if(mysqli_num_rows($result)>0){
                            while($row=mysqli_fetch_assoc($result)){
                                $_SESSION['car']=$row['v_id'];
                                echo "<tr><td>". $row["brand"]."&nbsp;&nbsp;<tr><td>".$row["model"]."<br>";
                            }
                            echo "</table>";
                        }
                        else{
                            echo "No cars added";
                        }
                    ?>
                </div>
                <br>
                <div>
                    <h3>Suggested</h3>
                    <?php
                        $sql="SELECT date,title,status FROM cservice 
                        WHERE owner_id=$id AND status='done'";
                        $result=mysqli_query($conn,$sql);
                        $row=mysqli_fetch_assoc($result);
                        if(mysqli_num_rows($result)==0){
                            ?>
                            <h1 style="color:purple">Woohoo you are up to date!!</h1>
                            <?php
                        }
                        else{
                            $serve=$row['title'];
                            if($row['date']==date("Y-m-d")){
                                $suggest=TRUE;
                            }
                            if($suggest==TRUE){
                                ?>
                                <h1 style="color:purple">Woohoo you are up to date!!</h1>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Tire change'){
                                ?>
                                <button class="button2">Tire change</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Car Wash'){
                                ?>
                                <button class="button2">CAR WASH</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Car Waxing'){
                                ?>
                                <button class="button2">Car Waxing</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Wheel Change'){
                                ?>
                                <button class="button2">Wheel Change</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Change Spark Plug'){
                                ?>
                                <button class="button2">Change Spark Plug</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Shock and Struts inspection'){
                                ?>
                                <button class="button2">Shock and Struts inspection</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Change engine oil'){
                                ?>
                                <button class="button2">Change engine oil</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Air filter replacement'){
                                ?>
                                <button class="button2">Air filter replacement</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Engine Diagnosis'){
                                ?>
                                <button class="button2">Engine Diagnosis</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Replace Brake'){
                                ?>
                                <button class="button2">Replace Brake</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Change Car Battery'){
                                ?>
                                <button class="button2">Change Car Battery</button>
                                <br>
                                <?php
                            }
                            if($suggest==FALSE&&$serve=='Wiper Change'){
                                ?>
                                <button class="button2">Wiper Change</button>
                                <br>
                                <?php
                            }
                        }
                    ?>
                </div>
                <br>
                <br>
                <br>
                <br>
                <div>
                </div>
                <div class="p-3 py-5">
                <span class="border px-3 p-1 add-experience"><a href="vendor_upload.php" style="text-decoration:none; color:black;">Sell Old Parts</a>
                </span></div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</body>
</html>