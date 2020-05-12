require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter]. each do |holiday, new_supply|
  new_supply.push(supply)
    end
end
    # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_supplies[:spring]. each do |holiday, new_supply|
  new_supply.push(supply)
    end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
  end
  

  # code here
  # remember to return the updated hash

def all_winter_holiday_supplies(holiday_hash)
    winter_array = holiday_hash[:winter].collect do |holiday, supply|
    supply
    
  # return an array of all of the supplies that are used in the winter season
end
winter_array.flatten
end


def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.collect do |season, holiday_hash|
    puts "#{season.capitalize}:"
    holiday_hash.collect do |holiday, supplies|
      supplies_string = supplies.join(", ")
      holiday_array = holiday.to_s.split("_").collect do |word|
        word.capitalize
      end
      holiday_string = holiday_array.join(" ")
      puts "  #{holiday_string}: #{supplies_string}"
      
       # here is where you should print holidays and supplies
      end
  end
end

  #holiday_supplies[season][holiday][supply] = supply
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, supply|
    holiday if supply.include?("BBQ")
    end
  end supply.flatten.compact
      
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
end


