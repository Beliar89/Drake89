class SettingsController < ApplicationController
  before_action :authenticate_user!
	layout "admin"

  def index
  @setting = current_user.setting
  flash[:danger] = t('flash.hello')
  @payment = current_user.payments
end

	def show
  @setting = Setting.find(params[:id])
end 
 
	def new
    @setting = Setting.new  
end

	def create
  @setting = Setting.create(user_id: current_user.id, language: params[:language])
   if @setting.save
  flash[:danger] = t('flash.hello')
    redirect_to settings_path
  else
    render :new
  end
end

 def edit
  @setting = Setting.find(params[:id])
end

 def update
  @setting = Setting.find(params[:id])
  if @setting.update_attributes(setting_params)
     flash[:danger] = t('flash.hello')
       redirect_to settings_path
  else
    render :index
  end
end
end