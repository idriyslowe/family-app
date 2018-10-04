describe Person do
  before do
    @person = Person.new(
      last_name: "ayo!",
      first_name: "son",
      gender: "female",
      favorite_color: "blurple",
      date_of_birth: "August, 17, 1985"
    )
  end

  test 'knows its first name' do
    assert_equal @person.first_name, 'ayo!'
  end


  test '#all returns all records' do
    # @@people
  end

  test '#by_gender returns all females before all males then by last name ascending' do
    # self.all
  end

  test '#by_birthdate returns all records sorted by birthdate ascending' do
    # self.all
  end

  test '#by_last_name returns all records sorted by last name descending' do
    # self.all
  end
end