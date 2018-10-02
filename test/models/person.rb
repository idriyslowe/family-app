describe Person do
  # before do
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

end