<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Chatbot</title>
  <link rel="shortcut icon" href="https://cdn-icons-png.flaticon.com/512/1698/1698535.png" type="image/x-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" />
   <link rel="stylesheet" href="./css/style.css">
</head>
<body>
  <div class="container">
    <div class="header">
      <img src="https://cdn-icons-png.flaticon.com/512/1698/1698535.png" alt="Chatbot Logo">
      <h1> <span style="color: skyblue;padding-right: 1rem;"> Chatbot! </span> Ask like an AI</h1>
    </div>
    <div class="chat-box">
      <div class="messages">
        <?php
        include('../config/db.php');
        $sql = "SELECT * FROM `chat_data`";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          while ($row = $result->fetch_assoc()) {

        ?>
            <div class="message sent">
              <div class="avatar"><img src="https://randomuser.me/api/portraits/women/24.jpg" alt="User Avatar"></div>
              <div class="text"><?= $row["message_send"] ?></div>
              <div class="time"><?= $row["send_date"] ?></div>
            </div>
            <div class="message received">
              <div class="avatar"><img src="https://cdn-icons-png.flaticon.com/512/1698/1698535.png" alt="User Avatar"></div>
              <div class="text"><?= $row["message_recived"] ?></div>
              <div class="time"><?= $row["recived_date"] ?></div>
            </div>
        <?php
          }
        } else {
          echo "0 results";
        }
        $conn->close();
        ?>
        <div class="ajax-response">
        </div>
      </div>
      <form action="" method="post" id="form1">
        <div class="input-box">
          <input type="text" class="message-input" name="question" placeholder="Type your message..." required>
          <button type="submit" class="send-button" name="search" id="search"><i class="fa fa-paper-plane"></i><img src="./img/dots-loading.gif" class="dot-img hide"> </button>
        </div>
      </form>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
  <script src="./js/app.js"></script>
</body>

</html>