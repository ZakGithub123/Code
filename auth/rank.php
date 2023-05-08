<?php


include 'db.php';
	
	
	session_start();
	if(count($_POST['correct_answers']) > 0){
	    $correct_qus=json_encode($_POST['correct_answers']);
	    $email=$_SESSION['email'];
	    $corrent_count=$_POST['correct_count'];
			
	$sql = "INSERT INTO `ranking`( `correct_qus`, `email`, `corrent_count`) 
			VALUES ('$correct_qus','$email', '$corrent_count')";
			if (mysqli_query($conn, $sql)) {
				echo json_encode(array("statusCode"=>200));
			}
	}
	