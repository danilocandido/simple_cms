class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |t|
      t.column 'first_name', :string, limit: 25
      t.string 'last_name', limit: 25 # shortland of -> t.column 'first_name', :string
      t.string 'email', default: '', null: false
      t.string 'password', limit: 40

      t.timestamps #created_at and updated_at
    end
  end

  def down
    drop_table :users
  end
end
