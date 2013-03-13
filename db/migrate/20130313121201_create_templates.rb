class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.text :content
    end

    add_column :categories, :template_id, :integer
  end
end
