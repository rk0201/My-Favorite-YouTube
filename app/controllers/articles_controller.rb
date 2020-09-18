class ArticlesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  def index
    @articles = Article.where(status: :public).order(created_at: :desc)
    if params[:tag]
      @articles = Article.tagged_with("#{params[:tag]}")
    end
  end

  # GET /articles/1
  def show
    @article = Article.find(params[:id])
    @comment = Comment.new 
    @comments = @article.comments.order(created_at: :desc)
    
  end

  # GET /articles/new
  def new
    @article = Article.new
    
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles
  def create
    @article = Article.new(article_params)
    url = params[:article][:thumbnail]
    url = url.last(11)
    @article.thumbnail = url
    
    @article.user_id = current_user.id

    if @article.save
      redirect_to @article, notice: '記事を投稿しました。'
    
    end
  end

  # PATCH/PUT /articles/1
  def update
    if @article.update(article_params)
      redirect_to @article, notice: '投稿内容を更新しました。'
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy
    redirect_to articles_url, notice: '投稿を削除しました。'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def article_params
      params.require(:article).permit(:title, :channnel_name, :content, :thumbnail, :status, :start_time, :user_id, :comment, :tag_list )
    end
end
