module RepairsHelper

  def render_total_fees(equib)
    sum = 0
    equib.repairs.each do |repair|

      if repair.fees.present?
        sum += repair.fees
      end
    end
    sum
  end
end
