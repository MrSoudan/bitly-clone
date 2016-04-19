class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |x|
			x.string :long_url
			x.string :short_url
			x.datetime :created_at
			x.datetime :updated_at
		end 
	end
end
