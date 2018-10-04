class PeopleController < ApplicationController

  def create
    create_people
    people = Person.all
    render json: { data: people }, status: :ok
  end

  def gender
    people = Person.sort_by_gender_and_name
    render json: { data: people }, status: :ok
  end

  def birthdate
    people = Person.sort_by_birthdate
    render json: { data: people }, status: :ok
  end

  def name
    people = Person.sort_by_last_name('desc')
    render json: { data: people }, status: :ok
  end

  def person_attributes
    params.require(:people)
  end

  def create_people
    attr_arr = nil
    person_attributes.each do |person_str|
      attr_arr = person_str.split(/[,\s\|]/).reject(&:empty?)
      puts attr_arr.inspect
      Person.new({
        last_name: attr_arr[0],
        first_name: attr_arr[1],
        gender: attr_arr[2],
        favorite_color: attr_arr[3],
        date_of_birth: attr_arr[4]
      })
    end
  end
end