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
    characters = @shows.map do |show|
      show.characters.max_by do |character|
        character.salary
      end
    end
      highest_paid = characters.max_by do |character|
        character.salary
    end
     highest_paid.actor
  end

  def payroll

  end
end
