class Apartment < ApplicationRecord
  belongs_to :building

  validates :number, presence: true, numericality:true

  # esta callback se ejecutará después de crear un nuevo usuario
  after_create :creacion_exitosa

  # esta callback se ejecutará después de actualizar un usuario existente
  after_update :actualizacion_exitosa

  private
  def creacion_exitosa
    puts "Departamento creado con exito."
  end
  def actualizacion_exitosa
    puts "Departamento actualizado con exito."
  end
end
