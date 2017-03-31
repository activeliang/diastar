class Repair < ApplicationRecord

  belongs_to :equib

  def self.total_fees
    sum = 0
    @repair.fees.each do |fees|
      if @equib.fees.present?
        sum += self.fees
      end
    end
    sum
  end
end
