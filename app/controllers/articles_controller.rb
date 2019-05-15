class ArticlesController < ApplicationController
  def show
    @srticle = Article.find(params[:id])
end

end