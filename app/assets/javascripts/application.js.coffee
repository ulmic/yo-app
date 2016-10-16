#= require jquery
#= require jquery_ujs
#= require foundation
#= require typed
#= require_tree .

$ ->
  $(document).foundation()
  $('textarea').each ->
    $(this).on 'focus', ->
      $(this).animate height: 300
    $(this).on 'focusout', ->
      $(this).animate height: 100
  $conversion_body = $('#conversion_body')
  if $conversion_body.length > 0
    $('#conversion_body_count').html "Символов: #{$conversion_body.val().length}"
    $conversion_body.on 'input', ->
      $('#conversion_body_count').html "Символов: #{$conversion_body.val().length}"
  $('#to_clipboard').click ->
    window.prompt $(this).data('clipboard-text')

  buttons = ['.arrow-down a', 'a.try-it']
  $(buttons).each ->
    $("#{this}").click (e) ->
      e.preventDefault()
      $('html body').animate {
        scrollTop: $($(this).data('href')).offset().top
      }, 1000
