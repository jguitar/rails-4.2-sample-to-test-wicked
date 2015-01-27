class AfterSignupController < ApplicationController
  include Wicked::Wizard

  steps :confirm_password, :confirm_profile

  def show
    @user = current_user
    render_wizard
  end
end
