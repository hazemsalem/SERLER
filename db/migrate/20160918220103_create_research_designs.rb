class CreateResearchDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :research_designs do |t|
      t.references :evidence_source, foreign_key: true
      
      t.string    :category     # QUESTION, METHOD, METRIC, PARTICIPANT
      t.integer   :const_id
      t.text      :content

      t.timestamps
    end
  end
end
