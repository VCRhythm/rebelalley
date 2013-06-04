# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	audioLoad = (audioNum, audioBox) ->
		audioBox.attr 'src', '/assets/'+audioSource[audioNum]+'.mp3#t='+audioStart[audioNum]+','+audioEnd[audioNum]

	audioPlay = (audioBox) ->
		audioBox.trigger 'play'
		a++

	audioPreload = (audioBox) ->
		if a < audioCount
			audioLoad a, audioBox
	
	audioNext = ->
		audioPlay $audio2
		audioPreload $audio
		
	videoPlay = (videoNum) ->
		$video.attr "src", '/assets/'+videoSource[videoNum]+'.webm#t='+videoStart[videoNum]+','+videoEnd[videoNum]
		$video.load

	videoNext = ->
		v++
		if v < videoCount
			videoPlay v
		else
			$('#videoCanvas').toggle()
	v=0
	a=0
	$video=$("#myVideo")
	$audio=$("#myAudio")
	$audio2=$("#myAudio2")
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
	audioLoad 0, $audio
	audioPlay $audio 
	audioPreload $audio2
	$video.bind "pause", videoNext
	$audio.bind "pause", audioNext 
#	$("#myAudio2").bind "pause", audioNext 1
