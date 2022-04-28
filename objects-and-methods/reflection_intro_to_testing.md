#Reflection activity from RSPEC
What 2 directories should we have within our project directory?
**We should have the lib directory and the spec directory in our project directory**

rspec setup
What do you have to require in a spec file?
**You must require rspec and the class.rb file you are testing.  This means that rspec must be installed (gem install rspec) inside the project directory and you must specify at the top of the rspec file the following:**
```ruby
require 'rspec'
require './lib/#class_filename.rb'
```

What goes in the initial describe block?
**The initial describe block contains the class name, initializes an object, and initializes any starting values for that object.  For example:**
```ruby
require 'rspec'
require './lib/Animal.rb'

describe Animal do
  describe '#initialize' do
    it 'is an instance of animal' do
      pig = Animal.new('Miss Piggy')
      expect(pig).to be_a Animal
    end

    it 'has full health'
      pig = Animal.new('Miss Piggy')
      expect(pig.health).to eq 100
    end
  end
end
```

What is the syntax for a RSpec spec?
**Syntax for an RSpec spec will vary but generally you organize each method under a separate 'describe' block and state the name of method you are trying to describe.  Often, two values are compared together and we use expect(actual).to eq(expected) where expected is what we want it to be.  For example:**
```ruby
require 'rspec'
require './lib/apples.rb'

describe Apple do
  describe "#initialize" do
    it 'is an instance of apple' do
    fuji = Apple.new('Fuji')
    expect(fuji).to be_a Apple

    it 'has a name' do
      fuji = Apple.new('Fuji')
      expect(fuji.name).to eq 'Fuji'
    end

    it 'has a condition' do
      fuji = Apple.new('Fuji')
      expect(fuji.health).to eq 'Fresh'
    end
  describe '#fall' do
    it 'measures the speed of the apple falling from the tree'
    fuji = Apple.new('Fuji')
    expect(fuji.speed).to eq (fuji.speed * 2)
  end
end
```


Name 3 .to methods you learned about today & describe their syntax.

**I learned about '.to eq' which is one of the most commonly used methods and compares two values.  I learned about 'to be a' which checks whether an object is a member of a class.  I also learned about '.to include' which checks whether a set includes a value.**
