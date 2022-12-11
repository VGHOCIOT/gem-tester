class RecipeCardComponent < ViewComponent::Base
    def initialize(title:, author:, popularity:, rating:)
      @title = title
      @author = author
      @popularity = popularity
      @rating = rating
    end
end