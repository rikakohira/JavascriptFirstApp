class ArticlesController < ApplicationController
  def index
    @articles = Article.order('id DESC')
    @article = Article.new
  end

  def new
  end

  def create
    article = Article.new(article_params)
    render json: { article: article } if article.save
  end

  private

  def article_params
    params.require(:article).permit(:text)
  end
end
