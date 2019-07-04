class Hardware < ApplicationRecord
  def name
    nome
  end
  belongs_to :armario
  has_many :softwares
  enum tipo: [:Servidor, :Storage, :Firewall, :Roteador, :Switch, :Access_Point, :OLT, :ONU, :MuxDemux, :Transponder]
end
