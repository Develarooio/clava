class Climb < ApplicationRecord
  belongs_to :route
  has_many :s3_file_references, as: :file_referable
end
