class Person
  @@people = []

  def initialize options
    @last_name = options[:last_name]
    @first_name = options[:first_name]
    @gender = options[:gender]
    @favorite_color = options[:favorite_color]
    @date_of_birth = options[:date_of_birth]

    @@people << self
  end

  # class << self
    def self.all
      @@people
    end

    def self.by_gender
      # sorted by gender (females before males) then by last name ascending.
      self.all
    end

    def self.by_birthdate
      # Output 2 – sorted by birth date, ascending.
      self.all
    end

    def self.by_last_name
      # Output 3 – sorted by last name, descending.
      self.all
    end
  # end
end
