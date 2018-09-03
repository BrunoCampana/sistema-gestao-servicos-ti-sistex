class Servico < ApplicationRecord
  has_and_belongs_to_many :pacotes_servicos
  has_and_belongs_to_many :fornecedors
  has_and_belongs_to_many :capacidades
  has_and_belongs_to_many :indisponibilidades
  has_many :ans_tis
end
