class CommonWords
  def self.data
    [
      { text: 'Hey', value: 1000 },
      { text: 'lol', value: 200 },
      { text: 'first impression', value: 800 },
      { text: 'very cool', value: 1000000 },
      { text: 'duck', value: 10 },
     ]
  end

  def self.status
    if self.data
      200
    end
  end
end