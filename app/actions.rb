helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  @posts = Post.order(created_at: :desc)
  erb(:index)
end

get '/signup' do    #if a user navigates to the path "signup"
  @user = User.new  #setup empty @user object
  erb(:signup)      #render "app/views/signup.erb"
end


get '/login' do #when a get request comes into login
  erb(:login) #render app/views/login.erb
end

get '/logout' do
  session[:user_id] = nil
  redirect to ('/')
end

post '/signup' do
  #grab user input values from params
  email       = params[:email]
  avatar_url  = params[:avatar_url]
  username    = params[:username]
  password    = params[:password]
    
  #instantiate and save a User
  @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })
  
  # if user validations pass and user is saved
  if @user.save
    redirect to '/login'
  else
    erb(:signup)
  end
end

get '/posts/new' do
  erb(:"posts/new")
end

get '/posts/:id' do
  @post = Post.find(params[:id]) #find the post with the ID from the URL
  erb(:"posts/show")
end

post '/posts' do
  photo_url = params[:photo_url]
  
  #instantiate new post
  @post = Post.new({ photo_url: photo_url, user_id: current_user.id })
  
  #if @post validates, save
  if @post.save
    redirect(to('/'))
  else
  #if it doesn't validate, print error messages
    erb(:'posts/new')
  end
end

post '/login' do
  username    = params[:username]
  password    = params[:password]
  # 1. Find user by username
  user = User.find_by(username: username)
  
  #2. If that user exists and password match
    if user && user.password == password 
    #login
      session[:user_id] = user.id
      redirect to ('/')
    else
      @error_message = "Login failed"
      erb(:login)
    end
end