# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	videoPlay = (videoNum) ->
		$("#myVideo").attr "src", '/assets/'+videoSource[videoNum]+'.ogg#t='+videoStart[videoNum]+','+videoEnd[videoNum]
		$("#myVideo").load

	videoNext = ->
		i++
		if i<videoCount
			videoPlay i
	i=0
	$video=$("#myVideo")
	videoCount = $("#clips").data 'length'
	videoSource = new Array()
	videoStart = new Array()
	videoEnd = new Array()
	for r in [0..videoCount-1] by 1
		videoSource[r]=$("#vidUrl"+r).html()
		videoStart[r]=$("#vidUrl"+r).data 'start'
		videoEnd[r]=$("#vidUrl"+r).data 'end'
	videoPlay 0
	$("#myVideo").bind "pause", videoNext
