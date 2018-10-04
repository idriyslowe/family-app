class PeopleController < ApplicationController

  def create
    person = Person.new(person_attributes)
    render json: { data: person }, status: :ok
  end

  def gender
    people = Person.sort_by_gender_and_name
    render json: { data: people }, status: :ok
  end

  def birthdate
    people = Person.by_birthdate
    render json: { data: people }, status: :ok
  end

  def name
    people = Person.by_last_name
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

# returns all records in json format from data you imported in following formats:

# ● Pipe-delimited​:
# LastName | FirstName | Gender | Favorite Color | Date Of Birth
# ● Comma-delimited:
# LastName, FirstName, Gender, Favorite Color, Date Of Birth
# ● Space-delimited:
# LastName FirstName Gender FavoriteColor DateOfBirth