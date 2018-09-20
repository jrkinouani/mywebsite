class ProjetController < ApplicationController

  def new
    @projet = Projet.new
  end

  def create
    @projet = Projet.create(projet_params)
    redirect_to projet_path(@projet)
  end

  def show

  end

  def index
    @projet = Projet.all
  end

  def update
    @projet.update(projet_params)
    redirect_to projet_path(@projet)
  end


  def edit

  end

  private

  def projet_params
    params.require(:projet).permit(:title, :description, :url )
  end

  def set_projet
    @projet = Projet.find(params[:id])
  end

end
