
class FavoritesController < ApplicationController
  before_action :authenticate_user!
  def index
    @articles = Article.joins(:favorites).where(favorites: { user_id: params[:user_id] }, status: :public)
  end
  
  def create
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.build(article_id: params[:article_id])
    favorite.save
  end

  def destroy
    @article = Article.find(params[:article_id])
    favorite = current_user.favorites.find_by(article_id: @article.id)
    favorite.destroy
  end
end
