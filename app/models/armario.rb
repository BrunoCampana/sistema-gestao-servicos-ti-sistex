class Armario < ApplicationRecord
  def name
    nome
  end
  belongs_to :sleqp
  has_many :hardwares
  mount_uploader :diagrama, ArquivoUploader
end
