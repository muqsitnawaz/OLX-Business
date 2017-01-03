class Business < ActiveRecord::Base
  belongs_to :user
  validates_associated :user
  
  include SearchCop

  search_scope :search do
    attributes :name, :industry
  end
end
