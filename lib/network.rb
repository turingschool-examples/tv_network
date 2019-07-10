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
    highest_paid_per_show = @shows.map do |show|
      show.characters.max_by do |character|
        character.salary
      end
    end
    highest_paid_of_network = highest_paid_per_show.max_by do |character|
      character.salary
    end
     highest_paid_of_network.actor
  end

  def payroll
    actor_payroll = {}
    @shows.each do |show|
      show.characters.map do |character|
        actor_payroll[character.actor] = character.salary
      end
    end
    actor_payroll
  end
end
