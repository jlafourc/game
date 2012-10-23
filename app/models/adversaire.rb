class Adversaire < ActiveRecord::Base
  belongs_to :equipe
  attr_accessible :nom, :equipe_id
  
  def to_s
    return nom
  end
end
