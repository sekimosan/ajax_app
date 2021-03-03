class PostsController < ApplicationController

 def index
  @posts = Post.order(id: "DESC")
 end

 #def new
 #end

 def create
  post = Post.create(content: params[:content])
  render json:{ post: post }#変数postをpostキーとセットでJSへ送る
  # jsonオプションで↑のデータをjson形式で返却できる
 end

end
