class CreateUsers < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :provider
            t.string :uid
            t.string :username
            t.string :password
            t.string :email
            t.binary :image
            t.string :token
	    t.string :salt 
            t.datetime :expires_at

            t.timestamps null: false
        end
    end
end
