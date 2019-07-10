class Network
  attr_reader :name, :shows

  def initialize(name, shows = [])
    @name = name
    @shows = shows
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    highest_salary_name = ""
    @shows.each do |show|
      highest_salary_name = show.characters.max_by do |character|
          character.salary
      end
    end
    highest_salary_name.actor
  end

  def payroll
    payroll_hash = {}

    @shows.each do |show|
      show.characters.each do |character|
        payroll_hash[character.actor] = character.salary
      end
    end
    payroll_hash
  end

end
