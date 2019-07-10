class Network
  attr_reader :network_name, :network_shows
  def initialize(network_name)
    @network_name = network_name
    @network_shows = []
  end

  def add_show(show)
    @network_shows.push (show)
  end

  def highest_paid_person
    
  end
end #class
