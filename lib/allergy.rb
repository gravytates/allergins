class Fixnum
  define_method(:allergy) do
    allergens = []
    allergen = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 =>"strawberries", 16 => "tomatoes",  32 => "chocolate", 64 => "pollen", 128 => "cats" }
    bullshitfuck = allergen.keys
    bullshitfuck.each_with_index do |thing, index|
      if thing <= self
        allergens.push(allergen.fetch(thing))
      end
    end
    allergens.join", "
  end
end
