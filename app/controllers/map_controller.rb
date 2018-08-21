class MapController < ApplicationController
    class MapController < ApplicationController
        layout 'post', only: [:get_map]
        layout 'rents_layout',only: [:index,:form]
    
        def index
            @title = 'New Title'
        # @test = 'Ariel'
        end
    
        def get_map
            db = SQLite3::Database.new "db/db.mbtiles"
            rows = db.execute "SELECT * FROM map WHERE col=#{params[:x]} AND row=#{params[:y]} AND zoom=#{params[:z]};"
            tile = rows[0][3]
            @picture = (db.execute "SELECT * FROM images WHERE tile_id=#{tile};")[0][1].html_safe
        end
    
        def save_point
            render json: params[:x]
        end
    end
    
end
