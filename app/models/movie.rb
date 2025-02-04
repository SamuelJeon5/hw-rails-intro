class Movie < ActiveRecord::Base
    def self.ratings
        Movie.select(:rating).distinct.pluck(:rating)
    end
    
    def self.with_ratings(ratings_list)
        return Movie.all if ratings_list.empty?
        return Movie.where(rating: ratings_list)
    end
end