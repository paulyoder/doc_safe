class Document < ActiveRecord::Base
  has_attached_file :attachment, 
                      :path => ':attachment/:id/:style.:extension',
                      :storage => :s3,
                      :s3_credentials => S3_CREDENTIALS

  validates :date_at, :presence => true
  validates_attachment_size :attachment, :less_than => 2.megabytes
end
