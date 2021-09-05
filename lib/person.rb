class Person
    attr_reader :name, :friend 
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name)
        @name = name
        @happiness = 8 
        @bank_account = 25 
        @hygiene = 8 
        @salary = 0    
    end 
    def happiness=(happiness)
        if happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10    
        else
            @happiness = happiness
        end
    end            
    def hygiene=(hygiene)
        if hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10       
        else
            @hygiene = hygiene
        end
    end  
    def happy?
        @happiness > 7 ? true : false          
    end  
    def clean?
        @hygiene > 7 ? true : false                 
    end  
    def get_paid(salary)  
        @bank_account += salary 
        "all about the benjamins"
    end
    def take_bath 
        @hygiene += 4 
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 
    def work_out
        @hygiene -= 3 
        self.hygiene=(@hygiene)
        @happiness += 2 
        self.happiness=(@happiness)
        '♪ another one bites the dust ♫'
    end
    def call_friend(friend)
        @happiness += 3 
        self.happiness=(@happiness)
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end   
    def start_conversation(friend, topic)
        if topic == 'politics'
            @happiness -= 2 
            self.happiness=(@happiness)
            friend.happiness -= 2 
            "blah blah partisan blah lobbyist"
        elsif  topic == 'weather' 
            @happiness += 1 
            self.happiness=(@happiness)
            friend.happiness += 1  
            "blah blah sun blah rain"          
        else
            "blah blah blah blah blah" 
        end    
    end    
end    
