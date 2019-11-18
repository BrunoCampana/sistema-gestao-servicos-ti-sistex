class Vpn < ApplicationRecord
  belongs_to :pacotes_servico
  mount_uploader :termo_responsabilidade, ArquivoUploader
  has_paper_trail
end
