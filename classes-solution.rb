### Labs: 
# 2. Make an ATM
# For this exercise you will be creating an ATM class.
# It will have the following properties...
# * `type` (e.g., "checking"), which should be determined by some input
# * `money`, which should start out as `0`
# It should have the following methods...
# * `withdraw`, which should decrease the amount of money by some input
# * `deposit`, which should increase the amount of money by some input
# * `show_balance`, which should print the amount of money in the bank to the console.
# The `Atm` class has a `transaction_history` property which keeps track of the withdrawals and deposits made to the account.
# Make sure to indicate whether the transaction increased or decreased the amount of money in the bank.

class Atm
    attr_accessor :type, :money, :transaction_history
    def initialize(type)
        @type = type
        @money = 0
        @transaction_history = []
    end
    
    def withdraw(wd)
        if wd <= @money 
            @money -= wd
            @transaction_history.push("#{wd} withdrawn from #{type}")
        else 
            puts "No enough money"
        end
    end
    
    def deposit(dip)
    self.money += dip
    @transaction_history.push("#{dip} deposited to #{type}")
    end
    
    def show_balance()
    print "Your balance is #{self.money} \n #{self.transaction_history}"
    end
  
  
  end

  atm = Atm.new("checking")
  atm.deposit(100)
  atm.withdraw(20)
  
  atm.show_balance()


#3. Create a `RecordAlbums` Class - Lab (10 minutes)
# It should have the following properties...
# - artist_name(string)
# - album_name(string)
# - songs (array of strings)
# - current_song (string from array)
# It should have the following methods...
# - next_song(method), which prints out its result
# - previous_song(method), which prints out its result

class RecordAlbums
    attr_accessor :artist_name , :album_name , :songs , :current_song


    def initialize artist_name , album_name , songs , current_song 
        @artist_name = artist_name
        @album_name = album_name
        @songs = songs
        @current_song = current_song   
    end
 
    def next_song() 
        return @songs[@songs.index(@current_song)+1] unless @songs.index(@current_song) == @songs.length-1
        return @songs[0]
    end
    
    def previous_song()
        return @songs[@songs.index(@current_song)-1] unless @songs.index(@current_song) == 0
                return @songs[@songs.length-1]
    end


end

album = RecordAlbums.new( "John Lennon", "Imagine", ["Imagine", "Crippled Inside", "Jealous Guy", "It's So Hard", "I Don't Want to Be a Soldier", "Gimme Some Truth" ,"Oh My Love"], "Imagine")

# 4.Classes and Methods
# Create Muppets
# 1. Create a Muppet class that takes in a `name` and puts `"This muppet is called #{name}!"` on  `initialize`.   
# Assign the muppet a random color on `initialize`. Hint: make a small array and use `.sample`
# Muppet methods
# Add **methods** to your Muppet
# - Add a `honk` method to your muppet that puts `"#{name} is making a honking sound!"`. Test that it works, comment out your test code.
# - Example test the following that it gives the expected output:
# - Add a `flail` method that puts `"#{name} is flailing its arms!"`. Test that it works.

class Muppet
    attr_accessor :color, :name
    def initialize name
        @name = name
        puts "This muppet is called #{name}!"
        @color = ["red","yellow","orange","purple"].sample
    end

    def honk
        puts "#{@name} is making a honking sound!"
    end

    def flail
        puts "#{@name} is flailing its arms!" 
    end
end

q = Muppet.new("K-Rad")
q.honk
q.flail

#Create Birds
# 2. Create a Bird class that takes in an `adjective` and a `name` and  puts `"#{name} is a(n) #{adjective} bird!"` on  `initialize`.   
# - Assign the bird a species at random on `initialize`.  Hint: make a small array and use `.sample`
# - Here is an array of bird species, for your convenience
#Bird methods
# Add methods to your Bird
# - Add a `hungry` method that puts `"#{name} wants some regurgitated worms!"`. Test that it works.
# - Add a `fly` method that puts `"Flap! #{name} is taking flight!"`. Test that it works.
# 4. Make your bird's `adjective` and `name` accessible. Test that this works.


class Bird
    attr_accessor :species , :name , :adjective
    def initialize name , adjective
        @name = name
        @adjective = adjective
        puts "#{name} is a #{adjective} bird" 
        @species=['Belted Kingfisher', 'Yellow-Billed Cuckoo', 'White-Cheeked Pintail', 'Cinnamon Teal', 'Lesser Scaup'].sample
    end

    def hungry 
        puts "#{@name} wants some regurgitated worms!"
    end

    def fly
        puts "Flap! #{@name} is taking flight!"
    end

end

birdy = Bird.new("birdy","beautiful")
birdy.hungry
birdy.fly
