$ ->
  $submit_button = $('.new_conversion input[type=submit]')
  $('#we_dont_save_texts').hide()
  $submit_button.click ->
    $('#we_dont_save_texts').show()
  $submit_button.prop 'disabled', 'disabled'
  $('.new_conversion textarea').on 'input', ->
    $submit_button.prop 'disabled', $(this).val().length == 0
