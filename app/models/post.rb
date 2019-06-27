class Post < ApplicationRecord
  belongs_to :destination
  belongs_to :blogger

  validates_length_of :content, :minimum => 100, :too_short => "please enter at least 100 characters"

end
