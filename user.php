<?php
include("connect.php");
session_start();
extract($_POST);
if(isset($_POST['btn']))
{
    $pass = md5($password);
    $username=$_POST['username'];
    $password=$_POST['password'];
    

    $q="select * from login where username='$username'";

 
    $res=$conn->query($q);
    $num=mysqli_num_rows($res);
     $row=$res->fetch_assoc();
     if(!empty($row)){ 
    $rid=$row['r_id'];

    $q2 = "select sem, branch from student where id= $rid";


    $res2=$conn->query($q2);

    $row2=$res2->fetch_assoc();

    if($num>0)
    {
        
        $_SESSION['user_id']=$row['r_id'];
        $_SESSION['user_name']=$row['username'];
        $_SESSION['user_sem']=$row2['sem'];
        $_SESSION['user_branch']=$row2['branch'];
        $_SESSION['user_email']=$row2['email'];
        if($row['password']== $pass)
        {
            
            header('location:home.php');

        } 
        else
		{
?>
			<script>
				alert('Invalid User And Password');
				window.location='login.php';
			</script>
	<?php
		
		}
	}
}
 else
	{
	?>
	<script>
		alert('Invalid User And Password');
		window.location='login.php';
	</script>
	<?php
		
	}

}

?>