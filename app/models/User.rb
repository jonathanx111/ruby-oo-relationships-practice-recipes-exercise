class User
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    def recipes
        RecipeCard.all.each_with_object([]){|rc, array| array << rc.recipe if rc.user == self}
    end

    def add_recipes_card(recipe, date, rating)
        RecipeCard.new(self, recipe, date, rating)
    end
    def declare_allergy(ingr)
        Allergy.new(self, ingr)
    end
    def allergens
        Allergy.all.each_with_object([]){|aller, arr| arr << aller.ingredient if aller.user ==self}
    end
    def top_three_recipes
        new = RecipeCard.all.each_with_object([]){|rec, arr| arr << rec if rec.user == self}
        new.sort_by { |x| x.rating }.reverse.first(3).map{|card| card.recipe}
        # .reverse.first(3).map { |card| card.recipe }

        
    end
    def most_recent_recipe
    end
end