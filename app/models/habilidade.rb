class Habilidade < ApplicationRecord
  include RailsAdminCharts
  
  has_many :habilidade_adquiridas

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
