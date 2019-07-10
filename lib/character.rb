class Character
  attr_reader :name, :actor, :salary

  def initialize(info)
    info.each do |key, val|
      instance_variable_set("@#{key}", val)
    end
  end
  
end
