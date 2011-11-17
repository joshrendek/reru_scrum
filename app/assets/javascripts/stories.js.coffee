# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ($) ->
  $('[id^=story_]').click ->
    $( "#" +  $(this).attr("id") + "_loader")
      .load('/projects/' + $(this).attr('project_id') +
      '/story_types/' + $(this).attr('story_type_id') +
      '/stories/'+ $(this).attr('story_id') + '/tasks/new')
