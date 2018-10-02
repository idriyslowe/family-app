class PeopleController < ApplicationController

  def create
    # person = People.new(person_attributes)
    # render json: person, status: :ok
    render json: {data: 'hi'}, status: :ok
  end

  def index
    # people = Person.all
    render json: {data: 'hihi'}, status: :ok
  end

  def person_attributes
    params.require(:person).permit(
      :last_name,
      :first_name,
      :gender,
      :favorite_color,
      :date_of_birth
    )
  end
end