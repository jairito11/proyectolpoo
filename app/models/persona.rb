class Persona < ApplicationRecord
	has_many :prestamos, dependent: :restrict_with_error
	belongs_to :rol
	belongs_to :especialidad
end
