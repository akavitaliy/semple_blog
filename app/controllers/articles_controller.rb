class ArticlesController < ApplicationController
  
  def index 
    @articles = Article.all
  end
  
  def show 
    @article = Article.find(params[:id])
  end
  
  def new             
  end  
  
  def create
    @article = Article.new(articles_params)

    if @articles.valid?
      @articles.save
      redirect_to @articles
    else
      render action: 'new'
    end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end
  

end
