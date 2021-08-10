class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(happiness_count)
    @happiness = if happiness_count > 10
                   10
                 elsif happiness_count < 0
                   0
                 else happiness_count
                 end
  end

  def hygiene=(hygiene_count)
    @hygiene = if hygiene_count > 10
                 10
               elsif hygiene_count < 0
                 0
               else hygiene_count
               end
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
    # .self set hygiene as its' own target. Saving you the hassle of writing the excess code below
    # if hygiene > 7
    # true
    # else
    # false
    # end
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end
