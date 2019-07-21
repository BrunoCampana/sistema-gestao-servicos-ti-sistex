RailsAdmin.config do |config|

  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)

  config.compact_show_view = false
  #config.sidescroll = true

  config.model Usuario do
    weight (-15)
    edit do
      field :nome
      field :tipo do
        visible do
          #bindings[:view]._current_user.tipo.include?(:Admin)
        end
      end
    end
    list do
      sort_by :hierarq_id
      sort_reverse false
      field :id
      field :hierarq
      field :nome
      field :email
      field :telefone
      configure :last_sign_in_ip do
        hide
      end
    end
    show do
      configure :reset_password_sent_at do
        hide
      end
      configure :remember_created_at do
        hide
      end
      configure :current_sign_in_at do
        hide
      end
      configure :last_sign_in_at do
        hide
      end
      configure :current_sign_in_ip do
        hide
      end
      configure :sign_in_count do
        hide
      end
      configure :last_sign_in_ip do
        hide
      end
    end
  end

  config.model Hierarq do
    parent Usuario
    weight (-14.9)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model FormacaoMil do
    parent Usuario
    weight (-14.8)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model FormacaoAcad do
    parent Usuario
    weight (-14.7)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model CertTi do
    parent Usuario
    weight (-14.7)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Curso do
    parent Usuario
    weight (-14.6)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model CargoExercido do
    parent Usuario
    weight (-14.5)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model ParticipouProj do
    parent Usuario
    weight (-14.4)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Idioma do
    parent Usuario
    weight (-14.3)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Cargo do
    parent Usuario
    weight (-14)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Habilidade do
    parent Usuario
    weight (-12)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Encargo do
    parent Usuario
    weight (-11.9)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Cliente do
    weight (-11)
    list do
      field :id
      field :nome
      field :cidade
      field :telefone_ctt_om
      field :nome_ch_sec_ti
      field :email
      field :nome_cmt_om
      field :cel_cmt_om
      field :requisicao_link_proprio
    end
  end

  config.model Cidade do
    parent Cliente
    weight (-10)

    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model RequisicaoLinkProprio do
    parent Cliente
    weight (-9)
    list do
      field :id
      field :cliente
      field :possui_link_proprio
      field :parecer_cta
      field :parecer_citex
      field :descricao
    end
  end

  config.model PacotesServico do
    parent Cliente
    weight (-8)
    list do
      field :id
      field :cliente
      field :velocidade_intranet
      field :velocidade_internet
      field :servico
    end
  end

  config.model Vot do
    parent Cliente
    weight (-7)
    list do
      field :id
      field :cliente
      field :data_inicio
      field :data_termino
      field :descricao
      field :usuarios
    end
  end

  config.model Servico do
    weight (-6)
    list do
      field :id
      field :nome
      field :indisponibilidades
      field :capacidades
      field :ans_tis
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model AnsTi do
    parent Servico
    weight (-5)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Indisponibilidade do
    parent Servico
    weight (-4)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Parado do
    parent Servico
    weight (-3)

    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Motivo do
    parent Servico
    weight (-2.9)

    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Capacidade do
    parent Servico
    weight (-2.8)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Fornecedor do
    parent Servico
    weight (-2.7)
    list do
      field :id
      field :nome_fornecedor
      field :descricao_recurso
      field :preposto
      field :contato
    end
  end

  config.model CursoMinistrado do
    weight (-2)
    list do
      field :id
      field :nome
      field :modalidade
      field :inicio
      field :termino
      field :carga_horaria
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Talento do
    parent CursoMinistrado
    weight (-1.9)
    list do
      field :id
      field :hierarq
      field :nome
      field :cliente
      field :telefone
      field :email
      field :observacoes
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model CursoExterno do
    weight (-1)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Rede do
    weight (-0.9)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Sleqp do
    parent Rede
    weight (-0.8)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Armario do
    parent Rede
    weight (-0.75)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Hardware do
    parent Rede
    weight (-0.7)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Vm do
    parent Rede
    weight (-0.66)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Software do
    parent Rede
    weight (-0.65)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Equipamento do
    parent Rede
    weight (-0.6)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Mudanca do
    parent Rede
    weight (-0.5)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.model Workstation do
    parent Rede
    weight (-0.4)
    list do
      configure :created_at do
        hide
      end
      configure :updated_at do
        hide
      end
    end
  end

  config.main_app_name = ["Gestão de Serviços de TI SISTEX", "4º CTA"]
  #
  #config.navigation_static_links = {
  #
  #'Vá para Wiki do CTA' => 'http://10.78.4.233:8081',
  #}

  #config.navigation_static_label = "Links Úteis"

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :usuario
  end
  config.current_user_method(&:current_usuario)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  config.actions do
    #all # NB: comment out this line for RailsAdmin < 0.6.0
    charts
  end

  ## == PaperTrail ==
=begin config.audit_with :paper_trail, 'Usuario', 'PaperTrail::3.0.0' # PaperTrail >= 3.0.0
  config.audit_with :paper_trail, 'Usuario', '3.0.0' # PaperTrail < 3.0.0

  PAPER_TRAIL_AUDIT_MODEL = ['Vot', 'Indisponibilidade']
  config.actions do
    history_index do
      only PAPER_TRAIL_AUDIT_MODEL
    end
    history_show do
      only PAPER_TRAIL_AUDIT_MODEL
    end
  end
=end

  #config.audit_with :history, Usuario
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    pdf do
      only Cliente
    end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
#I added a teste comment
