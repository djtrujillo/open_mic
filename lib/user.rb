require 'CSV'
class User
  attr_reader :name,
              :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(name, joke)
    name.learn(joke)
  end

  def perform_routine_for(name)
    @jokes.each do |joke|
      name.jokes << joke
    end
  end

  def learn_routine(jokes)
    CSV.foreach(jokes, :headers => true) do |row|
      @jokes << row
    end

  end

end
