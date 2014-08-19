class AddDetailToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :mission, :text
    add_column :organizations, :address, :text
    add_column :organizations, :ein, :string
    add_column :organizations, :telephone, :string
    add_column :organizations, :contact, :text
    add_column :organizations, :ntee_category, :text
    add_column :organizations, :ruling_year, :string
  end
end
