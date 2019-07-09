class Talento < ApplicationRecord
  belongs_to :formacao_mil
  belongs_to :formacao_acad
  has_and_belongs_to_many :habilidades
  belongs_to :cliente
  belongs_to :hierarq
  has_and_belongs_to_many :curso_ministrados
  def name
    nome
  end
end
