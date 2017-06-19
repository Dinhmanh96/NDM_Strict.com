<?php
    $id = $_GET['id'];
    $sql = "DELETE FROM simple WHERE id ='$id'";
    $query = mysqli_query($con,$sql); 
    header("location:main.php?page_layout=simple");
?>