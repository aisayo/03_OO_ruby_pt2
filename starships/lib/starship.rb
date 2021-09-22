require 'pry'

class Starship 

    @@all = [] # responsibility of this variable is to store all new instances of the class

    attr_accessor :name, :model, :color # colon before the name is a method

    # :name => 
    # def initialize(name:, model:) # using keyword arguments
    #     @name = name
    #     @model = model
    #     save
    # end 

    def initialize(attributes) # hash of name, model key/value pairs
        attributes.each do |key, value| # using mass assignment to dynamically set object attributes
            # self.attr_accessor :attribute_name dynamically set the attr_accessor
            self.send("#{key}=", value) # model=
        end
        save
    end

    def save 
        @@all << self # dynamically add the new instance
    end 

    def self.all # class method: belong to the class/ are called on the class itself
        @@all
    end 

    def self.remove_duplicates
        # @@all.uniq # this is going to look at JUST THE OBJECT_ID
        # @@all.uniq! do |starship|
        #     starship.name
        # end 

        @@all.uniq! {|starship| starship.name}
    end 

    def print_name # instance method
        puts self.name # self is the instance 
    end

    def self.find(name)
        # query the class instances to return an instance that matches the name 
        self.all.find do |starship|
            starship.name == name
        end 
        binding.pry
    end 

end 


# Starship.all
icelanding = Starship.new(model: "falcon", name: "icelanding", color: "red")
icelanding2 = Starship.new(model: "falcon", name: "icelanding", color: "red")
# binding.pry
# binding.pry
luna_pearl = Starship.new(name: "luna_pearl", model: "falcon", color: "test")
# starship.print_name
# binding.pry
binding.pry
# Starship.find("luna_pearl")
