require 'rails_helper'
  
  describe "This is a sample test" do
    it "is able to run tests" do
      expect(true).to eq(true)
  end

   describe "Crisis" do
    it "has many crises" do 
      Crisis.create(name: "Test_Crisis")
      a= Crisis.all.length
      puts("This is the number of Crises in the Test DB: #{a}")
      expect(a). to be>0
    end
  end

  describe "Web Page" do 
    
    it "has home banner" do 
      visit '/'
      page.should have_content("WE HOLD THESE TRUTHS")
    end

    it "has a button to start Meaasuring" do 
      #write test here
    end 


    it "has 3 table elements on the page" do
      #write test here
    end

    it "has 3 D3 gauges on the page" do 
      #write test here
    end

    it "when the button is pressed the gauges are non-zero after 10 seconds" do

    end 
  end

  # end 
end

