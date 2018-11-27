class CargoExercido < ApplicationRecord
  belongs_to :usuario
  def name
    nome
  end
end
