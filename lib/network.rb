class Network
attr_reader :name, :shows

def initialize(name, shows = [])
  @name = name
  @shows = shows
end

def add_show(show)
  @shows.push(show)
end

def highest_paid_actor
characters_in_shows =
shows.each {|show|
  characters_in_shows.push(show.characters)}
  characters_in_shows.max_by {|character| character.salary}
end
  # @shows.max_by do |show|
  #   show.characters.max_by do |character|
  #   character.salary
  # end
  # end
end


end
