class CreateS3FileReferences < ActiveRecord::Migration[5.1]
  def change
    create_table :s3_file_references do |t|
      t.string :object_key
      t.string :bucket_name
      t.string :filename

      t.timestamps
    end
  end
end
