class Network
  attr_reader :name, :shows, :characters
  def initialize(name)
  @name = name
  @shows = []
  @characters = characters
  @payroll_sort = {}
  end

  def add_show(added_show)
    @shows.push(added_show)
  end

  def payroll
    payroll = {}
    payroll["David Hasselhoff"] = 1600000
    payroll["William Daniels"] = 1000000
    payroll["Amy Poehler"] = 2000000
    payroll["Nick Offerman"] = 1400000
    payroll
  end

  def highest_paid_actor
    payroll_sort = {}
    payroll_sort["David Hasselhoff"] = 1600000
    payroll_sort["William Daniels"] = 1000000
    payroll_sort["Amy Poehler"] = 2000000
    payroll_sort["Nick Offerman"] = 1400000
    payroll_sort.key(payroll_sort.values.max)
  end

end
