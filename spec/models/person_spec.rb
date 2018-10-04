require "rails_helper"

RSpec.describe Person, :type => :model do

  context "Model Methods" do

    before do
      @ayo_son = Person.new({
        last_name: "ayo!",
        first_name: "son",
        gender: "female",
        favorite_color: "blurple",
        date_of_birth: "August, 17, 1985"
      })

      @first_mother = Person.new({
        last_name: "first",
        first_name: "mother",
        gender: "female",
        favorite_color: "red",
        date_of_birth: "August, 17, 1956"
      })

      @big_borb = Person.new({
        last_name: "Big",
        first_name: "BORB",
        gender: "male",
        favorite_color: "orange",
        date_of_birth: "August, 17, 1978"
      })
    end

# Person.new({
#   last_name: "first",
#   first_name: "mother",
#   gender: "female",
#   favorite_color: "red",
#   date_of_birth: "August, 17, 1956"
# })

# Person.new({
#   last_name: "ayo!",
#   first_name: "son",
#   gender: "female",
#   favorite_color: "blurple",
#   date_of_birth: "August, 17, 1985"
# })

# Person.new({
#   last_name: "Big",
#   first_name: "BORB",
#   gender: "male",
#   favorite_color: "orange",
#   date_of_birth: "August, 17, 1978"
# })

    describe "#all" do
      it "returns all records" do
        expect(Person.count).to eq(3)
      end
    end

    describe "#by_gender" do
      it "returns all females before all males" do
        expect(Person.by_gender.first.gender).to eq('female')
        expect(Person.by_gender[0].gender).to eq('female')
        expect(Person.by_gender.last.gender).to eq('male')
      end

      xit "by last name ascending" do
        expect(Person.by_gender[0]).to eq(@ayo_son)
      end

      xit "returns all females before all males then by last name ascending" do
        expect(Person.by_gender[0]).to eq(@ayo_son)
      end
    end

    describe "#by_birthdate" do
      xit "returns all records sorted by birthdate ascending" do
        # @@people
      end
    end

    describe "#by_last_name" do
      xit "returns all records sorted by last name descending" do
        # @@people
      end
    end

  end
end