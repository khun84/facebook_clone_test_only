class User < ActiveRecord::Base

    validates :name, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: {case_sensitive: true}, format: {with:/\@\w{2,}\./}
    validates :password, presence: true, allow_nil: true, length: {in: 6..20}
    validates :password_confirmation, presence: true

    has_many :likes, dependent: :destroy
    has_many :statuses, dependent: :destroy

    has_secure_password
end
