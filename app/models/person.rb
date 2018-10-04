class Person
  attr_accessor :last_name, :first_name, :gender, :favorite_color, :date_of_birth

  @@people = []

  def initialize options
    @last_name = options[:last_name]
    @first_name = options[:first_name]
    @gender = options[:gender]
    @favorite_color = options[:favorite_color]
    @date_of_birth = DateTime.strptime(options[:date_of_birth], '%m/%d/%Y') if options[:date_of_birth]

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

    def sort_by_last_name(direction='asc', collection=nil)
      collection ||= @@people
      collection = collection.sort_by { |p| p.last_name }

      if direction == 'desc'
        collection = collection.reverse
      end

      collection
    end

    def sort_by_gender_and_name
      females = self.by_gender('female')
      males = self.by_gender('male')

      sorted_females = sort_by_last_name('asc', females)
      sorted_males = sort_by_last_name('asc', males)

      (sorted_females << sorted_males).flatten!
    end

    def sort_by_birthdate
      @@people.sort_by { |p| p.date_of_birth }
    end

    def seed_people
      Person.new({
        last_name: "zamother",
        first_name: "first",
        gender: "female",
        favorite_color: "red",
        date_of_birth: "8/17/1956"
      })

      Person.new({
        last_name: "sister!",
        first_name: "ayo",
        gender: "female",
        favorite_color: "blurple",
        date_of_birth: "8/17/1985"
      })

      Person.new({
        last_name: "BORB",
        first_name: "Big",
        gender: "male",
        favorite_color: "orange",
        date_of_birth: "8/17/1978"
      })

      return Person.all
    end
  end
end
