class S3FileReference < ApplicationRecord
  belongs_to :file_referable, polymorphic: true
end
