class Receipt < ActiveRecord::Base
  attr_accessible :date_at, :payee, :memo, :amount

  has_attached_file :attachment, :path => 'receipts/:id/:style.:extension',
                                 :storage => :s3,
                                 :s3_credentials => S3_CREDENTIALS,
                                 :s3_permissions => 'private'

  with_options :presence => true do |x|
    x.validates :date_at
    x.validates :payee
    x.validates :amount
  end
end
