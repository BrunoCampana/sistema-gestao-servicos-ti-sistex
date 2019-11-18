class Workstation < ApplicationRecord
  def name
    nome
  end
  enum tipo: [:Desktop, :Notebook, :Telefone, :Dispositivo, :Acessório, :Videoconf]
  has_paper_trail
end
