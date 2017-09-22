class CardController < ApplicationController
  
  #def form
    
  #end
  
  def show
    if true
      maker = CardMaker.new
      card = maker.make(params[:card], params[:friends])
      render :text => card
    else
      render action: 'paramError'
    end
  end

end
