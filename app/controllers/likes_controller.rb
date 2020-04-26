class LikesController < ApplicationController

    def new 
        @like = Like.new
    end

    def create 
        @post = Post.find(params[:id])
        @account.id = current_user.id 
        @like = Like.new(like_params)
       
          @like.save
          
    end

    

end
