# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_especialidad').validate
		rules:
			'especialidad[clave]':
				required: true
				number: true
			'especialidad[nombre]':
				required: true
				minlength: 3
				maxlength: 30
			'especialidad[descripcion]':
				required: true
				minlength: 3
				maxlength: 30
			'especialidad[carrera_id]':
				required: true
		messages:
			'especialidad[clave]':
				required: 'Campo requerido'
				number: 'Solo datos númericos'
			'especialidad[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'especialidad[descripcion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'especialidad[carrera_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)