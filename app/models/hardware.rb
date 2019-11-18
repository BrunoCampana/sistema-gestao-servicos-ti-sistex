class Hardware < ApplicationRecord
  def name
    nome
  end
  belongs_to :armario
  has_many :softwares
  enum tipo: ["Servidor", "Storage", "Firewall", "Roteador", "Switch", "Gateway", "Central Telefônica", "Access Point", "OLT", "ONU", "Mux Demux", "Transponder"]
  has_paper_trail
end
