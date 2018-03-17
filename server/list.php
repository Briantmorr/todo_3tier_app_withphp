<?php
require_once( 'mysqlConnect.php');

$query = "SELECT td.ID AS todoID, td.title, td.description, td.dueDate, td.owner, 
tu.username AS todoOwner
	FROM todoData AS td
	JOIN todoUsers AS tu 
		ON td.owner = tu.ID
	WHERE td.status = 'active'";

$result = mysqli_query($conn, $query);


?>