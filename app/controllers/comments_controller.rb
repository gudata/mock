class CommentsController < ApplicationController
  protect_from_forgery
  
  def create
    @category = Category.find(params[:category_id])
    
    @comment = @category.comments.build(params[:comment])
    
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Comment was successfully posted.' }
        format.js
      else
        # TODO handle errors in the right way - show nice msg in js and html mode.
      end
    end
  end
end