class Ingredient
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        
        new = Allergy.all.map {|x| x.ingredient}
        new.max_by { |i| new.count(i) } 
        
        # new = Allergy.all.map {|x| x.ingredient}
        # hash1= {}
        # new.each do |ingr|
        #     if ingr.name
        #         hash1[(ingr.name)] += 1
        #     else
        #         hash1[ingr.name] + 1
        #     end
        # end
        # hash1

        # x = Allergy.all.map { |allergy| allergy.ingredient }
        # new_hash = Allergy.all.each_with_object ({}) { |allergy, hash| hash[allergy.ingredient] => x.count(allergy.ingredient)}

    end
     
end
