class ProjetsController < ApplicationController
  def new
    @projet = Projet.new
  end

  def create
    @projet = Projet.new(params_projet)
    if @projet.save
      redirect_to root_path
    end

  end

  private

  def params_projet
    params.require(:projet).permit(:title, :description, :url)
  end
end
