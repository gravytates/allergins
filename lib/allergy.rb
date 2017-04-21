class Fixnum
  define_method(:allergy) do
    allergens = []
    allergen = { 1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 =>"strawberries", 16 => "tomatoes",  32 => "chocolate", 64 => "pollen", 128 => "cats" }
    bullshitfuck = allergen.keys.reverse
    score = self
    bullshitfuck.each_with_index do |thing, index|
      if thing <= score
        allergens.push(allergen.fetch(thing))
        score -= thing
      end
    end
    allergens.join", "
  end
end
