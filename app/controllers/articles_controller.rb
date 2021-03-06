class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      flash[:success] = "Updated successfully!"
      redirect_to @article
    else
      render "edit"
    end
  end

  def create
    @article = Article.new(article_params)
    @article.user = User.first
    if @article.save
      flash[:success] = "Created successfully!"
      redirect_to @article
    else
      render "new"
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash[:danger] = "Deleted successfully!"
    redirect_to articles_path
  end

  def index
    @articles = Article.all()
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end
end
