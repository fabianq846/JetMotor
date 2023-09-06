20.times do
    Motor.create(equipment_type: Motor.equipment_types.keys.sample, name: "REAC-#{Faker::Number.unique.between(from: 1, to: 20)}", description: Faker::Lorem.sentence)
  end
  
  cities = ["Santiago de Chile", "Temuco", "Antofagasta"]
  cities.each do |city|
    City.create(name: city)
  end
  
  materials = ["Turbinas", "Sistemas de ignición", "Sistemas de combustible"]
  materials.each do |material|
    Material.create(name: material)
  end
  
  # Y así sucesivamente...
  