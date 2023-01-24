<?php

require 'vendor/autoload.php';

use AfricasTalking\SDK\AfricasTalking;

//https://9382-105-231-187-43.in.ngrok.io/USSD/africas-time-ussd/sendAirtime.php

// $apiKey = getenv("API_KEY");

    $username = "sandbox";
    $apiKey   = "d47093b1c6de8ef2edab76904dd2ea18b06cb622a0f39bb0917fc9d106067839";

    // Initialize the SDK
    $AT = new AfricasTalking($username, $apiKey);


    // Get the airtime service
    $airtime  = $AT->airtime();

    // Set the phone number, currency code and amount in the format below
    $recipients = [[
        "phoneNumber"  => "+254797292290",
        "currencyCode" => "KES",
        "amount"       => 100
    ]];

    try {
        // That's it, hit send and we'll take care of the rest
        $results = $airtime->send([
            "recipients" => $recipients
        ]);

        print_r($results);
    } catch(Exception $e) {
        echo "Error: ".$e->getMessage();
    }
?>