class Movie < ActiveRecord::Base
    def self.all_ratings
        ['G','PG','PG-13','R']
    end
    
    def self.with_ratings(rating_list) 
        where(:rating => rating_list)
    end
end
