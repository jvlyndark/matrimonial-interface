class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email
    has_one :user_profile
    has_many :images
end
