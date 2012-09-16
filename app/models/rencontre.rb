class Rencontre < ActiveRecord::Base
  belongs_to :equipe
  belongs_to :adversaire
  attr_accessible :domicile, :exempt, :heure, :jour, :numero, :reportee, :equipe_id, :adversaire_id
end
