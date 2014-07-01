require "rubygems"
require 'capybara/rails'
require 'database_cleaner'

Given(/^Que el viverista desea mirar las plantas del vivero$/) do
  visit '/' 
end

When(/^Da click en el link Vivero de la barra de navegación$/) do  
	click_link 'Vivero'  
end

Then(/^Abrira la pagina que muestra las plantas con el titulo "(.*?)"$/) do |titulo| 
  expect(page.title).to eq(titulo)
end

When(/^busco la variedad con el nombre "(.*?)"$/) do |variedad|
  @variedad = Variedad.create(nombre: variedad)
end

Then(/^Mostrara la variedad con el nombre "(.*?)"$/) do |variedad_que_se_espera|
  expect(page).to have_text(variedad_que_se_espera)
end