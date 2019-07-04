class Sleqp < ApplicationRecord
  def name
    nome
  end
  belongs_to :rede
  has_many :armarios
  has_many :equipamentos
  mount_uploader :diagrama, ArquivoUploader
end
