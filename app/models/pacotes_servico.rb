class PacotesServico < ApplicationRecord
  belongs_to :cliente
  has_and_belongs_to_many :servicos
  enum intranet: [:Não_recebe, :Recebe]
  enum internet: [:Não, :Sim]
  enum link_proprio: [:Não_possui, :Possui]
  enum tipo_banda: [:Compartilhada, :Dedicada]
  enum meio_de_acesso: [:REME_MAO, :REME_TBT, :PP, :REME_PVO, :REME_SGC, :REME_BVB, :REME_TFE]
  enum tipo_link: [:Satelital, :FO]
end
