class CreateFilmes < ActiveRecord::Migration
  def change
    create_table :filmes do |t|
      t.date :horario_data
      t.time :horario_hora

      t.timestamps
    end
  end
end
