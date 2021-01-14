# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_libro').validate
		rules:
			'libro[titulo]':
				required: true
				minlength: 13
		messages:
			'libro[titulo]':
				required: 'Titulo requerido'
				minlength: 'Minimo 13 Caracteres'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
