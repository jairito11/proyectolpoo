class Persona < ApplicationRecord
	has_many :prestamos
	belongs_to :rol
	belongs_to :especialidad
end
