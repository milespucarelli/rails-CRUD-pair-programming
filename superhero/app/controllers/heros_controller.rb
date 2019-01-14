class HerosController < ApplicationController
  before_action :find_hero, only: [:show, :edit, :update, :destroy]

  def new; end

  def show; end

  def edit; end

  def index
    @heros = Hero.all
  end

  def create
    hero = Hero.create(hero_params(:name, :secret_identity, :neighborhood))
    redirect_to(hero_path(hero))
  end

  def update
    @hero.update(hero_params(:name, :secret_identity, :neighborhood))
    redirect_to(hero_path(@hero))
  end

  def destroy
    @hero.destroy
    redirect_to(heros_path)
  end

  private

  def find_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params(*args)
    params.require(:hero).permit(*args)
  end
end
