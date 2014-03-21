class TestSubjectsController < ApplicationController
  # Manda pro nlp uma frase e ele retorna a porcentagem
  def analyze_phrase
    @phrase = params[:test_subject_a]
    @percentage = rand(-100..100)
    render json: { percentage: @percentage }
  end

  # Palavra ou hashtag?
  def analyze_word
    @word = params[:test_subject_b]
    @percentage = twitter_analisys @word
    render json: { percentage: @percentage }
  end

  private
  # Isto vai mandar um array de frases extraídas do twitter para o nlp retornar a porcentagem
  # A princípio extrair, gerar e mandar um array pequeno
  def twitter_analisys word
    rand(-100..100)
  end
end