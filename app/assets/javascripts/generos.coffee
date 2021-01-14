# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_genero').validate
		rules:
			'genero[genero]':
				required: true
				minlength: 3
				maxlength: 10
			'genero[subgenero]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[descripcion]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[semantica]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[sintactica]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[fonologia]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[contexto]':
				required: true
				minlength: 3
				maxlength: 30
			'genero[historia]':
				required: true
				minlength: 3
				maxlength: 60
		messages:
			'genero[genero]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 10'
			'genero[subgenero]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[descripcion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[semantica]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[sintactica]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[fonologia]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[contexto]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'genero[historia]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 60'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)