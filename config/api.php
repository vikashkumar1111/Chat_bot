<?php
include('./db.php');
if (isset($_POST['question'])) {
  $curl = curl_init();
  $str = $_POST['question'];
  $postdata = array(
    "model" => "text-davinci-003",
    "prompt" => $str,
    "temperature" => 0,
    "max_tokens" => 500
  );
  $postdata = json_encode($postdata);
  curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://api.openai.com/v1/completions',
    CURLOPT_RETURNTRANSFER => true,
    CURLOPT_ENCODING => '',
    CURLOPT_MAXREDIRS => 10,
    CURLOPT_TIMEOUT => 0,
    CURLOPT_FOLLOWLOCATION => true,
    CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $postdata,
    CURLOPT_HTTPHEADER => array(
      'Content-Type: application/json',
      'Authorization: Bearer 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'
    ),
  ));

  $response = curl_exec($curl);
  curl_close($curl);
  //echo $response;
  $result = json_decode($response, true);
  $newdate = date('Y-m-d');
  if (array_key_exists("error", $result)) {
    echo "Key exists!";
    $message = "Oops!  We ran into an issue in :" . $result['error']['message'];
  } else {
    //echo "Key does not exist!";
    $message = $result['choices'][0]['text'];
  }
  //exit;
  $botreply = array("answer" => $message, "recived_date" => $newdate);
  // Prepare and bind statement
  $stmt = $conn->prepare("INSERT INTO chat_data (message_send,send_date, message_recived, recived_date) VALUES (?, ?, ?,?)");
  $stmt->bind_param("ssss", $message_send, $send_date, $message_recived, $recived_date);

  // Set parameters and execute
  $message_send = $_POST['question'];
  $send_date = date('Y-m-d');
  $message_recived = $botreply['answer'];
  $recived_date = $botreply['recived_date'];
  $stmt->execute();
  $stmt->close();
?>

  <div class="message sent">
    <div class="avatar"><img src="https://randomuser.me/api/portraits/women/24.jpg" alt="User Avatar"></div>
    <div class="text"><?= $message_send; ?></div>
    <div class="time"><?= $send_date ?></div>
  </div>
  <div class="message received">
    <div class="avatar"><img src="https://cdn-icons-png.flaticon.com/512/1698/1698535.png" alt="User Avatar"></div>
    <div class="text"><?= $message_recived ?></div>
    <div class="time"><?= $recived_date ?></div>
  </div>

<?php
}
?>