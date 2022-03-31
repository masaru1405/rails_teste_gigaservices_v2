class PersonsController < ApplicationController
  def index
    @persons = Person.all.page(params[:page])
    cookies[:page] = params[:page]
  end

  def show
    @person = Person.find(params[:id])
  end

  def busca

  end
end
