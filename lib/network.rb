class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    all_characters = []
    @shows.each do |show|
      all_characters << show.characters
    end
    highest_paid_character = all_characters.flatten.max_by do |character|
      character.salary
    end
    highest_paid_character.actor
  end
end
