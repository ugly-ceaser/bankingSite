<?php include 'dbpipe.php'; ?>
<?php
 session_start(); 
 
//Check whether the session variable SESS_MEMBER_ID is present or not
if (!isset($_SESSION['logged_id']) || $_SESSION['logged_id'] == '') { ?>
<script>
window.location = "login.html";
</script>

<?php
}

//Check whether the session variable SESS_MEMBER_ID is present or not
$session_id = $_SESSION['logged_id'];
$query= mysqli_query($con, "select * from users where id = '$session_id' AND status IN ('blocked','inactive')")or die(mysqli_error());
$num_row = mysqli_num_rows($query);

if ($num_row > 0){ ?>

<script>
window.location = "login";
</script>

<?php
}
$session_id = $_SESSION['logged_id'];
$queryy= mysqli_query($con, "select * from users where id ='$session_id'")or die(mysqli_error());
	$rowd = mysqli_fetch_array($queryy);
	$uid = $rowd['gencode'];
	$uxid = $rowd['email'];
	$fname =$rowd['name'];
?>