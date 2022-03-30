#require "./lib/strings"
RSpec.describe 'Strings' do
  it 'test 1' do
    name = "alice"
    # In place of the line below, call a method on the name variable
    # defined above to acheive the expected output.
    actual = name.capitalize
    expected = "Alice"
    #capitalize only capitalizes the first letter of a string
    expect(actual).to eq(expected)
  end

  it 'test 2' do
    name = "aLiCe"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.upcase
    expected = "ALICE"
    #upcase makes all characters in a string uppercase
    expect(actual).to eq(expected)
  end

  xit 'test 3' do
    name = "AlIcE"
    # In place of the line below, call a method to achieve the expected output.
    actual = name.downcase
    expected = "alice"
    #downcase makes all characters in string downcase
    expect(actual).to eq(expected)
  end

  it 'test 4' do
    rhyme = "peter piper picked a peck of picked peppers"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.reverse
    expected = "sreppep dekcip fo kcep a dekcip repip retep"
    #reverse will reverse a string
    expect(actual).to eq(expected)
  end

  it 'test 5' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub('ticking','kicking')
    expected = "kicking"
    #sub replaces strings with other strings
    expect(actual).to eq(expected)
  end

  it 'test 6' do
    word = "ticking"
    # In place of the line below, call a method to achieve the expected output.
    actual = word.sub('ticking','clocking')
    expected = "clocking"
    #sub replaces strings with other strings
    expect(actual).to eq(expected)
  end

  it 'test 7' do
    words = "five sleepy kittens"
    # In place of the line below, call a method to achieve the expected output.
    actual = words.gsub!(/e/, '*')
    expected = "fiv* sl**py kitt*ns"
    #uses gsub to replace letter, there are multiple uses for gsub
    expect(actual).to eq(expected)
  end

  it 'test 8' do
    greeting = "Hello!!"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chop
    expected = "Hello!"
    #chop is the string method to remove last character, whereas pop is the method to remove last element of array
    expect(actual).to eq(expected)
  end

  it 'test 9' do
    greeting = "Hello!!\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chomp
    expected = "Hello!!"
    #chomp method moves string to new line without using \n

    expect(actual).to eq(expected)
  end

  it 'test 10' do
    greeting = "Hello!!\n\n"
    # In place of the line below, call a method to achieve the expected output.
    actual = greeting.chop
    expected = "Hello!!\n"
    #chop is the string method to remove last character, whereas pop is the method to remove last element of array
    expect(actual).to eq(expected)
  end

  it 'test 11' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.gsub(/e/, '')
    expected = "ny, mny, miny, mo"
    #gsub replaces a letter or string and can also recognize patterns
    expect(actual).to eq(expected)
  end

  it 'test 12' do
    rhyme = "eeny, meeny, miny, moe"
    # In place of the line below, call a method to achieve the expected output.
    actual = rhyme.gsub(/[oei]/, '')
    #uses gsub with [] and includes all letters that are wish to be removed
    expected = "ny, mny, mny, m"
    expect(actual).to eq(expected)
  end

  it 'test 13' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.sub("Hello World", 12.to_s).to_i
    expected = 12
    #sub method allows you to convert to string then back to integer, gsub doesn't
    expect(actual).to eq(expected)
  end

  it 'test 14' do
    greeting = "Hello World!\n"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.count(greeting)
    expected = 13
    #use count, have to include parameter, see documentation for count, many uses
    expect(actual).to eq(expected)
  end

  it 'test 15' do
    greeting = "Hello       World!"
    # In place of the line below, call a method to get the number of characters in the string
    actual = greeting.count(greeting)
    expected = 18
    #use count again
    expect(actual).to eq(expected)
  end

  it 'test 16' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of 'o' in the string
    actual = greeting.count('o')
    expected = 2
    #use count and specify vowel you are looking for
    expect(actual).to eq(expected)
  end

  it 'test 17' do
    greeting = "Hello World!"
    # In place of the line below, call a method to get the number of vowels in the string
    actual = greeting.count('[aeiouy]')
    expected = 3
    #use count but include multiple criteria inside parameters
    expect(actual).to eq(expected)
  end

  it 'test 18' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'llo'
    actual = greeting.include? 'llo'
    expected = true
    #use built-in .include? method to check for string of characters
    expect(actual).to eq(expected)
  end

  xit 'test 19' do
    greeting = "Hello World!"
    # In place of the line below, call a method to check if the string includes 'lol'
    actual = greeting.include? 'lol'
    expected = false
    #use built-in .include? method to check for string of characters
    expect(actual).to eq(expected)
  end

  it 'test 20' do
    greeting = "Hello World, my name is "
    name = "Harry Potter"
    # In place of the line below, use string manipulation to combine the
    #greeting and name variables to acheive the expected outcome
    actual = greeting.concat(name)
    expected = "Hello World, my name is Harry Potter"
    #concat to connect strings
    expect(actual).to eq(expected)
  end

  xit 'test 21' do
    # See if you can use another method than the last test to achieve the same goal:
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting + ' ' + name
    expected = "Hello World, my name is Harry Potter"
    expect(actual).to eq(expected)
  end

  it 'test 22' do
    greeting = "Hello World, my name is"
    name = "Harry Potter"
    actual = greeting << ' ' + name
    expected = "Hello World, my name is Harry Potter"
    #uses push to array method << and concat
    expect(actual).to eq(expected)
  end

  it 'test 23' do
    phrase = "  \n\t to the moon\n\n\t    "
    # In place of the line below, call a method to acheive the expected outcome
    actual = phrase.gsub(/[\n,\t]/,'').strip
    expected = "to the moon"
    #gsub to replace string patterns such as \n or \t
    #strip method strips all whitespace at end
    expect(actual).to eq(expected)
  end
end
