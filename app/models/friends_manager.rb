class FriendsManager
  
  require 'yaml'
  
  def initialize
    begin
      @@friendsHash = YAML.load_file("app/resources/friends.yml")
    rescue
      @@friendsHash = false
    end
  end

  def isValidId(id)
    begin
      @@friendsHash.fetch(id)
    rescue
      return false
    end
    return true
  end

  def getHash
    return @@friendsHash
  end

end
