get '/' do
   erb :index
end

get '/login' do
  erb :login
end

get '/signup' do
  erb :signup
end

get '/logout' do
  session.delete(:user_id)
  redirect '/'
end

post '/login' do
  user = User.authenticate(params[:name], params[:password])
  if user
    session[:user_id] = user.id
    redirect '/posts'
  else
    redirect '/'
  end
end


post '/signup' do
  if params[:password] == params[:password_confirmation]
    new_user = User.create(name: params[:name], password: params[:password], password_confirmation: params[:password_confirmation])
    session[:user_id] = new_user.id
    redirect '/index'
  else
    redirect '/'
  end
end
