require './unicorn'
require './power'

unicorn_1 = Unicorn.new("Sparkle", "rainbow") #creates an instance of Unicorn
unicorn_2 = Unicorn.new("Eddie", "white") #creates another instance of Unicorn
unicorn_3 = Unicorn.new("Satchel", 'purple') #creates another instance of Unicorn
puts unicorn_3.magical_powers #prints unicorn_3's magical powers...should be blank
unicorn_3.add_power("Lightning bolts") #pushes Lighting bolts to unicorn_3's magical powers array using the method from the Unicorn class-add_power
unicorn_3.add_power("Healing") #pushes Health to unicorn_3's magical powers array using the method from the Unicorn class-add_power
puts unicorn_3.magical_powers #prints unicorn_3's magical powers...should now contain anything pushed to magical powers array

telepath = Power.new('Telepathic', '100') #adds an instance of Power class, which will later be pushed to magical powers array, alternative way to add powers
healing = Power.new('Healing', '150')#adds an instance of Power class, which will later be pushed to magical powers array, alternative way to add powers

unicorn_3.add_object_power(telepath)#pushes telepath instance of Power class to Unicorn_3 magical powers array
unicorn_3.add_object_power(healing)#pushes telepath instance of Power class to Unicorn_3 magical powers array

unicorn_2.add_object_power(telepath)#pushes telepath instance of Power class to Unicorn_3 magical powers array


require 'pry'; binding.pry
