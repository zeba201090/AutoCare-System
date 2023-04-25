
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Titillium+Web');

        *{
            font-family: 'Titillium Web', sans-serif;
        }
        .product{
            border: 1px solid #eaeaec;
            margin: -1px 19px 3px -1px;
            padding: 10px;
            text-align: center;
            background-color: #efefef;
        }
        .button {
  background-color: #46C6CE#;
  border: none;
  color: #17a2b8;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 18px 90px;
  cursor: pointer;
}
        table, th, tr{
            text-align: center;
        }
        .title2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        h2{
            text-align: center;
            color: #66afe9;
            background-color: #efefef;
            padding: 2%;
        }
        table th{
            background-color: #46C6CE

;
        }
    </style>

<form action="checkout.php" method="POST">

<div class="button" >
    
 
 <input type="submit" 
      name="submit"
      value="checkout">         
       

</div>
</form>


<div style="clear: both"></div>
        <h3 class="title2">Shopping Cart Details</h3>
        <div class="table-responsive">
            <table class="table table-bordered">
            <tr>
                <th width="30%">Product Name</th>
                <th width="10%">Quantity</th>
                <th width="13%">Price Details</th>
                <th width="10%">Total Price</th>
                <th width="17%">Remove Item</th>
            </tr>

            <?php
            
            session_start();
            $con = mysqli_connect("localhost","root","",'car_management_system');
        
            if (isset($_POST["add"])){
        
                if (isset($_SESSION["cart"])){
                    
                    $item_array_id = array_column($_SESSION["cart"],"id");
                    if (!in_array($_GET["id"],$item_array_id)){
                        $count = count($_SESSION["cart"]);
                        $item_array = array(
                            'id' => $_GET["id"],
                            'title' => $_POST["hidden_name"],
                            'price' => $_POST["hidden_price"],
                            'quantity' => $_POST["quantity"],
                        );
                        $_SESSION["cart"][$count] = $item_array;
                        echo '<script>window.location="shopping.php"</script>';
                    }else{
                        echo '<script>alert("Product is already Added to Cart")</script>';
                        echo '<script>window.location="shopping.php"</script>';
                    }
                }else{
                    $item_array = array(
                        
                            'id' => $_GET["id"],
                            'title' => $_POST["hidden_name"],
                            'price' => $_POST["hidden_price"],
                            'quantity' => $_POST["quantity"], 
                    );
        
                    $_SESSION["cart"][0] = $item_array;
                }
            }
        
            if (isset($_GET["action"])){
                if ($_GET["action"] == "delete"){
                    foreach ($_SESSION["cart"] as $keys => $value){
                        if ($value["id"] == $_GET["id"]){
                            unset($_SESSION["cart"][$keys]);
                            echo '<script>alert("Product has been Removed...!")</script>';
                            echo '<script>window.location="shopping.php"</script>';
                        }
                    }
                }
            }
        
                if(!empty($_SESSION["cart"])){
                    $total = 0;
                    foreach ($_SESSION["cart"] as $key => $value) {
                        ?>
                        <tr>
                            <td><?php echo $value["title"]; ?></td>
                            <td><?php echo $value["quantity"]; ?></td>
                            <td> ৳ <?php echo $value["price"]; ?> </td>
                            <td>
                                ৳ <?php echo number_format($value["quantity"] * $value["price"], 2); ?></td>
                            <td><a href="shopping.php?action=delete&id=<?php echo $value["id"]; ?>"><span
                                        class="text-danger">Remove Item</span></a></td>

                        </tr>
                        <?php
                        $total = $total + ($value["quantity"] * $value["price"]);
                    }
                        ?>
                        <tr>
                            <td colspan="3" align="right">Total</td>
                            <th align="right">৳ <?php echo number_format($total, 2); ?></th>
                            <td></td>
                        </tr>

                        <?php
                    }
                ?>

            </table>
        <form action="test_cart.php" method="POST">

            <div class="button" >
            <? $name=$_SESSION['name'];
                    $number=$_SESSION['number'];
                    $own_id=$_SESSION['owner_id'];
                
             ?>
             <input type="submit" 
                  name="submit"
                  value="checkout">         
                   

        </div>
    </form>

    </div>