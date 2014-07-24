require "rubygems"
require 'capybara/rails'

Dado(/^que el viverista desea mirar las plantas del vivero$/) do
  visit '/' 
end

Cuando(/^da click en el link Vivero de la barra de navegación$/) do  
	click_link 'Vivero'  
end

Entonces(/^Abrira la pagina que muestra las variedades de las plantas con el titulo "(.*?)"$/) do |titulo| 
  expect(page.title).to eq(titulo)
end

Cuando(/^busco la variedad con el nombre (.*?)$/) do |variedad|
  @variedad = Variedad.create(nombre: variedad)
end

Entonces(/^mostrara la variedad con el nombre "(.*?)"$/) do |variedad_que_se_espera|
  expect(page).to have_text(variedad_que_se_espera)
end

Dado(/^que busca las plantas de la variedad "(.*?)" en la pagina vivero$/) do |variedad|
  @variedad = Variedad.create(nombre: variedad)
  visit '/variedades'
end

Cuando(/^doy click en la variedad (.*?)$/) do |variedad|
  @variedad.plantas.build(nombre: "Cayeno Rosado")
  @variedad.save
  click_link "#{variedad}"
end

Entonces(/^mostrara la planta con el nombre "(.*?)"$/) do |planta_que_se_espera|
  expect(page).to have_text(planta_que_se_espera)
end

Dado(/^que busca las plantas de la "(.*?)" en la pagina vivero$/) do |variedad|
  @nombre_de_la_variedad = variedad
  @variedad = Variedad.create(nombre: variedad)
  visit '/variedades'
end

Cuando(/^da click en la variedad de la "(.*?)"$/) do |planta|
  @variedad.plantas.build(nombre: planta)
  @variedad.save
  click_link "#{@nombre_de_la_variedad}"
end

Entonces(/^mostrara la informacion completa de la planta con "(.*?)"$/) do |nombre|
  expect(page).to have_text(nombre)
end

Dado(/^que da esta en inicio$/) do
  visit '/' 
end

Cuando(/^da click en finca raiz$/) do
  click_link 'fincaraiz'
end

Entonces(/^mostrara los immuebles en la pagina con titulo "(.*?)"$/) do |titulo|
  expect(page.title).to eq(titulo)
end
Dado(/^que busca el "(.*?)"$/) do |tipo_de_inmueble|
  TipoDeInmueble.create(nombre: tipo_de_inmueble)
end

Entonces(/^mostrara el "(.*?)"$/) do |tipo_de_inmueble|
  expect(page).to have_text(tipo_de_inmueble)  
end

Dado(/^que da click en finca raiz$/) do
  click_link 'fincaraiz'
end

Dado(/^que busca el tipo de inmueble "(.*?)"$/) do |tipo_de_inmueble|
  @tipodeinmueble = TipoDeInmueble.create(nombre: tipo_de_inmueble)
end

Cuando(/^da click en el tipo de inmueble "(.*?)"$/) do |tipo_de_inmueble|
  click_link tipo_de_inmueble
end

Cuando(/^busca el inmueble "(.*?)"$/) do |inmueble|
  @tipodeinmueble.inmuebles.build(nombre: inmueble)
  @tipodeinmueble.save
end

Entonces(/^mostrara el el inmueble "(.*?)"$/) do |inmueble|
  expect(page).to have_text(inmueble) 
end
