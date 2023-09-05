Creación del Proyecto Rails:
Definición de Entidades de la Base de Datos:

Motor
Mantenimiento
Usuario (Operador y Administrador)
Ciudad
Material

rails new JetMaintain -d postgresql
Configuración de la Base de Datos:

Modificar el archivo config/database.yml con las credenciales adecuadas.
Probar Conexión a la Base de Datos:

rails db:create
Instalación de Gemas:
gem 'devise'
gem 'pg_search'
gem 'pagy'
gem 'faker'
bundle add devise pg_search pagy

Configurar Devise:
rails generate devise:install
rails g devise:views
rails generate devise User 

Migrar Base de Datos:
rails db:migrate

Generar Modelo de Motor:
rails g scaffold Motor equipment_type:string name:string description:text photo:attachment

Generar Modelo de Mantenimiento:
rails g scaffold Maintenance motor_type:string maintenance_type:string motor_name:string city:string materials:string technician_email:string maintenance_date:date

rails db:migrate

En config/routes.rb:
devise_scope :user do
    root to: 'devise/sessions#new'
end