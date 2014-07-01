class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
    
  
#   def first
#     @fig = Fig.find_by_id(params['id'])
#     @url = @fig.url
#     @caption = "Challeeeenge"
#     render 'show'
#     puts "This is a test"
#   end
  
#   def second
#     @url = "http://cdn3.vox-cdn.com/assets/4530857/lance-bubble.gif"
#     @caption = "Bet I can blow a bigger bubble"
#     render 'show'
#   end
  
#   def third
#     @url = "http://assets.sbnation.com/assets/552045/sqk_medium.gif"
#     @caption = "Flop"
#     render 'show'
#   end
  
  def show
    @fig = Fig.find_by_id(params['id'])
    @url = @fig.url
    @caption = @fig.caption
    render 'show'
    puts "This is it!"
  end
  
  def new
    
  end
    
  def create
    f = Fig.new
    f.url = params['url']
    f.caption = params['caption']
    f.save
    redirect_to "/gif/#{ f.id }"
  end
    
  def edit
    @fig = Fig.find_by_id(params['id'])
  end
  
  def update
    f = Fig.find_by_id(params['id'])
    f.url = params['url']
    f.caption = params['caption']
    f.save
    redirect_to "/gif/#{ f.id }"
  end
  
  def destroy
    f = Fig.find_by_id(params['id'])
    f.destroy
    redirect_to "/gifs"
  end
  
  def index
    @gifs = Fig.all
  end

end
