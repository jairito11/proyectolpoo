class Libro < ApplicationRecord
	belongs_to :autor
	belongs_to :editorial
	belongs_to :genero
	belongs_to :idioma
	has_many :prestamos, dependent: :restrict_with_error
end
