class CreateEvidenceItems < ActiveRecord::Migration[5.0]
  def change
    create_table :evidence_items do |t|
      t.references :evidence_source, foreign_key: true

      t.text      :benefit
      t.text      :result
      
      t.string    :ctx_where
      t.string    :ctx_when
      t.string    :ctx_how
      
      t.string    :ctx_who
      t.text      :ctx_what
      
      t.integer   :rating_tenth
      t.ingeter   :interity

      t.timestamps
    end
  end
end
