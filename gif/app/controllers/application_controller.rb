class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def first
    @url = "http://38.media.tumblr.com/tumblr_logxw2QbRO1r03vjuo1_250.gif"
    @caption = "Challeeeenge"
    render 'show'
  end
  
  def second
    @url = "http://cdn3.vox-cdn.com/assets/4530857/lance-bubble.gif"
    @caption = "Bet I can blow a bigger bubble"
    render 'show'
  end
  
  def third
    @url = "http://assets.sbnation.com/assets/552045/sqk_medium.gif"
    @caption = "Flop"
    render 'show'
  end
  
end
