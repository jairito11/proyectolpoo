# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_prestamo').validate
		rules:
			'prestamo[fechaPrestamo]':
				required: true
				date: true
			'prestamo[horaPrestamo]':
				required: true
				minlength: 5
				maxlength: 5
			'prestamo[tipo]':
				required: true
				minlength: 5
				maxlength: 40
			'prestamo[fechaEntrega]':
				required: true
				date: true
			'prestamo[horaEntrega]':
				required: true
				minlength: 5
				maxlength: 5
			'prestamo[libro_id]':
				required: true
			'prestamo[persona_id]':
				required: true
		messages:
			'prestamo[fechaPrestamo]':
				required: 'Campo requerido'
				date: 'Ingresa formato de fecha'
			'prestamo[horaPrestamo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 5'
			'prestamo[tipo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 40'
			'prestamo[fechaEntrega]':
				required: 'Campo requerido'
				date: 'Ingresa formato de fecha'
			'prestamo[horaEntrega]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 5'
			'prestamo[libro_id]':
				required: 'Campo requerido'
			'prestamo[persona_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)