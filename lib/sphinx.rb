require('pry')

class Riddles
  attr_accessor :question, :answer
  def initialize(question, answer)
    @question = question
    @answer = answer
  end
  def ask(user_answer)
    if user_answer == self.answer
      true
    else
      false
    end
  end
end
