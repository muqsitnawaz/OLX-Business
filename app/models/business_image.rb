class BusinessImage < ActiveRecord::Base
  belongs_to :business
  
  mount_uploader :image, ImageUploader
end
