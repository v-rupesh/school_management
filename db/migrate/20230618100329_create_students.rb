class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.references :teacher, foreign_key: true
      t.string :name
      t.string :father_name
      t.string :mother_name
      t.date :dob
      t.string :school_id
      t.string :aadhar_number
      t.string :samagra_id
      t.string :mobile_number
      t.string :bank_account_number

      t.timestamps
    end
  end
end
