<?php 

function getConnection() {

$hostname = 'localhost';

$username = 'root';

$password= '';

$database = 'portfolio_database';

$port = 3306;

return mysqli_connect($hostname, $username, $password, $database, $port);

}
?>