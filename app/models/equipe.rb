class Equipe < ActiveRecord::Base
  has_many :adversaires
  attr_accessible :nom_club, :nom_competition
  
  def to_s
    return nom_club
  end
  
end
