# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	syncAudio = ->
		$audio.play

	audioPlay = (audioNum) ->
		$audio.attr "src", '/assets/'+audioSource[audioNum]+'.mp3#t='+audioStart[audioNum]+','+audioEnd[audioNum]	
		$audio.load
		syncAudio

	audioNext = ->
		a++
		if a < videoCount
			audioPlay a
		
	videoPlay = (videoNum) ->
		$video.attr "src", '/assets/'+videoSource[videoNum]+'.webm#t='+videoStart[videoNum]+','+videoEnd[videoNum]
		$video.load

	videoNext = ->
		v++
		if v < videoCount
			videoPlay v
	v=0
	a=0
	$video=$("#myVideo")
	$audio=$("#myAudio")
	videoCount = $("#clips").data 'length'
	audioCount = $("#audio_clips").data 'length'
	videoSource = new Array()
	videoStart = new Array()
	videoEnd = new Array()
	audioSource = new Array()
	audioStart = new Array()
	audioEnd = new Array()
	for r in [0..videoCount-1]
		$videoURL=$('#vidUrl'+r)
		videoSource[r]=$videoURL.html()
		videoStart[r]=$videoURL.data 'start'
		videoEnd[r]=$videoURL.data 'end'
	for r in [0..audioCount-1]
		$audioURL=$('#audUrl'+r)
		audioSource[r]=$audioURL.html()
		audioStart[r]=$audioURL.data 'start'
		audioEnd[r]=$audioURL.data 'end'
	videoPlay 0
	audioPlay 0
	$("#myVideo").bind "pause", videoNext
	$("#myAudio").bind "pause", audioNext
