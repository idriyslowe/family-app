class Person
  attr_accessor :last_name, :first_name, :gender, :favorite_color, :date_of_birth

  @@people = []

  def initialize options
    @last_name = options[:last_name]
    @first_name = options[:first_name]
    @gender = options[:gender]
    @favorite_color = options[:favorite_color]
    @date_of_birth = options[:date_of_birth]

    @@people << self
  end

  class << self
    def all
      @@people
    end

    def count
      @@people.count
    end

    def by_gender(gender_str)
      @@people.select{ |p| p.gender == gender_str }
    end

    def sort_by_last_name(collection=nil)
      collection ||= @@people
      collection.sort_by { |p| p.last_name }
    end

    def sort_by_gender_and_name
      females = self.by_gender('female')
      males = self.by_gender('male')

      sorted_females = sort_by_last_name(females)
      sorted_males = sort_by_last_name(males)

      (sorted_females << sorted_males).flatten!
    end

    def by_birthdate
      # Output 2 – sorted by birth date, ascending.
      self.all
    end

    def by_last_name
      # Output 3 – sorted by last name, descending.
      self.all
    end

    def seed_people
      Person.new({
        last_name: "first",
        first_name: "mother",
        gender: "female",
        favorite_color: "red",
        date_of_birth: "August, 17, 1956"
      })

      Person.new({
        last_name: "ayo!",
        first_name: "son",
        gender: "female",
        favorite_color: "blurple",
        date_of_birth: "August, 17, 1985"
      })

      Person.new({
        last_name: "Big",
        first_name: "BORB",
        gender: "male",
        favorite_color: "orange",
        date_of_birth: "August, 17, 1978"
      })
    end
  end
end
