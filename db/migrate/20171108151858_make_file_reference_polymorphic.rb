class MakeFileReferencePolymorphic < ActiveRecord::Migration[5.1]
  def change
    add_column :s3_file_references, :file_referable_id, :integer

    add_index :s3_file_references, [:file_referable_id, :file_referable_type], name: "file_referable_index"
  end
end
