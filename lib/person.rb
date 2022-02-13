require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene 
    attr_reader :name
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        @happiness = if num > 10 
            10 
        elsif num < 0
            0
        else 
            num 
        end
    end

    def happy?(happy = happiness)
        if happy > 7 && happy <= 10
           
            true
        else
            false
        end
    end

            
    def hygiene=(num)
        @hygiene = if num > 10 
            10
        elsif num < 0
            0
        else 
            num 
        end
    end

    def clean?(clean = hygiene)
        if clean > 7 && clean <= 10
            true
        else
            false
        end 
    end

    def get_paid(amount)
        @bank_account += amount 
        return "all about the benjamins"
    end 

    def take_bath
            self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out  
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        
        self.happiness += 3 
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2 
            return 'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1
            return 'blah blah sun blah rain'
        else 
            'blah blah blah blah blah'
        end 
    end
end


