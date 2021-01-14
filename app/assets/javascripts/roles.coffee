# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_rol').validate
		rules:
			'rol[rol]':
				required: true
				minlength: 3
				maxlength: 20
			'rol[descripcion]':
				required: true
				minlength: 3
				maxlength: 40
			'rol[zonaEstacionamiento]':
				required: true
				minlength: 1
				maxlength: 1
			'rol[fechaIngreso]':
				required: true
				date: true
			'rol[horaIngreso]':
				required: true
				minlength: 5
				maxlength: 5
			'rol[edificio_id]':
				required: true
		messages:
			'rol[rol]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 20'
			'rol[descripcion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 40'
			'rol[zonaEstacionamiento]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 1'
				maxlength: 'Tamaño máximo 1'
			'rol[fechaIngreso]':
				required: 'Campo requerido'
				date: 'Formato de fecha'
			'rol[horaIngreso]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 5'				
			'rol[edificio_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
