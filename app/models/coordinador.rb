class Coordinador < ApplicationRecord
	has_many :carreras, dependent: :restrict_with_error
end
