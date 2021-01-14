# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_idioma').validate
		rules:
			'idioma[nombre]':
				required: true
				minlength: 3
				maxlength: 30
			'idioma[region]':
				required: true
				minlength: 3
				maxlength: 50
			'idioma[hablantes]':
				required: true
				digits: true
			'idioma[puesto]':
				required: true
				digits: true
			'idioma[familia]':
				required: true
				minlength: 3
				maxlength: 50
			'idioma[dialectos]':
				required: true
				minlength: 3
				maxlength: 50
			'idioma[escritura]':
				required: true
				minlength: 3
				maxlength: 50
			'idioma[asociacion_id]':
				required: true
		messages:
			'idioma[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'idioma[region]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'idioma[hablantes]':
				required: 'Campo requerido'
				digits: 'Solo números'
			'idioma[puesto]':
				required: 'Campo requerido'
				digits: 'Solo números'
			'idioma[familia]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'idioma[dialectos]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'idioma[escritura]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'idioma[asociacion_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)