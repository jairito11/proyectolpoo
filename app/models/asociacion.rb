class Asociacion < ApplicationRecord
	has_many :idiomas, dependent: :restrict_with_error
end
