$(document).ready(function () {
  $(".messages").animate({
    scrollTop: $('.messages').get(0).scrollHeight
  }, 0);
  $("#search").click(function (e) {
    //e.preventDefault();
    $("#search").css('background', 'none');
    $(".fa-paper-plane").addClass("hide");
    $(".dot-img").removeClass("hide");
    setTimeout(function () {
      $("#search").css('background', '#25D366');
      $(".fa-paper-plane").removeClass("hide");
      $(".dot-img").addClass("hide");
    }, 6000);
  });
  $(function () {
    $("#form1").submit(function (event) {
      event.preventDefault();
      $.ajax({
        url: 'http://localhost/chat_boat/config/api.php',
        type: 'POST',
        data: $(this).serialize(),
        success: function (result) {
          $(".message-input").val("");
          //console.log(result);
          $(".ajax-response").append(result);
          $(".messages").animate({
            scrollTop: $('.messages').get(0).scrollHeight
          }, 0);
        }

      });
    });
  });
});