class Capacidade < ApplicationRecord
  has_and_belongs_to_many :servicos
  def name
    nome_recurso
  end
  has_paper_trail
end
