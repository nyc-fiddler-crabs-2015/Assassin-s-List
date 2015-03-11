

get '/index' do
  @posts = Post.all
  erb :posts
end


get '/posts' do
  @posts = Post.all
  erb :posts
end

get '/posts/new' do
  erb :new_post
end

get '/posts/:id/edit' do |id|
  @post = Post.find(id)
  erb :update, layout: false
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post
end

delete '/posts/:id' do |id|
  Post.destroy(id)
end

post '/posts' do
  @user = current_user
  @post = @user.posts.create(name: params[:name], location: params[:location], crime: params[:crime], bounty: params[:bounty],pic_url: params[:pic_url],tagline: params[:tagline])
  redirect "/posts/#{@post.id}"
end

put '/posts/:id' do
  id = params[:id]
  @post = Post.find(id)
  @post.update(id: id, user_id: current_user.id, name: params[:name], location: params[:location], crime: params[:crime], bounty: params[:bounty],pic_url: params[:pic_url],tagline: params[:tagline])
 redirect "/posts"
end

post '/post/new' do
    @post = Post.create(name: params[:name], location: params[:location], crime: params[:crime], bounty: params[:bounty],pic_url: params[:pic_url],tagline: params[:tagline])
  redirect "/posts"
end
