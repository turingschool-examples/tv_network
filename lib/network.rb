class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(new_show)
    @shows << new_show
  end

  def highest_paid_actor
    @shows.map(&:characters)
    .flatten
    .max_by { |character| character.salary }
    .actor
  end
end
