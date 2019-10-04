class Indisponibilidade < ApplicationRecord
  include RailsAdminCharts
  #has_paper_trail
  has_and_belongs_to_many :clientes
  has_and_belongs_to_many :parados
  has_and_belongs_to_many :motivos
  has_and_belongs_to_many :servicos
  def self.graph_data(since = 365.days.ago)
    Indisponibilidade.group(:cliente).count.to_a
  end

  def self.chart_type
    'pie'
  end

  enum tipo: [:Serviço, :Subssistema]

end
