class CiphersController < ApplicationController
  def vigenere
    data, key = params["data"],params["key"]
    @solution = vCipher(data,key) if data && key
    @data, @key = data,key
  end

  def ceaser
  end

  def rot13
  end

  def rot47
  end

  def randomSub
  end

def vCipher(word, key)
  @alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"


    word.upcase!
    currentkey = -1

    sol = ""

    word.each_byte do |letter|
        (sol += " "; next) if letter == 32
        currentkey += 1
        key_char = key[currentkey % key.length].bytes.shift
        sol << @alphabet[(letter+key_char)%26]
    end
    sol

end

end
