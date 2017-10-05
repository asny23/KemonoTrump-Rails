window.addEventListener("load", function() {
  $('#submit_button').on("click", function() {
    var newurl =
      location.href.replace(/\/?\?.*$/, '') +
      $('#select_suit').val() + $('#select_number').val() +
      '/' + $('#select_friends').val();
    window.location.href = newurl;
  });
}, false);
