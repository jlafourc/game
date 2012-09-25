class Rencontre < ActiveRecord::Base
  belongs_to :equipe
  belongs_to :adversaire
  attr_accessible :domicile, :exempt, :heure, :jour, :numero, :reportee, :equipe_id, :adversaire_id

  def self.mois
    rencontres = Rencontre.order("jour, heure")
    mois = Hash.new
    if rencontres.empty?
      return mois
    else
      debut_annee = rencontres.first.jour
      fin_annee = rencontres.last.jour
      (debut_annee.year..fin_annee.year).each do |a|
        debut_mois = (debut_annee.year == a) ? debut_annee.month : 1
        fin_mois = (fin_annee.year == a) ? fin_annee.month : 12

        (debut_mois..fin_mois).each do |m|  
          mois[m.to_s + "-" + a.to_s] = I18n.l Date.new(a, m), :format => "%B %Y"
        end
      end
      return mois
    end
  end
  
end
