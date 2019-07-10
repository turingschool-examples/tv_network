class Show
  attr_reader :show_name, :creator, :characters
  def initialize(show_name, creator, characters)
    @show_name = show_name
    @creator = creator
    @characters = characters 
  end #initialize
end #class
