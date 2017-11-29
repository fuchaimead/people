class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end


  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
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
    Person.find(params[:id]).destroy 
    redirect_to people_path 
  end

  private
  def list_params
    params.require(:person).permit(:name, :age, :hair_color, :eye_color,
     :phone, :alive, :gender, :notes, :favorite)
  end

end
