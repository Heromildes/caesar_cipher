=begin
1- What input data is required?
- any name
- a number that will be the displacement

2- What should I do with this data?
- will get the name, and each character will move in alphabetical order according to the displacement number

3- What are the restrictions of this problem?
-

4- What is the expected result?
- if I receive, for example, "abc" and the offset is 3, it becomes "def"

5- What is the sequence of steps to be taken to achieve the expected result?

- I will make an array with the entire alphabet
- I'll ask for any name
- I'll ask for travel
- I will take the name and separate it into arrays
- I will compare each character of the name with the alphabet array
- ex: If A in the name is equal to A in the array, move 3 positions
- create a new array of characters and put the new character in the position you moved to
- transform this new character array into a name and return this new name

=end


def caesar_cipher(name, shift)
  alphabet = ('a' .. 'z').to_a
  array_name = name.chars
  new_array = []

  array_name.each do |char|
    if alphabet.include?(char)
      index = alphabet.index(char)
      position = (index + shift) % 26
      new_char = alphabet[position]
      new_array << new_char
    end
  end

  puts new_array.join
end


caesar_cipher("abc", 3)

