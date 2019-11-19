class StylesController < ApplicationController
   before_action :authenticate_user!
   def new
   	@style = Style.new
   end

   def index
   end

   def create
    @style = Style.create(style_params)
    redirect_to root_path
   end	

  def style_params
    params.require(:style).permit(:message)
  end
  
end
end
