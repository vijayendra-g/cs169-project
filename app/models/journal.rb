class Journal < ActiveRecord::Base

  def self.impact(isoabbrev)
    Journal.find(:all).each do |j|
      if j.iso == isoabbrev
        return j.impact
      end
    end
    return 0
  end

end
