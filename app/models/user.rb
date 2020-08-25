class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy
  
  has_many :favorites,dependent: :destroy
  def already_favorited?(article)
    self.favorites.exists?(article_id: article.id)
  end
  
  mount_uploader :icon, IconUploader
end
