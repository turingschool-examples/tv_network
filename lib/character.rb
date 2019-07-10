class Character

  attr_reader :hash

  def initialize(hash)
    # @name = hash[:name]
    # @actor = hash[:actor]
    # @salary = hash[:salary]
    @hash = hash
    # @characters_array = [Character.new("KITT", "William Daniels", 1000000), Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})]

  end

  def name
    @hash[:name]
  end

  def actor
    @hash[:actor]
  end

  def salary
    @hash[:salary]
  end

end
