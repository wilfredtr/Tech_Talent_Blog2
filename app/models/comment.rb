class Comment < ActiveRecord::Base

  belongs_to :blog_post

  validates :comment_entry, :blog_post_id, presence:true
  
end
