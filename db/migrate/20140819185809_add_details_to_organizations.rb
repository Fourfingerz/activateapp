class AddDetailsToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :city, :string
    add_column :organizations, :state, :string
    add_column :organizations, :zip, :decimal
    add_column :organizations, :keywords, :string
    add_column :organizations, :categories, :string
    add_column :organizations, :sub_categories, :string
  end
end
