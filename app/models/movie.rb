class Movie < ActiveRecord::Base
    def self.all_ratings
        ['G','PG','PG-13','R']
    end
    
    def self.with_ratings(filter_list, sort) 
        if not filter_list.empty?
            where(:rating => filter_list).order(sort)
        else 
            order(sort)
        end
    end
    
end
