<?php
require_once( 'mysqlConnect.php');

$query = "SELECT td.ID AS todoID, td.title, td.description, td.dueDate, td.owner, 
tu.username AS todoOwner
	FROM todoData AS td
	JOIN todoUsers AS tu 
		ON td.owner = tu.ID
	WHERE td.status = 'active'";

$result = mysqli_query($conn, $query);

$output = [
	'success' => false,
	'errors' => [], 
	'data' => []
];

if($result){  //if the query didn't screw up
	if(mysqli_num_rows($result)>0){  //if there was data in the query result
		while( $row = mysqli_fetch_assoc($result)){ //go through each one and grab the data
			$output['data'][] = $row;  //push it into an array
			$output['success'] = true;
		}
	} else {
		$output['errors'][] = 'NO DATA AVAILABLE!';
	}
} else {
	//array_push($output['errors'], 'Error in database query!');
	$output['errors'][] = 'Error in database query!';
}

$json_output = json_encode($output);

print($json_output);
?>










