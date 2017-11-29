class PeopleController < ApplicationController
  before_action :person_params, only: [:edit, :show, :update, :destroy]

  def index
    @people = Person.all.order(:name)
  end

  def person_params
    @person = Person.find(params[:id])
  end

  def show
    
  end


  def edit
  end

  def update
   if @person.update(list_params)
      #success
      redirect_to person_path(@person)
    else
      #failed update
      render :edit
    end
  end

  def create
    @person = Person.new(list_params)
    if @person.save
      redirect_to people_path
    else 
      render :new 
    end
  end
  
  def new 
    @person = Person.new
  end

  def destroy
    person_params.destroy 
    redirect_to people_path 
  end

  private
  def list_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color,
     :phone, :alive, :gender, :notes, :favorite)
  end

end
