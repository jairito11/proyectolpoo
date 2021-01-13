class Especialidad < ApplicationRecord
	belongs_to :carrera
	has_many :personas
end
