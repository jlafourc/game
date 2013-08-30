module SaisonsHelper
  def saison_courante
    @saison_courante ||= Saison.where("debut <= ? and fin >= ?", Date.today, Date.today).first
  end
end