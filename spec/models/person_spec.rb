require "rails_helper"

RSpec.describe Person, :type => :model do

  context "Model Methods" do

    let!(:ayo_sister) {
      Person.new({
        last_name: "sister!",
        first_name: "ayo",
        gender: "female",
        favorite_color: "blurple",
        date_of_birth: "8/17/1985"
      })
    }

    let!(:big_borb) {
      Person.new({
        last_name: "BORB",
        first_name: "Big",
        gender: "male",
        favorite_color: "orange",
        date_of_birth: "8/17/1978"
      })
    }

    let!(:first_zamother) {
      Person.new({
        last_name: "zamother",
        first_name: "first",
        gender: "female",
        favorite_color: "red",
        date_of_birth: "8/17/1956"
      })
    }

    describe "#all" do
      it "returns all records" do
        expect(Person.count).to eq(3)
      end
    end

    describe "#by_gender" do
      it "returns list of specified gender" do
        expect(Person.by_gender('female')).not_to include(big_borb)
        expect(Person.by_gender('male')).not_to include(first_zamother)
      end
    end

    describe "#by_last_name" do
      it "returns record by last name ascending" do
        expect(Person.sort_by_last_name.first.last_name).to eq(big_borb.last_name)
        expect(Person.sort_by_last_name.last.last_name).to eq(first_zamother.last_name)
      end

      it "returns record by last name descending" do
        expect(Person.sort_by_last_name('desc').first.last_name).to eq(first_zamother.last_name)
        expect(Person.sort_by_last_name('desc').last.last_name).to eq(big_borb.last_name)
      end
    end

    describe "#sort_by_gender_and_name" do
      it "returns all females before all males then by last name ascending" do
        expect(Person.sort_by_gender_and_name.first.last_name).to eq(ayo_sister.last_name)
        expect(Person.sort_by_gender_and_name.last.last_name).to eq(big_borb.last_name)
      end
    end

    describe "#sort_by_birthdate" do
      it "returns all records sorted by birthdate ascending" do
        expect(Person.sort_by_birthdate.first.date_of_birth.day).to eq(ayo_sister.date_of_birth.day)
        expect(Person.sort_by_birthdate.last.date_of_birth.day).to eq(first_zamother.date_of_birth.day)
      end
    end

  end
end