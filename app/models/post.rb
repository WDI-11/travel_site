class Post < ApplicationRecord
<<<<<<< HEAD
    belongs_to :city 
    belongs_to :user
=======
    belongs_to :city
>>>>>>> dev
    validates_length_of :review, :maximum => 200
    validates_length_of :review, :minimum => 1
end
