class PacotesServico < ApplicationRecord
  belongs_to :cliente
  has_many :ans_tis
  has_many :vpns
  has_and_belongs_to_many :servicos
  enum link_proprio: ["Sim", "Não"]
  enum tipo_banda: [:Compartilhada, :Dedicada]
  enum meio_de_acesso: ["REME Manaus", "REME Tabatinga", "PP", "REME Porto Velho", "REME São Gabriel da Cachoeira", "REME Boa Vista", "REME Tefé"]
  enum tipo_link: [:Satelital, :Óptico, :Rádio]
  enum sipam: ["Não possui", "Ativo", "Inoperante", "Aguardando manutenção", "Aguardando instalação"]
  enum gesac: [" Não possui ", " Ativo ", " Inoperante ", " Aguardando manutenção ", " Aguardando instalação"]
  has_paper_trail

  def name
    if cliente
      cliente.nome
    end
  end

  def qtd_vpns
    vpns.count
  end

  def oms_na_gu
    cliente.cidade.clientes.count
  end

end
