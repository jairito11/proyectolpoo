# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_asociacion').validate
		rules:
			'asociacion[codigo]':
				required: true
				minlength: 5
				maxlength: 5
			'asociacion[acronimo]':
				required: true
				minlength: 5
				maxlength: 50
			'asociacion[genero]':
				required: true
				minlength: 5
				maxlength: 50
			'asociacion[objetivos]':
				required: true
				minlength: 5
				maxlength: 50
			'asociacion[fundacion]':
				required: true
				date: true
			'asociacion[fundador]':
				required: true
				minlength: 5
				maxlength: 50
			'asociacion[sede]':
				required: true
				minlength: 5
				maxlength: 50
			'asociacion[operacion]':
				required: true
				minlength: 5
				maxlength: 50
		messages:
			'asociacion[codigo]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 5'
			'asociacion[acronimo]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'asociacion[genero]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'asociacion[objetivos]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'asociacion[fundacion]':
				required: 'Campo requerido'
				date: 'Utiliza formato de fecha'
			'asociacion[fundador]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'asociacion[sede]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'asociacion[operacion]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)