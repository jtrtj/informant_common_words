module WordsNotNeeded

  def superfluous_words
    /\b(?:#{ %w[and or the a of by but off so an withbout below excepting toward above beneath for on under across besides from onto underneath after between in out until against beyond front outside up along but inside over upon among by up to around concerning instead regarding at despite into since within because down like through without before during near throughout with regard behind except respect then than unless even if either neither who what where when why how which whichever whom whomever this that rather also though otherwise however because nor].join('|') })\b/i
  end

end
