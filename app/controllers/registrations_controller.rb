class RegistrationsController < Devise::RegistrationsController
def new
	super
end
def update
	super
end
def create
    super
end
 def after_sign_up_path_for(resource)
   redirect_to alunos_path(@alunos)
  end

  
end
