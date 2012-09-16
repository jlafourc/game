class Equipe < ActiveRecord::Base
  attr_accessible :nom_club, :nom_competition
  
  def to_s
    return nom_club
  end
  
end
