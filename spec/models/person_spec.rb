require "rails_helper"

RSpec.describe Person, :type => :model do

  context "Model Methods" do

    before do
      @person = Person.new({
        last_name: "ayo!",
        first_name: "son",
        gender: "female",
        favorite_color: "blurple",
        date_of_birth: "August, 17, 1985"
      })
    end

    describe "#all" do
      xit "returns all records" do
        # @@people
      end
    end

    describe "#by_gender" do
      xit "returns all females before all males then by last name ascending" do
        # @@people
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