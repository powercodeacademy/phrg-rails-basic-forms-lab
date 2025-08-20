require "rails_helper"

RSpec.describe "Rails Forms Lab", type: :feature do
  describe "GET /puppies" do
    it "sends a 200 status code" do
      visit "/puppies"
      expect(page.status_code).to eq(200)
    end

    it "renders welcome" do
      visit "/puppies"
      expect(page).to have_link("Click Here To List A Puppy")
    end
  end

  describe "GET /puppies/new" do
    it "sends a 200 status code" do
      visit "/puppies/new"
      expect(page.status_code).to eq(200)
    end

    it "renders the form" do
      visit "/puppies/new"
      expect(page).to have_selector("form")
      expect(page).to have_field("puppy[name]")
      expect(page).to have_field("puppy[breed]")
      expect(page).to have_field("puppy[age]")
    end
  end

  describe "POST /puppies" do
    it "displays the puppy" do
      visit "/puppies/new"

      fill_in("puppy[name]", with: "Butch")
      fill_in("puppy[breed]", with: "Mastiff")
      fill_in("puppy[age]", with: "6 months")
      click_button "submit"

      # Check that the page contains the puppy information
      expect(page).to have_text("Puppy Name")
      expect(page).to have_text("Butch")
      expect(page).to have_text("Puppy Breed")
      expect(page).to have_text("Mastiff")
      expect(page).to have_text("Puppy Age")
      expect(page).to have_text("6 months")
    end
  end
end
