class User < ApplicationRecord
    has_secure_password
    validates_uniqueness_of :email
    has_one :profile
    has_many :images
    after_create :build_profile

    def build_profile
        Profile.create(user: self)
    end
end
