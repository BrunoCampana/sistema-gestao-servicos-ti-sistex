class Vm < ApplicationRecord
  def name
    nome
  end
  has_paper_trail
end
