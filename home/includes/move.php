<?php

if (isset($_POST['signin'])){


$UserName = mysqli_real_escape_string($con, $_POST['memberId']);

$Password = sha1(mysqli_real_escape_string($con, $_POST['password']));
	
	
$query = mysqli_query($con, "select * from user where username='$UserName' and password='$Password'");
$row = mysqli_fetch_array($query);
$num_row = mysqli_num_rows($query);
$f=$row['name'];


if ($num_row > 0){

		if (isset($_POST['rember'])) {
			setcookie('usrname', $UserName, time() + 86400);
		}
			if($row['status'] == "blocked") {
	
	    echo "<div class='alert alert-danger' style='font-size:20px;'><b>Sorry Your Account is Blocked</b></div>";

              }
     elseif($row['status'] == "inactive"){

        echo "<div class='alert alert-danger'><b>Your Acount Is Inactive, Try Activate Using Your Email</b></div>";
	
		//header("Location: activate-account.php");

} 
elseif($row['status'] == "active"){


 session_start();
			 
			 $key_id = $row['id']; 
			 
			 $user_browser = $_SERVER['HTTP_USER_AGENT'];

			$_SESSION['key_id'] = $key_id;
			
			$_SESSION['ip'] = $user_browser;

		header("Location: dashboard/dashboard");
	
}
}
else{
?>
    <div class="alert alert-danger" style='font-size:17px;'>
    <button class="close" data-dismiss="alert"></button>
   wrong Username or Password!!!
    </div>
<?php	
 
  

}
}
?>
