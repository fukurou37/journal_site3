class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
end

def index
  @articles = Article.all
end

def new
  @article = Article.new
end

def create
  @article = Article.new(article_params)
  # 上の行はインスタンスを作っただけ。saveメソッドで保存しないと、消える。
  @article.save
  # saveの後にshow(商品詳細ページ)に飛ぶ設定をします。
  # これを設定しないと、プログラムが行き場をなくしてエラーが起きます。
  redirect_to @article
  # redirect_to "/items"
  # だとindexページにリダイレクトする
end
private

def article_params
  params.require(:article).permit(:name, :price, :seller, :description, :email, :image_url)
end

end