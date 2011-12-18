class PhasesController < ApplicationController
  def index
    @phases = Phase.all
  end

  def show
    @phase = Phase.find(params[:id])
  end

  def new
    @phase = Phase.new
  end

  def create
    @phase = Phase.new(params[:phase])
    if @phase.save
      redirect_to @phase, :notice => "Successfully created phase."
    else
      render :action => 'new'
    end
  end

  def edit
    @phase = Phase.find(params[:id])
  end

  def update
    @phase = Phase.find(params[:id])
    if @phase.update_attributes(params[:phase])
      redirect_to @phase, :notice  => "Successfully updated phase."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @phase = Phase.find(params[:id])
    @phase.destroy
    redirect_to phases_url, :notice => "Successfully destroyed phase."
  end
end
