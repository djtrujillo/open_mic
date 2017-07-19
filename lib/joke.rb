class Joke
  attr_reader :question,
              :answer,
              :id

  def initialize(data)
    @question = data[:question]
    @answer = data[:answer]
    @id = data[:id]
  end


end
