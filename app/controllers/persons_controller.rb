class PersonsController < ApplicationController
  def index
    @persons = Person.all.page(params[:page])
    cookies[:page] = params[:page]
  end

  def show
    @person = Person.find(params[:id])
  end

  def busca
    if params[:first_name] or params[:last_name] or params[:email] or params[:gender]
      result = Person.search(params[:first_name], params[:last_name], params[:email], params[:gender])
      @total = result.count
      @persons_result = result.page(params[:page])
    else
      @persons_result = nil
    end
  end

  private
    def persons_params
      params.require(:person).permit(:first_name, :last_name, :email, :gender)
    end
end
