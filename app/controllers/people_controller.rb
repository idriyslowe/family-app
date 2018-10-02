class PeopleController < ApplicationController

  def create
    person = Person.new(person_attributes)
    render json: { data: person }, status: :ok
  end

  def index
    people = Person.all
    render json: { data: people }, status: :ok
  end

  def person_attributes
    params.permit(
      :last_name,
      :first_name,
      :gender,
      :favorite_color,
      :date_of_birth
    )
  end
end

# QUESTIONS:
# validations? what input types?