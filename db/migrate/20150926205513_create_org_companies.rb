class CreateOrgCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :org_companies do |t|
    	t.string :name
      t.string :avatar
      t.text :description
    	t.string :verification_doc
    	t.boolean :verified
    	t.references :typ_fee
    	t.belongs_to :typ_company
      t.timestamps
    end
  end
end
