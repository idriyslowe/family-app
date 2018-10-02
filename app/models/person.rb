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

  def self.all
    @@people
  end
end