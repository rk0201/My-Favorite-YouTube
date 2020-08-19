class HomeController < ApplicationController
    def index
     redirect_to articles_path if user_signed_in?
    end
end
