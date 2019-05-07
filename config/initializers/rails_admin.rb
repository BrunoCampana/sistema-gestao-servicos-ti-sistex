RailsAdmin.config do |config|

  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)

  config.model Usuario do
    weight (-15)
    list do
      configure :last_sign_in_ip do
        hide
      end
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
  end

  config.model PacotesServico do
    parent Cliente
    weight (-8)
  end

  config.model Vot do
    parent Cliente
    weight (-7)
    list do
      include_fields :cliente_id, :data_inicio, :data_termino, :modo_transporte, :descricao, :remuneracao, :pagamentos_realizados, :relatorio
    end
  end

  config.model Servico do
    weight (-6)
    list do
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
  end

  config.model CursoMinistrado do
    weight (-2)
    list do
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

  config.main_app_name = ["Gestão de Serviços de TI SISTEX", "4º CTA"]

  config.navigation_static_links = {
  'Vá para o OTRS' => 'http://10.78.4.187/otrs/',

  'Vá para o SPED' => 'http://sped.4cta.eb.mil.br/sped/administracao/sessao/eb/logon.jsp',

  'Vá para a Intranet' => 'http://intranet.4cta.eb.mil.br/',

  'Vá para Wiki do CTA' => 'http://10.78.4.233:8081',

  'Vá para Pesquisas de Satisfação' => 'http://10.78.4.233:80'
  }

  config.navigation_static_label = "Links Úteis"

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
