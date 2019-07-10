require "pry"

class Network
  attr_accessor :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show_name)
    @shows << show_name
  end

  def payroll
    #needs to return the character name and salaray in a hash
    # name_salary = {}
    # @shows.each {|k,v| name_salary << v.salary}
    # name_salary

   #  [#<Character:0x007f8e8d943ba8 @actor="David Hasselhoff", @name="Michael Knight", @salary=1600000>,
   #  #<Character:0x007f8e8d943a90 @actor="William Daniels", @name="KITT", @salary=1000000>]
   # [7] pry(#<NetworkTest>)> @nbc.shows[0].characters[0]
   # => #<Character:0x007f8e8d943ba8 @actor="David Hasselhoff", @name="Michael Knight", @salary=1600000>

   # [8] pry(#<NetworkTest>)> @nbc.shows[0].characters[0].salary
   # => 1600000
  end

end
