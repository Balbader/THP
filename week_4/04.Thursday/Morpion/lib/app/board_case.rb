class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :token, :token_position
  
  def initialize
    #TO DO : doit régler sa valeur, ainsi que son numéro de case
    @token = token
    @token_position = token_position
  end
end
