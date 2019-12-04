class Cliente < ApplicationRecord

  enum tipo: ["Cliente", "Escalão Superior", "Vinculada", "Outras"]

  belongs_to :cidade
  has_many :vots
  has_many :usuarios
  has_many :talentos
  has_and_belongs_to_many :indisponibilidades
  has_many :requisicao_link_proprio
  has_one :pacotes_servico

  mount_uploader :inventario, ArquivoUploader

  def name
    nome
  end

  def qtd_indisponibilidades
    indisponibilidades.count
  end

  has_paper_trail
end
