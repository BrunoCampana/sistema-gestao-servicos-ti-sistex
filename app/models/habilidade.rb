class Habilidade < ApplicationRecord
  include RailsAdminCharts

  has_and_belongs_to_many :talentos
  has_and_belongs_to_many :usuarios
  has_and_belongs_to_many :cargos

  def self.graph_data(since = 30.days.ago)
    Habilidade.group(:usuario_id).count.to_a
  end

  def name
    nome
  end

  def self.chart_type
    'pie'
  end

end
