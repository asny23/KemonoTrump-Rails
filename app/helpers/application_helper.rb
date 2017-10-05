module ApplicationHelper
  
  def friendsOption
    result = ''
    manager = FriendsManager.new
    hash = manager.getHash
    hash.each{|id, name|
      result += '<option value="' + id + '">' + name + '</option>'
    }
    return result
  end

end
