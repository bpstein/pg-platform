class AddStylesheetNeedsRecompileToCommunity < ActiveRecord::Migration
  def change
    add_column :communities, :stylesheet_needs_recompile, :boolean, :default => false, :after => :stylesheet_url
  end
end
