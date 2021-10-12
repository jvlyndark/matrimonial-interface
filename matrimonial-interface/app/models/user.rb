class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    has_secure_password
    validates :email, presence: true, uniqueness: { case_sensitive: false }, format: {with: VALID_EMAIL_REGEX}
    has_one :profile
    has_many :images
    after_create :build_profile

    def build_profile
        Profile.create(user: self)
    end
end
