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
        can :read, :all
        #can :edit, Usuario, email: usuario.email
        can :manage, PacotesServico
        can :manage, RequisicaoLinkProprio
        can :manage, AnsTi
        can :manage, Capacidade
        can :manage, Fornecedor
        can :manage, Vot
        can :manage, Indisponibilidade
      elsif usuario.tipo == 'SecCpc'
        can :access, :rails_admin
        can :dashboard
        can :read, :all
        #can :edit, Usuario, email: usuario.email
        can :manage, CursoExterno
        can :manage, CursoMinistrado
        can :manage, Vot
        can :manage, Indisponibilidade
        can :manage, Habilidade
      elsif usuario.tipo == 'DTDO'
        can :access, :rails_admin
        can :dashboard
        can :read, :all
        #can :edit, Usuario, email: usuario.email
        can :manage, Vot
        can :manage, Indisponibilidade
      elsif usuario.tipo == 'SecTICliente'
        #can :edit, Usuario, email: usuario.email
        can :read, Cidade
        can :read, Cliente, nome_ch_sec_info: usuario.nome
        can :update, Cliente, nome_ch_sec_info: usuario.nome
        can :create, Indisponibilidade
        can :read, Indisponibilidade, cliente_id: usuario.cliente.cliente_id
        can :read, PacotesServico, cliente_id: usuario.cliente.cliente_id
        can :read, RequisicaoLinkProprio, cliente_id: usuario.cliente.cliente_id
        can :read, Usuario, usuario_id: usuario_id
        can :update, Usuario, usuario_id: usuario_id
        can :read, Vot
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
