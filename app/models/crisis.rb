class Crisis < ApplicationRecord
  has_many :casualties


  def get_curr_year_casualties
    self.casualties.where(week_ending: Time.new(2016,1,1)..Time.now).pluck("number")[0]
  end

  def get_last_year_casualties
     self.casualties.where(week_ending: Time.new(2015,1,1)..Time.new(2016,1,1)).pluck("number")[0]
  end

  def get_total_casualties
    self.casualties.where("week_ending >? ",Time.now).pluck("number")[0]
  end

end
