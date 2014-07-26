class Wood
  def initialize(params)
    @desc = "I am a primal wood,guava"
    @params=params
  end

  def say
    @params[:id]+ "guava1"
  end
end