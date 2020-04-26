class CommentsController < ApplicationController
 
    def new 
        @comment = Comment.new
    end
    def create
        
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_params)
       
        @comment.account_id = current_user.id
        if @comment.save
            respond_to do |format|
              format.html { redirect_to root_path }
              format.js
            end
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
            redirect_to post_path(@post)
    
    end

    private
    def comment_params
        params.require(:comment).permit!
    end

end
