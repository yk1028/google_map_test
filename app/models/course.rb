class Course < ApplicationRecord
  has_many :places, dependent: :destroy
end
