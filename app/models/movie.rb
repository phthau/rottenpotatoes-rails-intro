class Movie < ActiveRecord::Base
    def self.all_ratings
        ['G','PG','PG-13','R']
    end
    
    def self.with_ratings(params) 
        if params[:ratings]
            where(:rating => params[:ratings].keys).order(params[:sort])
        else 
            order(params[:sort])
        end
    end
end
