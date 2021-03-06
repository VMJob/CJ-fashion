class Page::StylesController < ApplicationController
	before_action :authenticate_user!
    before_action :require_authorized_for_current_style, only: [:create]
    before_action :require_authorized_for_current_style, only: [:show]

   def new
   @style = Style.new
   @styles = Style.all
   end
   
    
   def create
    measurement = Measurement.new
    m_string = params[:style][:measurement]
    m_pairs = m_string.split (',').strip
    m_pairs.split.each do | name, value | 
      if ['waist', 'length', 'sleeve'].include? name.downcase
        measurement[name.downcase] = value
      end
    end
    params[:style][:measurement] = measurement  
    @style = current_user.styles.create(style_params)
    if @style.valid?
      redirect_to new_page_style_path(@style)
    else
      render :new, status: :unprocessable_entity	
    end
   end 

  def show
    @style = Style.find(params[:id])
  end


  private

  def style_params
    params.require(:style).permit(:type, :measurement)
  end	
end

def style_params
    params.require(:style).permit(:title, :description)
end
