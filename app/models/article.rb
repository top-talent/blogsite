class Article < ApplicationRecord
  has_many :comments
  belongs_to :creator, foreign_key: :created_by, class_name: 'User'

end
