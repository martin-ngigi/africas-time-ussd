<?php
//connection credentials
$servername = 'localhost';
$username ='root';
$password ='';
$database = 'africas_time_db';
$dbport = 3306;

//create connection
$db = new mysqli($servername, $username, $password, $database, $dbport);

//check connection
if($db->connect_error){
    header('Content-Type: text/plain');
    //log error to file/db $e->getMessage()
    die("END An error occurred. Please try again");
}
// else{
//     echo "Connection established successfully.";
// }

//url -> http://localhost/USSD/africas-time-ussd/dbConnector.php
?>