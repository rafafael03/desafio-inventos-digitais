# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$(".see-more").click ->
		$('html, body').animate
			scrollTop: $("#user-list").offset().top, 1000

	$("#call-to-action input[type=submit]").click ->
		if !$("input[type=checkbox]").is ":checked"
			$('html, body').animate
				scrollTop: $("body").offset().top, 100

			$(".alert").hide().show 200

			return false