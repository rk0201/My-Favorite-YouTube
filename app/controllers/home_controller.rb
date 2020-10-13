class HomeController < ApplicationController
    def index
     redirect_to articles_path if user_signed_in?
    end
    
    def new_guest
    user = User.find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'ゲスト'
      user.login_id = 'guestuser'
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
    sign_in user
    redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
    end
end
