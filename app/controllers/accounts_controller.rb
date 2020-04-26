class AccountsController < ApplicationController
    def index
        @accounts = Account.all
        
    end

    def new
        @account = Account.new
    end
def create 
    @account = Account.new(account_params)
    if @account.save
        session[:account_id] = @account.id
        redirect_to root_url
    else
      render "new"
        end
    end

    def show 
        @account = Account.find(current_user.id)
        @posts = @account.posts
     
    end
   

private
def account_params
    params.require(:account).permit!
end

end