class Page::StylesController < ApplicationController
	before_action :authenticate_user!
   def new
   @style = Style.new
   end

   def create
    @style = current_user.styles.create(course_params)
    redirect_to page_style_path(@style)
  end

 

  def show
    @style = Style.find(params[:id])
  end


  private

  def style_params
    params.require(:style).permit(:type, :measurement, :cost)
  end	
end
