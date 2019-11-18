class Cidade < ApplicationRecord
  #include RailsAdminCharts

  has_many :clientes

  #def self.graph_data(since = 30.days.ago)
  #  Cliente.group(:cidade_id).count.to_a
  #end

  def name
    nome
  end

  #def self.chart_type
  #  'pie'
  #end

end
