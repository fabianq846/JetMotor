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
rails g scaffold Motor type_of_equipment:string name:string description:text photo:string
Generar Modelo de Mantenimiento:

rails g scaffold Maintenance motor:references maintenance_type:string city:string materials:text technician_email:string maintenance_date:date
Migración:

rails db:migrate