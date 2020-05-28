class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @mircopost = current_user.microposts.build
      @feed_item = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end
  
  def about
    
  end
  
  def contact
  end
end
