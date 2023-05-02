<?php
    session_start();
    include("dbcon/conn.php");
    $oid=$_SESSION['owner_id'];

    $sql="SELECT * FROM sservice";
    $result=mysqli_query($conn,$sql);

    if(mysqli_num_rows($result)>0){
        while($row=mysqli_fetch_assoc($result)){
            echo "<tr><td>". $row["title"]."&nbsp;&nbsp;<tr><td>".$row["price"]."<br>"."&nbsp;&nbsp;<tr><td>".$row["garage"]."<br>"."&nbsp;&nbsp;<tr><td>".$row["vphone"]."<br>";
            ?>
            <form action="special_list.php" method="POST">
                <input type="hidden" name='title' value="<?php echo $row["title"] ?>">
                <input type="hidden" name='garage' value="<?php echo $row["garage"] ?>">
                <input type="Submit" value="Order">
            </form>
            <?php
        }
        echo "</table>";
    }

?>