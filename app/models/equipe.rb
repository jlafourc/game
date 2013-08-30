class Equipe < ActiveRecord::Base
  has_many :adversaires
  belongs_to :saison
  attr_accessible :nom_club, :nom_competition
  
  def to_s
    return nom_club
  end
  
end
