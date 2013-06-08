class Individu < ActiveRecord::Base
  attr_accessible :date_de_naissance, :nom, :prenom, :sexe
end
