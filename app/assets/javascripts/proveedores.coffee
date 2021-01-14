# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_proveedor').validate
		rules:
			'proveedor[codigo]':
				required: true
				minlength: 10
				maxlength: 10
			'proveedor[tipo]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[industria]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[formaLegal]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[fundacion]':
				required: true
				minlength: 4
				maxlength: 4
				number: true
			'proveedor[servicio]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[matriz]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[sitioweb]':
				required: true
				minlength: 5
				maxlength: 50
			'proveedor[empleados]':
				required: true
				number: true
			'proveedor[presidente_id]':
				required: true
		messages:
			'proveedor[codigo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 10'
				maxlength: 'Tamaño máximo 10'
			'proveedor[tipo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[industria]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[formaLegal]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[fundacion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 4'
				maxlength: 'Tamaño máximo 4'
				number: 'Indica el año de fundación YYYY'
			'proveedor[servicio]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[matriz]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[sitioweb]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'proveedor[empleados]':
				required: 'Campo requerido'
				number: 'Usa solo numeros'
			'proveedor[presidente_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)