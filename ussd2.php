<?php

require 'vendor/autoload.php'; //NB: MAKE SURE YOU HAVE THIS LINE OF CODE.

use AfricasTalking\SDK\AfricasTalking;

error_reporting(0);// dont show unecessary warnings.
//http://localhost/USSD/africas-time-ussd/ussd.php

//1. ensure this code runs only after a POST from AT
if(!empty($_POST)){
	require_once('dbConnector.php');
	require_once('AfricasTalkingGateway.php');
	require_once('config.php');

	//2. receive the POST from AT
	$sessionId=$_POST['sessionId'];
	$serviceCode=$_POST['serviceCode'];
	$phoneNumber=$_POST['phoneNumber'];
	$text=$_POST['text'];

	//3. Explode the text to get the value of the latest interaction - think 1*1
	$textArray=explode('*', $text);
	$userResponse=trim(end($textArray));

	//4. Set the default level of the user
	$level=0;

	//5. Check the level of the user from the DB and retain default level if none is found for this session
	$sql = "select level from session_levels where session_id ='".$sessionId." '";
	$levelQuery = $db->query($sql);
	if($result = $levelQuery->fetch_assoc()) {
  		$level = $result['level'];
	}

	//7. Check if the user is in the db
	$sql7 = "SELECT * FROM users WHERE phonenumber LIKE '%".$phoneNumber."%' LIMIT 1";
	$userQuery=$db->query($sql7);
	$userAvailable=$userQuery->fetch_assoc();

    //8. Check if user is available in database. (yes) -> Serve/Show the menu. (No)-> Register user.
    if ($userAvailable && $userAvailable['stack']!=NULL && $userAvailable['username']!=NULL){
        //9. Serve/Show the service menu

	 	//9.a Check that user actually typed something, else demote level and start at home
		if($userResponse==""){
			//10a. On receiving a Blank. Advise user to input correctly based on level
			switch ($level) {
				case 0:
					// l0 i.e. level 0
					//l0 . Graduate user to next level & serve main menu i.e. to level l (l1)
                    $sql_l0 = "INSERT INTO session_levels(session_id, phonenumber, level) VALUES('".$sessionId."', '$phoneNumber', 1)";
                    $db->query($sql_l0);

                    //Serve our service menu
                    $response = "CON Karibu ".$userAvailable['username']." Please choose a service.\n";
                    $response .= "1. Redeem airtime gift\n";
					$response .= "2. Buy Airtime\n";
					$response .= "3. Send Messages\n";
				    	

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			}
		}
		else{ //User typed something.
			switch ($level) {
			    case 0: //level 0
					// l0 i.e. level 0
					//l0 . Graduate user to next level & serve main menu i.e. to level l (l1)
					$sql_l0_ = "INSERT INTO session_levels(session_id, phonenumber, level) VALUES('".$sessionId."', '$phoneNumber', 1)";
					$db->query($sql_l0_);
				     
                    //Serve our service menu
                    $response = "CON Karibu ".$userAvailable['username']." Please choose a service.\n";
                    $response .= "1. Redeem airtime gift\n";
					$response .= "2. Buy Airtime\n";
					$response .= "3. Send Messages\n";
				    	
			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

				case 1: //level 1
					if($userResponse=="1"){//l1_c1 ... i.e. level 1 choice 1
						//l1_c1. Redeem airtime gift
						// Graduate user to next level & serve main menu i.e level 2 (l2)
						$sql_l1_c1 = "UPDATE session_levels SET level=2 WHERE session_id='".$sessionId."'";
						$db->query($sql_l1_c1);

						//Serve our service menu
						$response = "CON ".$userAvailable['username'].", Redeem airtime gift \n";
						$response .= " Enter secret code. i.e. xyz\n";	

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain');
						echo $response;	

					}
					else if($userResponse=="2"){//l1_c2 ... i.e. level 1 choice 2
						//l1_c2. Buy Airtime
						// Graduate user to next level & serve main menu i.e. level 2 (l2)
						$sql_l1_c2 = "UPDATE session_levels SET level=2 WHERE session_id='".$sessionId."'";
						$db->query($sql_l1_c2);

						$response = "CON Select.\n";
						$response .= "1. My phone number\n";
						$response .= "2. Other phone number\n";

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain');
						echo $response;	
					}
					elseif($userResponse=="3"){//l1_c3 ... i.e. level 1 choice 3
						//l1_c3 Send Messages.


					}
					else{
						$response = "CON Wrong choice... \n";
						$response .= "Press 0 to return to main menu. \n";

						// Demote user to previous level & serve main menu i.e. level 1 (l1)
						$sql_d_l1 = "UPDATE session_levels SET level=1 WHERE session_id='".$sessionId."'";
						$db->query($sql_d_l1);

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain');
						echo $response;	
					}
					break;

				case 2: //level 2
					if($userResponse=="1"){//l2_c1 ... i.e. level 2 choice 1
						//l2_c1. Buy Airtime for my number.
						// Graduate user to next level & serve main menu i.e. level 3 (l3)
						//$sql_l2_c1 = "INSERT INTO session_levels(session_id, phonenumber, level) VALUES('".$sessionId."', '$phoneNumber', 3)";
						$sql_l2_c1 = "UPDATE session_levels SET level=3 WHERE session_id='".$sessionId."'";
						$db->query($sql_l2_c1);

						//Serve our service menu
						$response = "END Dear ".$userAvailable['username'].", You've bought airtime successfully: \n";
						$response .= "Please wait\n";	

						// Initialize the SDK
						$AT = new AfricasTalking($username, $apikey); //reference username and apikey from the config.php file
					
					
						// Get the airtime service
						$airtime  = $AT->airtime();
					
						// Set the phone number, currency code and amount in the format below
						$recipients = [[
							"phoneNumber"  => $phoneNumber,
							"currencyCode" => "KES",
							"amount"       => 5
						]];
					
						try {
							// That's it, hit send and we'll take care of the rest
							$results = $airtime->send([
								"recipients" => $recipients
							]);
					
							#print_r($results);
							$response .= "Successfully sent airtime."; 
						} catch(Exception $e) {
							#echo "Error: ".$e->getMessage();
							$response .= "Failed to send airtime."; 
						}

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain');
						echo $response;	
					}

					else if($userResponse=="2"){//l2_c2 ... i.e. level 2 choice 2
						//l1_c2. Buy Airtime for another number.
						// Graduate user to next level {i.e. level 3 (l3)} & serve main menu 
						$sql_l2_c2 = "UPDATE session_levels SET level=3 WHERE session_id='".$sessionId."'";
						$db->query($sql_l2_c2);

						$response = "CON Please.\n";
						$response .= " Enter the phone number\n";

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain'); 
						echo $response;	
					}
					else if($userResponse=="xyz"){//l2_cxyz ... i.e. level 2 choice 2
						//l1_cxyz. Buy Airtime for another number.

						//Serve our service menu
						$response = "END Dear ".$userAvailable['username'].", You've redeemed airtime.\n";
						$response .= "Please wait\n";	

						// Initialize the SDK
						$AT = new AfricasTalking($username, $apikey); //reference username and apikey from the config.php file
					
					
						// Get the airtime service
						$airtime  = $AT->airtime();
					
						// Set the phone number, currency code and amount in the format below
						$recipients = [[
							"phoneNumber"  => $phoneNumber,
							"currencyCode" => "KES",
							"amount"       => 5
						]];
					
						try {
							// That's it, hit send and we'll take care of the rest
							$results = $airtime->send([
								"recipients" => $recipients
							]);
					
							#print_r($results);
							$response .= "Successfully sent airtime."; 
						} catch(Exception $e) {
							#echo "Error: ".$e->getMessage();
							$response .= "Failed to send airtime. Try again."; 
						}

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain'); 
						echo $response;	
					}
					else{
						$response = "CON Wrong choice... \n";
						$response .= "Press 0 to return to main menu. \n";

						// Demote user to previous level & serve main menu i.e. level 1 (l1)
						$sql_d_l1 = "UPDATE session_levels SET level=1 WHERE session_id='".$sessionId."'";
						$db->query($sql_d_l1);

						// Print the response onto the page so that our gateway can read it
						header('Content-type: text/plain');
						echo $response;	
					}


					break;
			}
		}

    }
    else{
		//10. Register the user
		if($userResponse==""){
			//10a. On receiving a Blank. Advise user to input correctly based on level
			switch ($level) {
			    case 0:
				    //10b. Graduate the user to the next level, so you dont serve them the same menu
				     $sql10b = "INSERT INTO session_levels(session_id, phoneNumber,level) VALUES('".$sessionId."','".$phoneNumber."', 1)";
				     $db->query($sql10b);

				     //10c. Insert the phoneNumber, since it comes with the first POST
				     $sql10c = "INSERT INTO users(phonenumber) VALUES ('".$phoneNumber."')";
				     $db->query($sql10c);

				     //10d. Serve the menu request for name
				     $response = "CON Please enter your name";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    case 1:
			    	//10e. Request again for name
        			$response = "CON Name not supposed to be empty. Please enter your name \n";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    case 2:
			    	//10f. Request fir stack again
					$response = "CON Stack not supposed to be empty. Please reply with your stack \n";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    default:
			    	//10g. Request fir stack again
					$response = "END Apologies, something went wrong... \n";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;
			}
		}else{
			//11. Update User table based on input to correct level
			switch ($level) {
			    case 0:
				     //11a. Serve the menu request for name
				     $response = "END This level should not be seen...";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    case 1:
			    	//11b. Update Name, Request for stack
			        $sql11b = "UPDATE users SET username='".$userResponse."' WHERE phonenumber LIKE '%". $phoneNumber ."%'";
			        $db->query($sql11b);

			        //11c. We graduate the user to the stack level
			        $sql11c = "UPDATE session_levels SET level=2 WHERE session_id='".$sessionId."'";
			        $db->query($sql11c);

			        //We request for the stack
			        $response = "CON Please enter your stack";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    case 2:
			    	//11d. Update stack
			        $sql11d = "UPDATE users SET stack='".$userResponse."' WHERE phonenumber = '". $phoneNumber ."'";
			        $db->query($sql11d);

			    	//11e. Change level to 0
		        	$sql11e = "INSERT INTO session_levels(session_id,phoneNumber,level) VALUES('".$sessionId."','".$phoneNumber."',1)";
		        	$db->query($sql11e);   

			    	//11f. Serve services menu...
                    //Serve our service menu
                    $response = "CON Karibu ".$userAvailable['username']." Please choose a service.\n";
                    $response .= "1. Redeem airtime gift\n";
					$response .= "2. Buy Airtime\n";
					$response .= "3. Send Messages\n";			    	

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;

			    default:
			    	//11g. Request for stack again
					$response = "END Apologies, something went wrong... \n";

			  		// Print the response onto the page so that our gateway can read it
			  		header('Content-type: text/plain');
 			  		echo $response;	
			        break;
			}			
		}
	}
}

?>