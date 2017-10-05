class CardMaker
  
  require 'RMagick'
  
  @@imagePath = 'app/resources/'
  @@cardScale = 2.0;

  def make(cardId, friendsId)
    card = cardId.match(/[shdc](?:0[1-9]|1[0-3])$/)
    if card.nil? then
      return false
    end
    manager = FriendsManager.new
    if manager.isValidId(friendsId) then
      card = Magick::Image.read(@@imagePath + 'card/' + cardId + '.svg').first
      cardWidth = card.columns * @@cardScale
      cardHeight = card.rows * @@cardScale
      icon = Magick::Image.read(@@imagePath + 'icon/' + friendsId + '.jpg').first
      iconWidth = icon.columns
      iconHeight = icon.rows
      iconOffsetX = (cardWidth - iconWidth) / 2;
      iconOffsetY = (cardHeight - iconHeight) / 2;
      card.resize!(@@cardScale)
      card.composite!(icon, iconOffsetX, iconOffsetY, Magick::OverCompositeOp)
      return card
    else
      return false
    end
  end

end
