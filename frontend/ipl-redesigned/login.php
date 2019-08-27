<?php

session_start();

$server = "localhost";
$username = "root";
$password = "";
$dbname = "ipl_test";

$conn = mysqli_connect($server, $username, $password, $dbname);

if($conn){
    if(isset($_POST['signup-btn'])){
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $name = $fname." ".$lname;
        $email = $_POST['email'];
        $pass = $_POST['pass'];
        $signup = "INSERT INTO users(name, email, password) VALUES('$name', '$email', '$pass')";
        mysqli_query($conn, $signup);
        $message = "Successfully registered user : ".$name;
        echo "<script type='text/javascript'>alert('Successfully registered user');</script>";
        header('Location:login.html');
    }
    else if(isset($_POST['login-btn'])){
        $login_email = $_POST['login-email'];
        $login_pass = $_POST['login-pass'];
        $sql = "SELECT * from users WHERE email='$login_email' AND password='$login_pass'";
        $result = mysqli_query($conn, $sql);
        $num_rows = mysqli_num_rows($result);
        $num_rows = mysqli_num_rows($result);
        if($num_rows > 0){
            $row = mysqli_fetch_assoc($result);
            $_SESSION['user_name'] = $row['name'];
            $_SESSION['uid'] =  $row['user_id'];
            header('Location:index.php');
        }
    }
}

?>