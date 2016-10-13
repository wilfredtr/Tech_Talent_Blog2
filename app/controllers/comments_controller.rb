class CommentsController < ApplicationController
  
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

  def edit
  end

  def create
    	@comment = Comment.new(comment_params)

    	respond_to do |format|
    	   if @comment.save
    			format.html { redirect_to blog_post_path(id: @comment.blog_post_id), notice: "comment was created successfully." }
    	   else
    			format.html { redirect_to :edit }
    		 end
      end
  end
    		
  def update
    respond_to do |format|
      if @comment.update(comment_params)
    	format.html {redirect_to blog_post_path(id: @comment.blog_post_id), notice: "Comment was updated successfully"}
    	else
      format.html { redirect_to :edit }
     end		
    end		
  end
  	def destroy
  		@comment.destroy
  		respond_to do |format|
  			format.html {redirect_to blog_post_path(id: @comment.blog_post_id), notice: "Your comment was destroyed"}
      end
    end

  private

  def comment_params
  	params.require(:comment).permit(:author, :comment_entry, :blog_post_id)
  end	
  def set_comment
  	@comment = Comment.find(params[:id])
  end

end
