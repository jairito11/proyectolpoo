class Especialidad < ApplicationRecord
	belongs_to :carrera
	has_many :personas, dependent: :restrict_with_error
end
