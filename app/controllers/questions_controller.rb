class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @your_message = params[:question]
      case @your_message.downcase
      when "i am going to work right now!"
        @answer = "Great!"
      when /\?/
        @answer = "Silly question, get dressed and go to work!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
