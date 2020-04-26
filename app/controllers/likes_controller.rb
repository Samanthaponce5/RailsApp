class LikesController < ApplicationController

    def new 
        @like = Like.new
    end

    def create 
        @post = Post.find(params[:id])
        @account.id = current_user.id 
        @like = Like.new(like_params)
       
        if  @like.save
            respond_to do |format|
              format.html { redirect_to root_path }
              format.js
            end
    end

    

end
