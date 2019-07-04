class Equipamento < ApplicationRecord
  def name
    nome
  end
  enum tipo: [:ArCond_Split, :ArCond_DC, :Subestacao_Energia, :Gerador, :UPS, :Camera, :PatchPanel, :DVR, :DIO, :Cassete_HDX, :Outros]
end
