class Post < ApplicationRecord
    belongs_to :city 
    belongs_to :user
    validates_length_of :review, :maximum => 200
    validates_length_of :review, :minimum => 1
end
