class Business < ActiveRecord::Base
  include SearchCop

  search_scope :search do
    attributes :name, :industry
  end
  
  belongs_to :user
  has_many :business_images
  accepts_nested_attributes_for :business_images
  
  validates_associated :user
end
