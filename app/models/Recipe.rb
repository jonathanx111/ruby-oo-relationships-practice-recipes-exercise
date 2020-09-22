class Recipe 
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular 
        
    end
     
    def ingredients
       RecipeIngredient.all.each_with_object([]){ |ri, arry| arry << ri.ingredient if ri.recipe == self}
        # aw = RecipeIngredient.all.select {|reci| reci.recipe == self}
        # aw.map {|x| x.ingredient}
    end

    def users 
        RecipeCard.all.each_with_object([]) { |rc, arr| arr << rc.user if rc.recipe == self }
    end

    def allergens
        self.ingredients.select do |ingredient|
            allergy_ingr= Allergy.all.map {|allergen|allergen.ingredient}
            allergy_ingr.include?(ingredient)
        end
    end

    # def add_ingredients(ingr_array)
    #     ingr_array.each {|individual| RecipeIngredient.new(self, individual)}
    # end

    
end