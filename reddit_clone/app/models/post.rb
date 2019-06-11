class Post < ApplicationRecord
  validates :title, :content, :sub_id, :author_id, presence: true
  validates :sub_id, :author_id, uniqueness: true

  belongs_to :sub,
  foreign_key: :sub_id,
  class_name: :Sub

  belongs_to :author,
  foreign_key: :author_id,
  class_name: :User

  has_many :posts,
  foreign_key: :sub_id,
  class_name: :Post
 
  has_many :post_subs

end
