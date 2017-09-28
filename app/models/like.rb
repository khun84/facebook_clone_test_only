class Like < ActiveRecord::Base
    belongs_to :user
    belongs_to :status

    validates :status_id, presence: true, uniqueness: {scope: :user_id, message:  'You liked before!'}
    validates :user_id, presence: true
end
