<?php
session_start();
session_destroy();
setcookie("email", "", time() - 3600);
setcookie("password", "", time() - 3600);
header('location:index.php');
?>