class CreateEvidenceSources < ActiveRecord::Migration[5.0]
  def change
    create_table :evidence_sources do |t|
      t.string :status,           null: false
      
      t.integer :creator_id,      null: false
      t.string  :creator_email,   null: false
      t.integer :moderator_id
      t.string  :moderator_email
      t.integer :analyst_id
      t.string  :analyst_email
      
      t.string :category
      
      t.string :title,            null: false
      t.integer :year
      t.string :source_title
      t.string :publisher
      t.string :URL
      t.string :DOI
      t.integer :volume_number
      t.integer :issue_number
      t.string :page_str
      t.integer :page_begin
      t.integer :page_cease
      t.integer :rating_tenth
      t.integer :rating_tenth_avg
      t.integer :rating_tenth_moderated

      t.timestamps
    end
    
    add_index :evidence_sources, :status
    
    add_index :evidence_sources, :creator_id
    add_index :evidence_sources, :moderator_id
    add_index :evidence_sources, :analyst_id

    add_index :evidence_sources, :title
    add_index :evidence_sources, :year
    add_index :evidence_sources, :source_title
    add_index :evidence_sources, :publisher
    add_index :evidence_sources, :DOI
    add_index :evidence_sources, :page_begin
    add_index :evidence_sources, :page_cease
    add_index :evidence_sources, :rating_tenth
  end
end
