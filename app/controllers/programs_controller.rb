class ProgramsController < ApplicationController

  def new
    kit= Kit.find_by_slug(params[:kit_id])
    @program = Program.new(kit: kit)
  end

  def create
    program_attrs = params[:program]
    @program = Program.create(program_attrs)
    redirect_to edit_kit_program_path(kit_id: params[:kit_id], id: @program.to_param)
  end

  def edit
    @program = Program.where("lower(name) = ?",params[:id]).first
  end
end
