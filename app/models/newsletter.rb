class Newsletter < ActiveRecord::Base

  validates :email, uniqueness: true
end
