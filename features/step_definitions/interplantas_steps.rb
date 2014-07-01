require "rubygems"
require 'capybara/rails'

Given(/^Que el viverista desea mirar las plantas del vivero$/) do
  visit '/' 
end

When(/^Da click en el link Vivero de la barra de navegación$/) do  
	click_link 'Vivero'  
end

Then(/^Abrira la pagina que muestra las plantas con el titulo "(.*?)"$/) do |titulo| 
  expect(page.title).to eq(titulo)
end

Then(/^Mostrara las variedades de plantas$/) do
  expect(page).to have_text("Cayeno (Hibiscus)")
end
