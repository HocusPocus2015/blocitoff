class [scope]::SessionsController < Devise::SessionsController
  devise_for :users, controllers: { sessions: "users/sessions"}
  
  def create
    super do |resource|
      BackgroundWorker.trigger(resource) #triggers background jobs like flash[:notice] or flash[:alert] 
    end
  end

 before_filter :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.for(:sign_in) << :attribute
  # end
end
