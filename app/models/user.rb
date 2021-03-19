class User < ApplicationRecord

  has_many :user_locations, :dependent => :destroy

end
