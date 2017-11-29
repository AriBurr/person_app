class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.paginate(page: params[:page], :per_page => 20)
  end

  def show
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "You created a new person! Yay!"
      redirect_to people_path
    else
      flash[:error] = "Invalid entry. Please try again."
      render 'new'
    end
  end

  def edit
  end

  def update
    if @person.update(person_params)
      flash[:success] = "Succesful update! Yay!"
      redirect_to people_path(@person)
    else
      flash[:error] = "Invalid update. Please try again."
      render 'edit'
    end
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

    def person_params
      params.require(:person).permit(:name, :age, :hair_color, :eye_color, :gender, :alive, :term)
    end

    def find_person
      @person = Person.find(params[:id])
    end


end
