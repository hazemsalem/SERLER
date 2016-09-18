class CreateResearchDesignConstants < ActiveRecord::Migration[5.0]
  def change
    create_table :research_design_constants do |t|

      t.string    :category  # METHOD, PARICIPANT
      
      t.string    :contnet

      t.timestamps
    end
  end
end
