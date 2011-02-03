class Document < ActiveRecord::Base
  attr_accessible :date_at, :memo

  has_attached_file :attachment, :path => 'documents/:id/:style.:extension',
                                 :storage => :s3,
                                 :s3_credentials => S3_CREDENTIALS,
                                 :s3_permissions => 'private'

  validates :date_at, :presence => true
end
