# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $(".analyzer-form").on "ajax:success", (event, data, status, xhr) ->
    percentage = data.percentage
    color = switch
      when percentage < 0 then "red"
      when percentage > 0 then 'green'
      else 'gray'

    $(@).children(".percentage-div").html("<span style='color: #{color}'>#{percentage}%")