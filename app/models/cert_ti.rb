class CertTi < ApplicationRecord
  has_and_belongs_to_many :usuarios
  def name
    nome
  end
end
