class CreateRecipes < ActiveRecord::Migration
  def up
    create_table 'recipes' do |t|
      t.string 'title'
      t.integer 'apple'
      t.integer 'beet'
      t.integer 'carrot'
      t.integer 'celery'
      t.integer 'collardgreen'
      t.integer 'cucumber'
      t.integer 'ginger'
      t.integer 'grapefruit'
      t.integer 'lemon'
      t.integer 'lime'
      t.integer 'mint'
      t.integer 'orange'
      t.integer 'pear'
      t.integer 'pumpkinpiespice'
      t.integer 'romaine'
      t.integer 'spinach'
      t.integer 'sweetpotato'
      t.integer 'swisschard'
      t.integer 'tumericpowder'
      # Add fields that let Rails automatically keep track
      # of when recipes are added or modified:
      t.timestamps 'created_on'
      t.timestamps 'updated_on'
    end
  end

  def down
    drop_tabe 'recipes' # deletes the whole table and all its data!
  end
end

