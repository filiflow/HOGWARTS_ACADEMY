class AddSummaryToActivity < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :summary, :string
  end
end
