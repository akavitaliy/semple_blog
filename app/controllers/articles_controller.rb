class ArticlesController < ApplicationController
  def new
                
  end  
  
  def create
    @articles = Article.new(articles_params)

    if @articles.valid?
      @articles.save
  else
      render action: 'new'
  end
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end
  

end
