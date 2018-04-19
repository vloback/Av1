class CreateAppalunos < ActiveRecord::Migration
  def change
    create_table :appalunos do |t|
      t.string :matricula
      t.string :nome
      t.string :curso
      t.string :emailpessoal
      t.string :emaillasalle

      t.timestamps null: false
    end
  end
end
