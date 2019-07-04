class Ability
  include CanCan::Ability

  def initialize(usuario)
    if usuario
      if usuario.tipo == 'Admin'
        can :manage, :all
        can :export, :all
      elsif usuario.tipo == 'SecGer'
        can :access, :rails_admin
        can :dashboard
        can :read, Usuario
        can :read, CertTi
        can :read, Habilidade
        can :manage, Cliente
        can :manage, RequisicaoLinkProprio
        can :manage, PacotesServico
        can :manage, Vot
        can :manage, Servico
        can :manage, AnsTi
        can :manage, Indisponibilidade
        can :manage, Parado
        can :manage, Motivo
        can :manage, Capacidade
        can :manage, Fornecedor
        can :read, CursoMinistrado
        can :read, Talento
        can :read, CursoExterno
        can :manage, Rede
        can :manage, Sleqp
        can :manage, Armario
        can :manage, Hardware
        can :manage, Software
        can :manage, Equipamento
        can :manage, Mudanca
        can :read, Workstation
      elsif usuario.tipo == 'SecCpc'
        can :access, :rails_admin
        can :dashboard
        can :manage, Usuario
        can :manage, FormacaoMil
        can :manage, CertTi
        can :manage, FormacaoAcad
        can :manage, Curso
        can :manage, CargoExercido
        can :manage, ParticipouProj
        can :manage, Idioma
        can :manage, Cargo
        can :manage, Habilidade
        can :manage, Encargo
        can :read, Cliente
        can :read, RequisicaoLinkProprio
        can :read, PacotesServico
        can :read, Vot
        can :read, Servico
        can :read, AnsTi
        can :read, Indisponibilidade
        can :read, Capacidade
        can :read, Fornecedor
        can :manage, CursoMinistrado
        can :manage, Talento
        can :manage, CursoExterno
        can :read, Rede
        can :read, Workstation
      elsif usuario.tipo == 'DO'
        can :access, :rails_admin
        can :dashboard
        can :read, Usuario
        can :read, CertTi
        can :read, Habilidade
        can :manage, Cliente
        can :read, RequisicaoLinkProprio
        can :read, PacotesServico
        can :manage, Vot
        can :read, Servico
        can :read, AnsTi
        can :manage, Indisponibilidade
        can :read, Parado
        can :read, Motivo
        can :manage, Capacidade
        can :read, Fornecedor
        can :read, CursoMinistrado
        can :read, Talento
        can :read, CursoExterno
        can :manage, Rede
        can :manage, Sleqp
        can :manage, Armario
        can :manage, Hardware
        can :manage, Software
        can :manage, Equipamento
        can :manage, Mudanca
        can :read, Workstation
      elsif usuario.tipo == 'Outros'
        can :access, :rails_admin
        can :dashboard
        can :read, Usuario
        can :read, CertTi
        can :read, Habilidade
        can :read, Cliente
        can :read, RequisicaoLinkProprio
        can :read, PacotesServico
        can :manage, Vot
        can :read, Servico
        can :read, AnsTi
        can :read, Indisponibilidade
        can :read, Parado
        can :read, Motivo
        can :read, Capacidade
        can :read, Fornecedor
        can :read, CursoMinistrado
        can :read, Talento
        can :read, CursoExterno
        can :read, Rede
        can :read, Sleqp
        can :read, Armario
        can :read, Hardware
        can :read, Software
        can :read, Equipamento
        can :manage, Mudanca
        can :read, Workstation
      end
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
