$ ->
  $('#we_need_save').hide()
  $('.errors-exists').click ->
    if $('#we_need_save').css('display') == 'none'
      $('#we_need_save').slideDown()
    else
      $('#we_need_save').slideUp()
  $('.hide-callout').click ->
    $('#we_need_save').slideUp()
