class ArticlesController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:article]
      @articles = Article.search_by_article_title(params[:article])
    else
      @articles = Article.all
    end
  end
end
