class Group < ApplicationRecord
    has_many :concerts, dependent: :destroy
    enum :group_type, [:Girlband, :Boyband, :Band]

    def concerts_this_month
        d = []
        dt = self.concerts.map do |c|
            c.date.month
        end
        dt.each do |date|
            d << date if date == Time.now.month
        end
        d.count
    end
end     #ESTE TIPO DE LÓGICA DE NEGOCIOS (BÚSQUEDA) SE LLAMA SCOPE Y SE REALIZA EN EL MODELO SIEMPRE DE FORMA IDEAL.
