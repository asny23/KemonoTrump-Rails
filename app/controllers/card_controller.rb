class CardController < ApplicationController
  
  def show
    maker = CardMaker.new
    card = maker.make(params[:card], params[:friends])
    if card == false then
      render action: 'paramError'
    else
      send_data(card.to_blob{self.format = "png"}, :type => 'image/png', :disposition => 'inline')
    end
  end

end
