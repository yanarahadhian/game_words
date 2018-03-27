require 'pry'

class Guess_game

  def random_question(game_word)
    quiz = game_word.shuffle
  end

  def random_word(word)
    word = word.downcase
    display_word = word.chars.shuffle.join
    puts "Tebak kata: #{display_word}"
  end

  def guess_word(word)
    until (word_guess = gets.chomp) == word
      puts "SALAH! Silakan coba lagi"
      puts "============================"
    end
  end

  puts "Selamat datang di Tebak Kata Game :)"
  puts "Ini permainan 2 player."
  puts "Player 1... silahkan masukan kata untuk dijawab player 2"

  game_word = []
  (1..5).each do |i|
    puts "input kata ke #{i}"
    game_word << gets.chomp
  end

  puts "Ok Player 2, silahkan jawab terbak kata ini!"
  point = 0
  game = Guess_game.new
  quiz_word = game.random_question(game_word)

  quiz_word.each do |word|
    game.random_word(word)
    game.guess_word(word)
    point += 1 
    puts "BENAR point anda : #{point}!"
    puts "============================"
  end

  puts "Anda berhasil!!!"

end 