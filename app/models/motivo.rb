class Motivo < ApplicationRecord
  #include RailsAdminCharts

  has_and_belongs_to_many :indisponibilidades

  #def self.graph_data(since = 365.days.ago)
  #  Indisponibilidade.group(:motivo_id).count.to_a
  #end

  #def self.chart_type
  #  'pie'
  #end

  def name
    nome
  end

end
