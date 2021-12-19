class Building < ApplicationRecord
    has_many :apartments, dependent: :destroy

    validates :name, :address, :city, presence: true, length: { in: 2..50 }

    def to_s
      name
    end

    # esta callback se ejecutará después de crear un nuevo usuario
    after_create :creacion_exitosa
  
    # esta callback se ejecutará después de actualizar un usuario existente
    after_update :actualizacion_exitosa

    private
    def creacion_exitosa
      puts "Edificio creado con exito."
    end
    def actualizacion_exitosa
      puts "Edificio actualizado con exito."
    end
end
