class Adversaire < ActiveRecord::Base
  belongs_to :equipe
  attr_accessible :nom, :equipe_id
  
  def to_s
    return equipe.nom_club + " - " + nom
  end
end
