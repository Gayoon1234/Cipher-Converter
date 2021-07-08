require 'set'
class CiphersController < ApplicationController
  def vigenere
    data, key = params["data"],params["key"]
    @solution = vCipher(data,key) if data && key && params["encode"]
    @solution ||= dvCipher(data,key) if params["decode"]
    @data, @key = data,key
  end

  #these methods need to handle punctuation
  def vCipher(word, key)
    @alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
      word.upcase!
      key.upcase!
      currentkey = -1
      sol = ""
      word.each_byte do |letter|
          (sol += letter.chr; next) if letter < 65 || letter > 90
          currentkey += 1
          key_char = key[currentkey % key.length].bytes.shift
          sol << @alphabet[(letter+key_char)%26]
      end
      sol.to_s
  end

  def dvCipher(word, key)
    @alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    word.upcase!
    key.upcase!
    currentkey = -1
    sol = ""
    word.each_byte do |letter|
      (sol += letter.chr; next) if letter < 65 || letter > 90
      currentkey += 1
        key_char = key[currentkey % key.length].bytes.shift
        sol << @alphabet[(letter-key_char)%26]
    end
    sol.to_s
  end

  def ceaser
  end

  def rot13
  end

  def rot47
  end

  def randomSub
  end

  def morse
  end

  def ceaserSolver
    @input
    @answer = Array.new
    
    if(params["input"])
      
      #Takes in input ie what the user typed in
      @input = params["input"]

      #This is an english dictionary found here: https://raw.githubusercontent.com/dwyl/english-words/master/words_alpha.txt
      words = File.open("app/assets/wordBank/words_alpha.txt","r").map(&:chomp)
      words = words.to_set

      #26 posssibly shifts, for 26 letters of the alphabet
      26.times do |count|
        currentShift = ""

        #This is for each word
        @input.split(" ").each do |currentWord|

          #this is for each letter
          currentWord.downcase.each_byte do |letter|
              currentShift << ((letter+count - 'a'.bytes[0])%26 + 97).chr unless letter <97 or letter>122 
          end
          currentShift << " "
          
        end

        correctWords = 0
        total_words = @input.count(" ") + 2

        currentShift.split(" ").each do |word| 
          correctWords += 1 if words.include?(word) && word.length >2
          (@answer.push(currentShift);return) if (total_words <= 10 && correctWords >= 3) || (total_words > 10 && correctWords > total_words/5)
        end

    
      end

    end
  end
end