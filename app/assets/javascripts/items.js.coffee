# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$('.item-add').change ->
		@content = $(this).val()
		@category = $(this).data 'category'
		$.post 'items',
			item: {content: @content, category: @category}
			(data) => 
				$('#question-text').text "Thanks for your input!"
				$('#question-text').css 'color', 'green'
#				$('.'+@category+'-list').append "<button class='survey2 "+@category+"-item btn btn-info' type='button' data-rank='0' data-id='0'></button>"
		$(this).val null
