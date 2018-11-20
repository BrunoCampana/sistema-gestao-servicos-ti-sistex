class Cargo < ApplicationRecord
  belongs_to :usuario
  has_and_belongs_to_many :habilidades
  def name
    nome
  end
end
