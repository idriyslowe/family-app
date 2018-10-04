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

    def by_gender
      # sorted by gender (females before males) then by last name ascending.
      # puts @@people.sort_by { |p| p[:gender] }
      @@people.sort_by { |p| p.gender }
    end

    def by_birthdate
      # Output 2 – sorted by birth date, ascending.
      self.all
    end

    def by_last_name

      # Output 3 – sorted by last name, descending.
      self.all
    end
  end
end
