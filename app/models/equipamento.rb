class Equipamento < ApplicationRecord
  def name
    nome
  end
  enum tipo: ["Ar Condicionado Split", "Ar Condicionado próprio de DC", "Subestação de Energia", "Gerador", "UPS", "Câmera", "Patch Panel", "DVR", "DIO", "Cassete HDX", "Outros"]
  has_paper_trail
end
