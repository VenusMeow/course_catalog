class Course < ApplicationRecord
  belongs_to :subject
  has_many :enrollments
end
