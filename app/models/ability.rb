class Ability
  include CanCan::Ability

  def initialize(usuario)
    if usuario.status == 'Ativo'
      can :dashboard, :all
      if usuario.tipo == 'Admin'
        can :manage, :all
        can :export, :all
      elsif usuario.tipo == 'SecCpc'
        can :access, :rails_admin
        can [:manage, :export], [Usuario, FormacaoMil, CertTi, FormacaoAcad, Curso, CargoExercido, ParticipouProj, Idioma, Cargo, Habilidade, Encargo, Cargo, CursoMinistrado, Talento, CursoExterno]
        can :update, [Cliente, Hierarq]
        can [:read, :export], [Hierarq, Cliente, RequisicaoLinkProprio, PacotesServico, Vot, Servico, AnsTi, Indisponibilidade, Capacidade, Fornecedor, Rede, Workstation]
      elsif usuario.tipo == 'SecGer'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Usuario, Hierarq, FormacaoMil, FormacaoAcad, CursoMinistrado, Talento, CursoExterno, Workstation, Vm]
        can [:manage, :export], [Cliente, RequisicaoLinkProprio, PacotesServico, Vot, Servico, AnsTi, Indisponibilidade, Capacidade, Fornecedor, Rede, Sleqp, Armario, Hardware, Software, Equipamento, Mudanca]
        can [:update, :read], [Cidade, Parado, Motivo]
      elsif usuario.tipo == 'ChDT'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, CertTi, FormacaoAcad, Curso, Cargo, Habilidade, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, CursoMinistrado, Equipamento, Fornecedor, Hardware, PacotesServico, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Workstation, Rede, Parado, Servico, Motivo]
        can :manage, Mudanca
        can [:create, :update, :read, :export], [Vot, Indisponibilidade]
      elsif usuario.tipo == 'SecLogTI'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, CursoMinistrado, Equipamento, Fornecedor, Hardware, PacotesServico, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Workstation, Indisponibilidade, Mudanca, Rede, Vot]
        can :create, Mudanca
      elsif usuario.tipo == 'SecProj'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, CursoMinistrado, Equipamento, Fornecedor, Hardware, PacotesServico, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Workstation, Rede, Motivo, Parado]
        can [:create, :read, :update, :export], [Indisponibilidade, Vot]
      elsif usuario.tipo == 'SPC'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, CursoMinistrado, Equipamento, Hardware, Indisponibilidade, PacotesServico, Rede, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Vot, Workstation]
        can [:read, :create, :update, :export], [Mudanca, Fornecedor]
      elsif usuario.tipo == 'SSI'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, CursoMinistrado, Equipamento, Hardware, Indisponibilidade, PacotesServico, Rede, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Workstation, Parado, Motivo]
        can [:read, :create, :update, :export], Mudanca
        can [:update, :read, :export], Fornecedor
        can [:update, :read, :export, :create], [Indisponibilidade, Vot]
      elsif usuario.tipo == 'Chefia'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, CertTi, FormacaoAcad, Curso, Cargo, Habilidade, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, Fornecedor, CursoMinistrado, Equipamento, Hardware, Indisponibilidade, PacotesServico, Rede, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vm, Vot, Workstation]
        can [:manage, :export], Mudanca
      elsif usuario.tipo == 'Outros'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Armario, Capacidade, Cidade, Cliente, CursoExterno, Fornecedor, CursoMinistrado, Equipamento, Hardware, Indisponibilidade, PacotesServico, Rede, RequisicaoLinkProprio, Servico, Sleqp, Software, Talento, Usuario, Vot, Workstation, Mudanca]
      elsif usuario.tipo == 'SecInfo'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Cliente, Hierarq, FormacaoMil, FormacaoAcad, CursoExterno, CursoMinistrado, Equipamento, Fornecedor, Talento, Usuario, Vm, Vot]
        can [:manage, :export], Workstation
      elsif usuario.tipo == 'DO'
        can :access, :rails_admin
        can :update, Usuario, :id => usuario.id
        can [:read, :export], [Hierarq, FormacaoMil, FormacaoAcad, AnsTi, Cidade, CursoExterno, CursoMinistrado, PacotesServico, RequisicaoLinkProprio, Talento, Workstation, Cliente, Servico, Usuario, Motivo, Parado]
        can [:manage, :export], [Armario, Capacidade, Equipamento, Fornecedor, Hardware, Indisponibilidade, Mudanca, Rede, Sleqp, Software, Vm]
        can [:create, :read, :update, :export], Vot
        can :update, [Cliente]
      end
    else
      can :access, :rails_admin
    end
  end
end

  # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

=begin
elsif usuario.tipo == 'SecInfo'
  can :manage, Capacidade
  can :manage, Cargo
  can :manage, Cidade
  can :manage, Cliente
  can :manage, Encargo
  can :manage, Fornecedor
  can :manage, Habilidade
  can :manage, Indisponibilidade
  can :manage, Motivo
  can :manage, PacotesServico
  can :manage, RequisicaoLinkProprio
  can :manage, Usuario
  can :manage, Vot
end
=end
