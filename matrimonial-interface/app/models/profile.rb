class Profile < ApplicationRecord
    validates :name, :age, :gender, :location, :job, :salary, :religion, :about, :interests, presence: true
    belongs_to :user, class_name: "User", foreign_key: "user_id"
end
