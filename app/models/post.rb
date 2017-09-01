class Post < ApplicationRecord
    belongs_to :city
    #############################################################################
    # validates the length of the review to a minimum of 1 word and max of 200  #
    #############################################################################
    validates_length_of :review, :maximum => 200
    validates_length_of :review, :minimum => 1
end
