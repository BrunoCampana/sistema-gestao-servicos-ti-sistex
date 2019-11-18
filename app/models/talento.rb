class Talento < ApplicationRecord

  belongs_to :hierarq
  has_and_belongs_to_many :habilidades
  has_and_belongs_to_many :formacao_mil
  has_and_belongs_to_many :formacao_acad
  belongs_to :cliente
  has_and_belongs_to_many :curso_ministrados
  def name
    nome
  end
end
