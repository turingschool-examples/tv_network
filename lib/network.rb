class Network
  attr_reader :name, :shows
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    all_actors = @shows.map { |show| show.characters }.flatten
    all_actors.max_by { |actor| actor.salary }.actor
  end
end
