class FavoritesController < ApplicationController
  def index
    @articles = Article.joins(:favorites).where(favorites: { user_id: params[:user_id] })
  end
  
  def create
    @favorite = current_user.favorites.create(article_id: params[:article_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @favorite = current_user.favorites.find_by(article_id: @article.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
  end
end
