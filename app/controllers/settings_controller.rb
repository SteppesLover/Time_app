class SettingsController < ApplicationController
  before_action :set_setting

  def index
  end

  def edit
  end

  def update
    if @setting.update(setting_params)
      redirect_to setting_path, notice: "Settings updated."
    else
      render :edit
    end
  end

  private

  def set_setting
    @setting = Setting.first_or_create
  end

  def setting_params
    params.require(:setting).permit(:theme, :font, :font_size)
  end
end