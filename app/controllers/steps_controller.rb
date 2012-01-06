class StepsController < ApplicationController
  if Rails.env.development?
    load_resource
  else
    load_and_authorize_resource
  end

  def update
    @step.update_attributes(params[:step])
    redirect_to edit_kit_path(@step.kit)
  end

  def create
    Step.create(params[:step])
    redirect_to edit_kit_path(@step.kit)
  end

  def destroy
    @step.destroy
    redirect_to edit_kit_path(@step.kit)
  end
end
